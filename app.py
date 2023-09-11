import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    return "Welcome!"

@app.route('/kamusta ka')
def hello():
    return 'mabuti naman, ikaw kamusta ka?'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
