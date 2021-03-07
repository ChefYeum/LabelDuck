from google.cloud import storage
import firebase_admin
from firebase_admin import credentials, firestore
import os

images = []
folderName = "raw-images"
for filename in os.listdir(folderName):
    with open(os.path.join(folderName, filename), 'r') as f:
        if f.name.startswith("raw-images/s"):
            images.append(f)

print(images)

cred = credentials.Certificate("credentials.json")
app = firebase_admin.initialize_app(cred)

storage= storage.Client.from_service_account_json("credentials.json")

db = firestore.client()

doc_ref = db.collection(u'AIStartup').document(u'ObjectClassDataset')
doc_ref.set({
    u'imageURL':'urlstring2',
    u'imageclass':'objectbeinglookedfor',
    u'co-ords':[2,4],#(x,y) cordinates
})

# blob = storage.bucket('bgn-university-hack-rem-1019.appspot.com').blob('a.jpg') # intended name of file in Firebase Storage
# blob.upload_from_filename('NAME_OF_FILE_TO_UPLOAD.jpg') # path to file on local disk
# print(blob.public_url)

# for i in range(10):
#     db.collection(u'AIStartup').add({
#     u'imageURL': u'image',
#     u'imageclass':'bar',
#     u'co-ords':[2,4],
#     })


