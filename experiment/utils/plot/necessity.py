
import os
from matplotlib import pyplot as plt
from matplotlib.ticker import PercentFormatter
import numpy as np

import pandas as pd


def plot_necessity(argv):
    selected_trick = "entropy_coef_0.0001"
    # 组织数据
    # 遍历argv["out"]/data下的所有excel，按最后的算法分组
    excel_paths = {"mappo": [], "maddpg": [], "qmix": []}
    for root, _, files in os.walk(argv["out"], "data"):
        for file in files:
            if file.endswith("_tricks.xlsx"):
                algo_name = file.split("_")[-2]
                excel_paths[algo_name].append(os.path.join(root, file))

    print(excel_paths)
    # 取mappo算法下的所有excel
    combined_df = pd.DataFrame()
    for path in excel_paths["mappo"]:
        if "mamujoco" in path:
            continue
        # 读取iterative_perturbation sheet的数据
        df = pd.read_excel(path, sheet_name="iterative_perturbation", header=0)
        # 取出exp_name为default和gamma_0.9两行，合并到combined_df
        combined_df = pd.concat([combined_df, df[df["exp_name"].isin(["default", selected_trick])]])
    print(combined_df)

    # 画原始hat图
    draw_origin_hat(combined_df, selected_trick, argv)

    # 画新指标的hat图
    draw_self_metrics_hat(combined_df, selected_trick, argv)
    draw_trick_metrics_hat(combined_df, selected_trick, argv)


def draw_origin_hat(combined_df, trick_name, argv):
    # xlabels为combined_df的scenario列，去重
    xlabels = combined_df["scenario"].unique().tolist()
    # 取exp_name为default的before_reward列
    before_reward = combined_df[combined_df["exp_name"] == "default"]["before_reward"].tolist()
    vanilla_reward = combined_df[combined_df["exp_name"] == "default"]["vanilla_reward"].tolist()
    adv_reward = combined_df[combined_df["exp_name"] == "default"]["adv_reward"].tolist()
    trick_vanilla_reward = combined_df[combined_df["exp_name"] == trick_name]["vanilla_reward"].tolist()
    trick_adv_reward = combined_df[combined_df["exp_name"] == trick_name]["adv_reward"].tolist()

    # Plotting the line chart with std as the shaded area
    golden_ratio = 1.618
    width = 15  # 假设宽度为10单位
    height = width / golden_ratio  # 根据黄金比例计算高度
    plt.figure(figsize=(width, height))
    fig, ax = plt.subplots(figsize=(width, height))
    hat_graph(
        ax,
        xlabels,
        [before_reward, vanilla_reward, adv_reward, trick_vanilla_reward, trick_adv_reward],
        [
            "Before Reward",
            "Vanilla Reward",
            "Adversarial Attack Reward",
            f"Vanilla Reward with {trick_name}",
            f"Adversarial Attack Reward with {trick_name}",
        ],
    )

    # Add some text for labels, title and custom x-axis tick labels, etc.
    ax.set_xlabel("Environments")
    ax.set_ylabel("Reward")
    ax.set_title("Rewards in different environments of MAPPO")
    ax.set_ylim(-70, 70)
    ax.legend()

    fig.tight_layout()

    # 保存图表到文件
    category = "necessity"
    save_dir = os.path.join(argv["out"], "figures", argv["i18n"], argv["type"], category)
    os.makedirs(save_dir, exist_ok=True)
    figure_name = os.path.join(save_dir, f'{trick_name}_origin.{argv["type"]}')
    plt.savefig(figure_name, dpi=300, bbox_inches="tight")
    plt.close()
    print(f"Saved to {figure_name}")


def draw_self_metrics_hat(combined_df, trick_name, argv):
    # xlabels为combined_df的scenario列，去重
    xlabels = combined_df["scenario"].unique().tolist()
    start = [0, 0, 0, 0]
    # 取exp_name为default的before_reward列
    srr_default = combined_df[combined_df["exp_name"] == "default"]["SRR"].tolist()
    srr_trick = combined_df[combined_df["exp_name"] == trick_name]["SRR"].tolist()

    # Plotting the line chart with std as the shaded area
    golden_ratio = 1.618
    width = 14  # 假设宽度为10单位
    height = width / golden_ratio  # 根据黄金比例计算高度
    plt.figure(figsize=(width, height))
    fig, ax = plt.subplots(figsize=(width, height))
    metrics_hat_graph(
        ax,
        xlabels,
        [start, srr_default, srr_trick],
        ["default", f"SRR with default setting", f"SRR with {trick_name}"],
    )

    # Add some text for labels, title and custom x-axis tick labels, etc.
    ax.set_xlabel("Environments")
    ax.set_ylabel("Change Rate")
    ax.set_title("Self-robustness realated metrics in different environments of MAPPO")
    ax.set_ylim(-1, 0.2)
    # 设置Y轴为百分比格式
    ax.yaxis.set_major_formatter(PercentFormatter(1))
    ax.legend()

    fig.tight_layout()

    # 保存图表到文件
    category = "necessity"
    save_dir = os.path.join(argv["out"], "figures", argv["i18n"], argv["type"], category)
    os.makedirs(save_dir, exist_ok=True)
    figure_name = os.path.join(save_dir, f'{trick_name}_self_metrics.{argv["type"]}')
    plt.savefig(figure_name, dpi=300, bbox_inches="tight")
    plt.close()
    print(f"Saved to {figure_name}")


