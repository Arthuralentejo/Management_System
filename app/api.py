from flask import Flask

app = Flask(__name__)


@app.get('/ping')
def ping():
    return 'pong'


if __name__ == '__main__':
    app.run(debug=True)
