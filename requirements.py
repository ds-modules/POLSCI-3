from nbconvert import PythonExporter
import nbformat
import glob
import os
nb_files = glob.glob(f'{os.getcwd()}/**/*.ipynb',
                  recursive=True)
py_files = glob.glob(f'{os.getcwd()}/**/*.py',
                  recursive=True)
def convert_nb(file_name):
    export_path = f'{os.getcwd()}/{os.path.split(file_name)[1][:-5]}py'
    print(export_path)
    with open(file_name, encoding="utf8") as fn:
        nb = nbformat.read(fn, as_version=4)

    exporter = PythonExporter()

    # source is a tuple of python source code
    # meta contains metadata
    source, meta = exporter.from_notebook_node(nb)

    with open(export_path, 'w+', encoding="utf8") as fh:
        fh.writelines(source)

def delete_NB_py(file_name):
    os.remove(f'{os.getcwd()}/{os.path.split(file_name)[1][:-5]}py')

for file in nb_files:
    convert_nb(file)

import importlib
maybe_pipreq = importlib.util.find_spec("pipreqs")
if maybe_pipreq is None:
    import subprocess
    import sys
    subprocess.call([sys.executable, '-m', 'pip', 'install', "pipreqs"]) 
os.system("pipreqs --force --encoding utf8")

for file in nb_files:
    if file not in py_files:
        delete_NB_py(file)
