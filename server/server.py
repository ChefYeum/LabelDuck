from flask import Flask

app = Flask(__name__)

@app.route('/')
def getImage():
    return getJSON()


if __name__ == '__main__':
    app.run()

