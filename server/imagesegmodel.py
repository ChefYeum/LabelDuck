import os

import tensorflow as tf
from tensorflow import keras
import numpy

import json

# test
# model = tf.keras.Sequential([
#     tf.keras.layers.Dense(5, input_shape=(3,)),
#     tf.keras.layers.Softmax()])
# json_config = model.to_json()
# with open("test2.json", "w") as write_file:
#     json.dump(json_config, write_file)



with open("unet.json") as read_file:
    json2_config= json.load(read_file)

new_model = keras.models.model_from_json(json2_config)
