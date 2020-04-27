from ipywidgets import widgets, Layout
from IPython.display import display

def question(text):
    checkbox = widgets.Checkbox(value=False, disabled=False)
    label = widgets.Label(text, layout=Layout(width='100rem', margin='0 -5 0 0'))
    box = widgets.HBox([checkbox, label])
    return display(box)

def multiple_choice(*args):
    for q in args:
        question(q)

from modulefinder import ModuleFinder
import os
os.system("jupyter nbconvert --to script Data_and_Distributions_Lecture.ipynb")
finder = ModuleFinder()
finder.run_script('Data_and_Distributions_Lecture.py')

print('Loaded modules:')
for name, mod in finder.modules.items():
    print(name)

print('-'*50)
print('Modules not imported:')
print('\n'.join(finder.badmodules.keys()))