 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!DOCTYPE html>
<html>
<head>
  <script>
    function calculate() {
      var num1 = parseFloat(document.getElementById("num1").value);
      var num2 = parseFloat(document.getElementById("num2").value);
      
      var addition = num1 + num2;
      var subtraction = num1 - num2;
      var multiplication = num1 * num2;
      var division = num1 / num2;
      
      document.getElementById("additionResult").innerHTML = "Addition: " + addition;
      document.getElementById("subtractionResult").innerHTML = "Subtraction: " + subtraction;
      document.getElementById("multiplicationResult").innerHTML = "Multiplication: " + multiplication;
      document.getElementById("divisionResult").innerHTML = "Division: " + division;
    }
  </script>
</head>
<body>
  <table>
  <h2>Simple Calculator</h2>
  <input type="number" id="num1" placeholder="Enter number 1">
  <input type="number" id="num2" placeholder="Enter number 2">
  <button onclick="calculate()">Calculate</button>
  
  <div id="additionResult">ADDITION</div>
  <div id="subtractionResult">subtractio</div>
  <div id="multiplicationResult">multiplication</div>
  <div id="divisionResult">Division</div>
</table>

</body>
</html>
