del scripts\*_fail.log

pipenv install -r requirements.txt

@REM 192.168.10.53
: start pipenv run python ./fetch_component.py scripts/xaa
: start pipenv run python ./fetch_component.py scripts/xab
: start pipenv run python ./fetch_component.py scripts/xac
: start pipenv run python ./fetch_component.py scripts/xad

@REM 192.168.10.32
: start pipenv run python ./fetch_component.py scripts/xae
: start pipenv run python ./fetch_component.py scripts/xaf
: start pipenv run python ./fetch_component.py scripts/xag
: start pipenv run python ./fetch_component.py scripts/xah

: 192.168.10.225
: start pipenv run python ./fetch_component.py scripts/xai
: start pipenv run python ./fetch_component.py scripts/xaj
: start pipenv run python ./fetch_component.py scripts/xak
: start pipenv run python ./fetch_component.py scripts/xal



: start pipenv run python ./fetch_component.py scripts/xam
: start pipenv run python ./fetch_component.py scripts/xan
: start pipenv run python ./fetch_component.py scripts/xao
: start pipenv run python ./fetch_component.py scripts/xap

: start pipenv run python ./fetch_component.py scripts/xaq
: start pipenv run python ./fetch_component.py scripts/xar
: start pipenv run python ./fetch_component.py scripts/xas
: start pipenv run python ./fetch_component.py scripts/xat

: start pipenv run python ./fetch_component.py scripts/xau
: start pipenv run python ./fetch_component.py scripts/xav
: start pipenv run python ./fetch_component.py scripts/xaw
: start pipenv run python ./fetch_component.py scripts/xax

: start pipenv run python ./fetch_component.py scripts/xay
: start pipenv run python ./fetch_component.py scripts/xaz
: start pipenv run python ./fetch_component.py scripts/xba
: start pipenv run python ./fetch_component.py scripts/xbb

: start pipenv run python ./fetch_component.py scripts/xbc
: start pipenv run python ./fetch_component.py scripts/xbd
: start pipenv run python ./fetch_component.py scripts/xbe
: start pipenv run python ./fetch_component.py scripts/xbf

: start pipenv run python ./fetch_component.py scripts/xbg
: start pipenv run python ./fetch_component.py scripts/xbh
: start pipenv run python ./fetch_component.py scripts/xbi
: start pipenv run python ./fetch_component.py scripts/xbj