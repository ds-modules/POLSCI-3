from ipywidgets import widgets, Layout
from IPython.display import display

def question_maker(text):
    checkbox = widgets.Checkbox(value=False, disabled=False)
    label = widgets.Label(text, layout=Layout(width='100rem', margin='0 -5 0 0'))
    box = widgets.HBox([checkbox, label])
    return display(box)