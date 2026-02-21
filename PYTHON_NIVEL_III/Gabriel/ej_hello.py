from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<h1>Hola desde Flask</h1>"

"""
Número de puerto sin comillas
Profesor: 5000
Gabriel: 5001
Alejandro: 5002
Jesús: 5003
Andy: 5004
Yisber: 5005
if __name__ == '__main__':
    app.run(host='127.0.0.1',port=5001)
"""