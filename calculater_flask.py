from flask import Flask, request 
 
app = Flask(__name__) 
 
@app.route('/', methods=['GET', 'POST']) 
def add_numbers(): 
    result = None 
Page 46 of 48 
 
    if request.method == 'POST': 
        num1 = int(request.form.get('num1')) 
        num2 = int(request.form.get('num2')) 
        result = num1 + num2 
         
 
    html_content = f""" 
    <!DOCTYPE html> 
    <html> 
    <head> 
        <title>Add Numbers</title> 
    </head> 
    <body> 
        <h1>Add Two Numbers</h1> 
        <form method="POST" action="/"> 
            <label for="num1">Number 1:</label> 
            <input type="text" id="num1" name="num1" required><br><br> 
            <label for="num2">Number 2:</label> 
            <input type="text" id="num2" name="num2" required><br><br> 
            <button type="submit">Calculate</button> 
        </form> 
        <h2>Result: {result}</h2> 
    </body> 
    </html> 
    """ 
    return html_content 
 
if __name__ == '__main__': 
    app.run(debug=True) 
