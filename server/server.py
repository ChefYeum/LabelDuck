from flask import Flask

app = Flask(__name__)

@app.route('/')
def getImage():
    return "gs://bgn-university-hack-rem-1018.appspot.com/catDog.jpeg"


if __name__ == '__main__':
    app.run()

