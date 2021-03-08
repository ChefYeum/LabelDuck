from flask import Flask
from flask import jsonify

app = Flask(__name__)


result = {
    "imgUrl": "https://storage.googleapis.com/bgn-university-hack-rem-1019.appspot.com/DSC_1236.JPG",
    "location": [[5,5], [2,2]],
    "objectsList": ["dog", "cat"]
}

@app.route('/file')
def getImage():
    return jsonify(result)

if __name__ == '__main__':
    app.run()

