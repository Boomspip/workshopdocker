#!/usr/bin/python3
from flask import Flask,jsonify

app = Flask(__name__)
    
@app.route('/api/v1/info',methods=["GET"])
def info():
    return jsonify({
        'status':'sucess',
        "name":"boom",
        'data':'1'
        })

@app.route('/api/v1/getdata',methods=["GET"])
def  getdata():
    return jsonify({
        'status':'success'
    })

if __name__ == "__main__":
    app.run(debug=True,host="0.0.0.0", threaded=True,port=5003)