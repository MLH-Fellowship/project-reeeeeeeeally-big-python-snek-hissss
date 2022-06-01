import os
from flask import Flask, render_template, request
from flask_nav.elements import Navbar, View
from flask_nav import Nav
from dotenv import load_dotenv

load_dotenv()
app = Flask(__name__)

# Create dynamic navbar instance
nav_bar = Navbar('Navigation',
                 View('Home', 'index'),
                 View("Work Experience", 'experience')
                 )
nav = Nav()
nav.register_element('navbar', nav_bar)
nav.init_app(app)

jobs = [
    {
        'title': "MLH Fellow",
        'description': "I signed an NDA I can't tell you"
    },
    {
        'title': "Student",
        'description': "working on a degree"
    }
]


@app.route('/')
def index():
    return render_template('index.html', title="MLH Fellow", url=os.getenv("URL"))


@app.route('/experience')
def experience():
    return render_template('experience.html', jobs=jobs)
