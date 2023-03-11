import os
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
   return 'Hello, World!'

os.system("rm -rf Ultroid && git clone https://github.com/debojyoti8016/Ultroid && cd Ultroid && bash installer.sh && bash startup &")