def draw_trick_metrics_hat(combined_df, trick_name, argv):
    # xlabels为combined_df的scenario列，去重
    xlabels = combined_df["scenario"].unique().tolist()
    start = [0, 0, 0, 0]
    # 取exp_name为default的before_reward列
    rsrr = combined_df[combined_df["exp_name"] == trick_name]["rSRR"].tolist()
    tpr = combined_df[combined_df["exp_name"] == trick_name]["TPR"].tolist()
    trr = combined_df[combined_df["exp_name"] == trick_name]["TRR"].tolist()

    # Plotting the line chart with std as the shaded area
    golden_ratio = 1.618
    width = 14  # 假设宽度为10单位
    height = width / golden_ratio  # 根据黄金比例计算高度
    plt.figure(figsize=(width, height))
    fig, ax = plt.subplots(figsize=(width, height))
    metrics_hat_graph(
        ax,
        xlabels,
        [start, rsrr, tpr, trr],
        ["default", f"rSRR with {trick_name}", f"TPR with {trick_name}", f"TRR with {trick_name}"],
    )

    # Add some text for labels, title and custom x-axis tick labels, etc.
    ax.set_xlabel("Environments")
    ax.set_ylabel("Change Rate")
    ax.set_title("Trick-robustness realated metrics in different environments of MAPPO")
    # ax.set_ylim(-0.25, 0.25)
    # 设置Y轴为百分比格式
    ax.yaxis.set_major_formatter(PercentFormatter(1))
    ax.legend()

    fig.tight_layout()

    # 保存图表到文件
    category = "necessity"
    save_dir = os.path.join(argv["out"], "figures", argv["i18n"], argv["type"], category)
    os.makedirs(save_dir, exist_ok=True)
    figure_name = os.path.join(save_dir, f'{trick_name}_trick_metrics.{argv["type"]}')
    plt.savefig(figure_name, dpi=300, bbox_inches="tight")
    plt.close()
    print(f"Saved to {figure_name}")


def hat_graph(ax, xlabels, values, group_labels):
    """
    Create a hat graph.

    Parameters
    ----------
    ax : matplotlib.axes.Axes
        The Axes to plot into.
    xlabels : list of str
        The category names to be displayed on the x-axis.
    values : (M, N) array-like
        The data values.
        Rows are the groups (len(group_labels) == M).
        Columns are the categories (len(xlabels) == N).
    group_labels : list of str
        The group labels displayed in the legend.
    """

    def label_bars(heights, rects):
        """Attach a text label on top of each bar."""
        for height, rect in zip(heights, rects):
            # 保留两位小数
            height = round(height, 2)
            ax.annotate(
                f"{height}",
                xy=(rect.get_x() + rect.get_width() / 2, height),
                xytext=(0, 4),  # 4 points vertical offset.
                textcoords="offset points",
                ha="center",
                va="bottom",
            )

    values = np.asarray(values)
    x = np.arange(values.shape[1])
    ax.set_xticks(x, labels=xlabels)
    spacing = 0.3  # spacing between hat groups
    width = (1 - spacing) / values.shape[0]
    heights0 = values[0]
    for i, (heights, group_label) in enumerate(zip(values, group_labels)):
        style = {"fill": False} if i == 0 else {"edgecolor": "black"}
        rects = ax.bar(
            x - spacing / 2 + i * width, heights - heights0, width, bottom=heights0, label=group_label, **style
        )
        label_bars(heights, rects)


def metrics_hat_graph(ax, xlabels, values, group_labels):
    """
    Create a hat graph.

    Parameters
    ----------
    ax : matplotlib.axes.Axes
        The Axes to plot into.
    xlabels : list of str
        The category names to be displayed on the x-axis.
    values : (M, N) array-like
        The data values.
        Rows are the groups (len(group_labels) == M).
        Columns are the categories (len(xlabels) == N).
    group_labels : list of str
        The group labels displayed in the legend.
    """

    def label_bars(heights, rects):
        """Attach a text label on top of each bar."""
        for height, rect in zip(heights, rects):
            # 保留两位小数
            height = round(height, 4)
            ax.annotate(
                f"{height:.2%}",
                xy=(rect.get_x() + rect.get_width() / 2, height),
                xytext=(0, 4),  # 4 points vertical offset.
                textcoords="offset points",
                ha="center",
                va="bottom",
            )

    values = np.asarray(values)
    x = np.arange(values.shape[1])
    ax.set_xticks(x, labels=xlabels)
    spacing = 0.3  # spacing between hat groups
    width = (1 - spacing) / values.shape[0]
    heights0 = values[0]
    for i, (heights, group_label) in enumerate(zip(values, group_labels)):
        style = {"fill": False} if i == 0 else {"edgecolor": "black"}
        rects = ax.bar(
            x - spacing / 2 + i * width, heights - heights0, width, bottom=heights0, label=group_label, **style
        )
        label_bars(heights, rects)

