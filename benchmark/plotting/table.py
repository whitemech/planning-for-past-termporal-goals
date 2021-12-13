"""Produce a LaTeX table."""
from pathlib import Path

import click
import numpy as np
import pandas as pd

from benchmark.tools import tool_registry, ToolID
from benchmark.utils.base import get_tools

ORDER = list(map(lambda t: t.value, ToolID))


@click.command("table")
@click.option(
    "--directory", type=click.Path(exists=True, file_okay=False, dir_okay=True),
    help="The benchmark directory.",
    required=True
)
@click.option(
    "--timeout", type=int, default=60
)
@click.option(
    "--field", type=click.Choice(["time_end2end", "nb_node_expanded"]),
    required=True
)
def main(directory: str, timeout: int, field: str):
    """Plot results from benchmark directory."""
    results = do_job(directory, timeout, field)
    tool_names = [tool_registry.make(tool_id).NAME for tool_id in get_tools(Path(directory))]
    header = " & ".join(["Benchmark name"] + tool_names)
    print(header)
    print("\\\\ \hline")
    for r in results:
        print(r, end="")


def do_job(benchmark_dir: str, timeout: int, field: str):
    benchmark_dir = Path(benchmark_dir)
    tool_to_tsv = get_tools(benchmark_dir)
    tools = list(tool_to_tsv.keys())
    dataframes = {tool: pd.read_csv(str(tsv_file), sep="\t") for tool, tsv_file in tool_to_tsv.items()}

    max_nb_rows = max(df.shape[0] for _, df in dataframes.items())
    table = np.zeros((max_nb_rows, len(dataframes)))
    names = []

    for idx, (tool, df) in enumerate(dataframes.items()):
        nb_rows = df.shape[0]
        names = list(df["name"].values) if nb_rows > len(names) else names
        times = np.append(df[field].values, [float('nan')] * (max_nb_rows - nb_rows))
        times[times == "None"] = float('nan')
        times[times >= timeout] = float('nan')
        times = times.astype(float)
        table[:, idx] = times

    new_indices = [tools.index(tool_id) for tool_id in tools]
    table = table[:, new_indices]

    # start printing the table
    names_latex = ["\\texttt{" + n.replace('_', '\\_') + "}" for n in names]
    content = ""
    for row_idx, item_name in enumerate(names_latex):
        row = table[row_idx].astype(float)
        times_no_nan = list(map(lambda x: x if not np.isnan(x) else np.inf, row))
        argmin = int(np.argmin(times_no_nan))
        strings = list(map(lambda s: f"{s:5.2f}", row))
        if not np.isinf(times_no_nan[argmin]):
            strings[argmin] = f"\\textbf{{{strings[argmin]}}}"
        row_str = " & ".join(strings)
        content += item_name + " & " + row_str
        content += " \\\\ \n"
    content = content.replace(" nan ", " --- ")
    return content


if __name__ == "__main__":
    main()
