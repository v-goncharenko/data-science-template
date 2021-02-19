# Template for Data Science Project

This repo aims to give a robust starting point to any Data Science related project.

It contains readymade tools setup to start adding dependencies and coding.

## What to change

* project name (default: `ds_project`)
    * in `pyproject.toml` - tool.poetry.name
    * main project directory (`ds_project`)
    * test in `tests` directory
* line length (default: `90`) [Why 90?](https://youtu.be/esZLCuWs_2Y?t=1287)
    * in `pyproject.toml` in blocks
        * black
        * isort
    * in `setup.cfg` for `flake8`
