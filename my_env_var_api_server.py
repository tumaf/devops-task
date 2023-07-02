from flask import Flask, jsonify, request
import os

app = Flask(__name__)

@app.route("/get_variable", methods=["GET"])
def get_variable():
    variable_name = "MY_ENVIRONMENT_VARIABLE"
    value = os.getenv(variable_name)
    if value is not None:
        return jsonify({"variable": value})
    else:
        return jsonify({"error": "Environment variable not found"}), 500

@app.route("/healthy", methods=["GET"])
def healthy():
    return jsonify({"status": "ok"})

@app.route("/edit_variable", methods=["POST"])
def edit_variable():
    variable_name = "MY_ENVIRONMENT_VARIABLE"
    new_value = request.json.get("value")
    if new_value:
        os.environ[variable_name] = new_value
        return jsonify({"message": "Environment variable updated"})
    else:
        return jsonify({"error": "Invalid request"}), 400

if __name__ == "__main__":
    app.run()
