from django.shortcuts import render
from .forms import SearchForm
from os_gov import shell

def index(request):
    ret1 = None
    ret2 = None
    if request.method == 'POST':
        form = SearchForm(request.POST)
        if form.is_valid():
            hint = form.cleaned_data["search_text"]
            ret1 = shell.do_get_cores(hint)
            ret2 = shell.do_get_companies(hint)
    else:
        form = SearchForm()

    return render(request, 'osgov.tpl', {'form': form, "ret1": ret1, "ret2": ret2})
