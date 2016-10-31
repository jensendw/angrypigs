from flask import Flask
from flask_restful import Resource, Api, reqparse

app = Flask(__name__)
api = Api(app)
APP_DEBUG = True


class Health(Resource):
    def get(self):
        return {'status': 'OK'}


class Default(Resource):
    def get(self):
        return "Welcome to AngryPigs"


api.add_resource(Health, '/health')
api.add_resource(Default, '/')

if __name__ == '__main__':
    app.run(debug=APP_DEBUG, host='0.0.0.0')
####
