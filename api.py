import datetime
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/time', methods=['GET'])
def get_current_time():
  now = datetime.datetime.now()

  response_data = {
      'current_datetime_iso': now.isoformat(), 
      'date': now.strftime('%Y-%m-%d'),      
      'time': now.strftime('%H:%M:%S'),      
      'timezone': str(now.astimezone().tzinfo)
  }

  return jsonify(response_data)

@app.route('/', methods=['GET'])
def index():
    return "Welcome to the DateTime API! Visit /time to get the current time."
if __name__ == '__main__':
  app.run(host='0.0.0.0', port=3000, debug=True)