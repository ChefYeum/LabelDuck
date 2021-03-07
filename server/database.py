import firebase_admin
from firebase_admin import credentials, firestore
from google.cloud import storage
from segmentation import getImagesFromFolder

cred = credentials.Certificate("credentials.json")
app = firebase_admin.initialize_app(cred)

storage = storage.Client.from_service_account_json("credentials.json")
db = firestore.client()

doc_ref = db.collection(u'Main').document(u'ProcessedImages')
doc_ref.set({
    u'imageURL':'initialisation',
    u'imageclass':'initialisation',
    u'co-ords':[0,0]
})


imageFiles = getImagesFromFolder("raw-images", "raw-images/s")
i = 1
for file in imageFiles:
    blob = storage.bucket('bgn-university-hack-rem-1018.appspot.com').blob("processed" + file.name[-5] + ".png")
    blob.upload_from_filename(file.name)
    print(file.name, "uploaded as processed" + file.name[-5] + ".png")
    i += 1
    print(blob.public_url)

    # db.collection(u'Main').add({
    #     u'URL': blob.public_url,
    #     u'imageclass':'bar',
    #     u'co-ords':[2,4]
    # })




