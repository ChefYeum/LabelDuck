from flask import Flask
import json

app = Flask(__name__)

@app.route('/')

def getImage(filelocation):
    # using the filelocation the firebase script can be run to update
    # the firebase storage and database
    # this function then creates a json which is returned to the front end

    # DATA_OF_IMAGE_ATTRIBUTES = excution on firebasescript.py

    with open("imageattributes.json", "w") as write_file:
        json.dump(DATA_OF_IMAGE_ATTRIBUTES, write_file)
    return "imageattributes.json"


if __name__ == '__main__':
    app.run()
