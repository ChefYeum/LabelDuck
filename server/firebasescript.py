import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
# from google.cloud import storage
import os
from firebase_admin import storage
# from firebase import Firebase

##CREDENTIALS

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = 'SAK.json'

#certificate for the specific admin SDK
cred  = credentials.Certificate('SAK.json')
#initialisation
default_app = firebase_admin.initialize_app(cred)

#intialise the database
db = firestore.client()

doc_ref = db.collection(u'AIStartup').document(u'ObjectClassDataset')
doc_ref.set({
    u'imageURL':'urlstring2',
    u'imageclass':'objectbeinglookedfor',
    u'co-ords':[2,4],#(x,y) cordinates
})

blob = storage.bucket('bgn-university-hack-rem-1019.appspot.com').blob('a.jpg') # intended name of file in Firebase Storage
blob.upload_from_filename('NAME_OF_FILE_TO_UPLOAD.jpg') # path to file on local disk
print(blob.public_url)

db.collection(u'AIStartup').add({
    u'imageURL': blob.public_url,
    u'imageclass':'bar',
    u'co-ords':[2,4],#(x,y) cordinates
})




# bucket = default_app.storage.bucket('bgn-university-hack-rem-1019')
# print(bucket)
# client = storage.Client()
#
# # Reference an existing bucket.
# bucket = client.get_bucket('bgn-university-hack-rem-1019.appspot.com')

# image1 = bgn-university-hack-rem-1019.load_image_file('reg.jpg')
# imageBlob_1 = bucket.blob('DSC_1236.jpg')
# # imageBlob_1.upload_from_filename('DSC_1236.jpg',content_type='image/jpeg')
# URL_1 = imageBlob_1.public_url
# response1 = requests.get(URL_1)
# Enable Cloud Storage

# bucket = storage.bucket()
# blob = bucket.blob('DSC_1236.JPG')
# # blob.upload_from_filename(FILE_PATH)
# print(blob.public_url())


# client = storage.Client()
#
# # Reference an existing bucket.
# bucket = client.get_bucket('bgn-university-hack-rem-1019.appspot.com')
#
# buckets = list(client.list_buckets())
# print(buckets)
#
# # Download a file from your bucket.
# # test = storage2.child('DSC_1236.JPG').get_url()
#
# # print(test)
#
#
# giraffeBlob = bucket.get_blob('DSC_1236.JPG')
# # giraffeBlob.download_as_string()

#
# print(giraffeBlob.public_url())
