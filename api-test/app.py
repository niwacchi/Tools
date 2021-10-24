import requests
import pprint
from bottle import route, run, template, post, get, request
from bottle import debug
debug(True)

@route('/')
def index():
    return template('index.html', response='')

@post('/get-api-response')
def result():
    url = request.forms.get('url')
    response = requests.get(url)
    return template('index.html', response=response.text)

# reloaderにTrueをセットするとファイル更新で再起動する
run(host='localhost', port=8080, reloader=True)