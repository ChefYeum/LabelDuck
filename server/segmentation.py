import os
import tensorflow


def getImagesFromFolder(folderName, prefix):
    images = []
    for filename in os.listdir(folderName):
        with open(os.path.join(folderName, filename), 'r') as f:
            if f.name.startswith(prefix):
                images.append(f)
    return images

def model
