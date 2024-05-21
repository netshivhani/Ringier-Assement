from flask import Flask, jsonify, request
import os
import json
import psutil

app = Flask(__name__)

# Load the initial JSON data
with open('tech_assess.json', 'r') as f:
    data = json.load(f)

@app.route('/api/server-info', methods=['GET'])
def get_server_info():
    # Get the average load
    load_avg = os.getloadavg()[0]  # 1-minute load average
    # Get the disk usage
    disk_usage = psutil.disk_usage('/')
    available_disk_space = disk_usage.free

    return jsonify({
        'average_load': load_avg,
        'available_disk_space': available_disk_space
    })

@app.route('/api/return-value', methods=['GET'])
def get_return_value():
    return jsonify({
        'return_value': data.get('return_value', None)
    })

@app.route('/api/return-value', methods=['POST'])
def update_return_value():
    new_value = request.json.get('return_value')
    if new_value is None:
        return jsonify({'error': 'No return_value provided'}), 400
    
    # Update the value in the data and write it back to the file
    data['return_value'] = new_value
    with open('tech_assess.json', 'w') as f:
        json.dump(data, f, indent=4)

    return jsonify({'return_value': new_value})

if __name__ == '__main__':
    app.run(debug=True)
