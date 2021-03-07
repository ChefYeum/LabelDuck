from flask import Flask
from flask import jsonify

app = Flask(__name__)


result = {
    "URL": "https://storage.googleapis.com/bgn-university-hack-rem-1018.appspot.com/processed2.png",
    "location": [[5,5], [2,2]],
    "objectsList": ["dog", "cat"]
        }

@app.route('/')
def getImage():
    return jsonify(result)

if __name__ == '__main__':
    app.run()

