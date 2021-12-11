# Template for Data Science Project

This repo aims to give a robust starting point to any Data Science related
project.

It contains readymade tools setup to start adding dependencies and coding.

To get yourself familiar with tools used here watch
[my talk on Data Science project setup (in Russian)](https://youtu.be/jLIAiDMyseQ)

**If you use this repo as a template - leave a star please** because template
usages don't count in Forks.

## Workflow

Experiments and technology discovery are usualy performed on Jupyter Notebooks.
For them `notebooks` directory is reserved. More info on working with Notebooks
could be found in `notebooks/README.md`.

More mature part of pipeline (functions, classes, etc) are stored in `.py` files
in main package directory (by default `ds_project`).

## What to change?

- project name (default: `ds_project`)
  - in `pyproject.toml` - tool.poetry.name
  - main project directory (`ds_project`)
  - test in `tests` directory
- line length (default: `90`) [Why 90?](https://youtu.be/esZLCuWs_2Y?t=1287)
  - in `pyproject.toml` in blocks
    - black
    - isort
  - in `setup.cfg` for `flake8`
  - in `.pre-commit-config.yaml` for `prettier`

## How to setup an environment?

This template use `poetry` to manage dependencies of your project. They

First you need to
[install poetry](https://python-poetry.org/docs/#installation).

Then if you use `conda` (recommended) to manage environments (to use regular
virtualenvenv just skip this step):

- tell `poetry` not to create new virtualenv for you

  (instead `poetry` will use currently activated virtualenv):

  `poetry config virtualenvs.create false`

- create new `conda` environment for your project (change env name for your
  desired one):

  `conda create -n ds_project python=3.9`

- actiave environment:

  `conda activate ds_project`

Now you are ready to add dependencies to your project. For this use
[`add` command](https://python-poetry.org/docs/cli/#add):

`poetry add scikit-learn torch <any_package_you_need>`

Next run `poetry install` to check your final state are even with configs.

After that add changes to git and commit them
`git add pyproject.toml poetry.lock`

Finally add `pre-commit` hooks to git: `pre-commit install`

At this step you are ready to write clean reproducible code!
