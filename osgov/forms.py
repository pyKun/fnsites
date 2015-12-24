#!/usr/bin/env python
#-*- coding:utf-8 -*-
# Author: Kun Huang <academicgareth@gmail.com>

from django import forms

class SearchForm(forms.Form):
    search_text = forms.CharField(label='search_text', max_length=100)
