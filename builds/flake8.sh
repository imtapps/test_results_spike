#!/bin/bash

virtualenv virtualenv

source virtualenv/bin/activate

pip install -r requirements.txt

flake8 . --max-complexity=4 --exclude=virtualenv > flake8.txt
