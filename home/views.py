from django.shortcuts import render

from django.http import HttpResponse

def index(request):
    # write anything here
    resp = """
    Hello, this is your home page
    """
    return HttpResponse(resp)
