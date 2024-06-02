"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/about')
@view('about')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/forms')
@view('forms')
def forms():
    """Renders the about page."""
    with open('newData.txt', 'r') as f:
        nums = f.read().splitlines()
   
    print(nums)
    
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year,
        datausers = nums
    )

@route('/formsdata')
@view('formsdata')
def formsdata():
    """Renders the about page."""
    with open('newData.txt', 'r') as f:
        nums = f.read().splitlines()   
    print(nums)
    
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year,
        datausers = nums
    )
