from flask import Flask
from loguru import logger
app = Flask(__name__)


@app.route('/')
def hello_world():
    logger.info('lol')
    return 'Flask Dockerized'


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
