del scripts\*_fail.log

pipenv install -r requirements.txt

@REM pipenv run python ./fetch_component.py scripts/fail.csv
pipenv run python ./fetch_component.py scripts/xaa
pipenv run python ./fetch_component.py scripts/xab
pipenv run python ./fetch_component.py scripts/xac
pipenv run python ./fetch_component.py scripts/xad
