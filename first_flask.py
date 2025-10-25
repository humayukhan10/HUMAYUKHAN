from flask import Flask, render_template, request

app = Flask(__name__)

# Homepage route
@app.route('/')
def home():
    return render_template('index.html')

# Handle form submission
@app.route('/greet', methods=['POST'])
def greet():
    name = request.form['name']
    return f"<h2>Hello, {name}! 👋 Welcome to Flask.</h2>"

if __name__ == "__main__":
    app.run(debug=True)
