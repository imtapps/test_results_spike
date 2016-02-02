#!/bin/bash

virtualenv virtualenv

source virtualenv/bin/activate

pip install -r requirements.txt

flake8 . --max-complexity=4 --exclude=virtualenv | sed 's|^./||' > flake8.txt

STATUS=`cat flake8.txt | wc -l`

echo "MESSAGE=$STATUS Flake8 Violations" > $WORKSPACE/violation_message.properties

exit $STATUS
