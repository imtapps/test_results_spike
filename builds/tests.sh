#!/bin/bash

virtualenv virtualenv

source virtualenv/bin/activate

pip install -r requirements.txt

python manage.py test --with-xunit --with-coverage --cover-package=demo --cover-xml

exit $?
