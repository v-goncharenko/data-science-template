# Jupyter Notebooks

**All Jupyter Notebooks are supposed to live in this directory**

Since `poetry` installs this package into environment in development mode (aka
editable mode, which means package contents loads dinamically from disk) you are
able to import it directly:

    from ds_project.utils import data_dir

Notebooks are used to experiment with data and derive robust approaches to a
given task. Then theese approaches are being added to `.py` files to become a
part of main pipeline. Some crucial boilerplate notebooks may be added to
repository under `dvc` management (because they change frequently and a lot).
One have to be careful with experimenting in notebooks and move code to `.py`
files as soon as modules developed have proven their usfulness.

Important rule: **Execute notebook from top to bottom only.** If you change
previous cells (upper than you run last) then restart kernel and execute all
from the start. All in all it's a good practice to restart notebook time after
time.

Consider installing
[Jupyter Notebook extensions](https://github.com/ipython-contrib/jupyter_contrib_nbextensions)
and
[configurator](https://github.com/Jupyter-contrib/jupyter_nbextensions_configurator)
to facilitate your productivity. Particularly usefuls extensions are:
_Collapsible Headings_, _Ruler_ on 80, 100 and 120 columns, _Table of Contents
(2)_, _ExecuteTime_, _Autopep8_. Although theese extensions are handy, be carful
not to overload you renderer especially on weak client machines.

Anoter useful tool is automatical
[conda kernels discovery](https://github.com/Anaconda-Platform/nb_conda_kernels).
It lets you launch only one notebook server and don't bother yourself with
manual kernels addition.
