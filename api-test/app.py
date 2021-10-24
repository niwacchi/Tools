import requests
import json
from bottle import route, run, template, post, request
from bottle import debug
debug(True)

@route('/')
def index():
    return template('index.html', response='')

@post('/get-api-response')
def get_result():
    url = request.forms.get('url')
    response = requests.get(url)
    response = json.dumps(response.json(), indent=4)
    return template('index.html', response=response)

@post('post-api-response')
def post_result():
    url = request.forms.get('url')
    response = requests.post(url)
    response = json.dumps(response, indent=4)
    return template('index.html', response=response)

# reloaderにTrueをセットするとファイル更新で再起動する
run(host='localhost', port=8080, reloader=True)