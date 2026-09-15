#!/usr/bin/env python3
# Template.

import jinja2
import sys
from jinja2 import FileSystemLoader
from pathlib import Path

base_dir = Path(__file__).resolve().parent.parent
environment = jinja2.Environment(loader=FileSystemLoader(base_dir))
template = environment.get_template("./bin/util.md")


def main() -> None:
    util = sys.argv[1]

    rendered = template.render(util=util)

    print(rendered)


if __name__ == "__main__":
    main()
