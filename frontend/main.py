from flask import Flask, render_template
import requests
import json
import os

backend = os.getenv('BACKEND_TRIVIA')

app = Flask(__name__)

@app.route('/')
def home():
    #url = 'http://localhost:8080/triviaoftheday' # <<<
    url = 'http://' + backend + '/triviaoftheday' # <<<
    response = requests.get(url,headers={'Content-Type': 'application/json'})
    trivia = response.json()
    return render_template('home.html', trivia=trivia['message'])

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=10101, debug=True)
