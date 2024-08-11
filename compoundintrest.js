<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
  <script>
    function calculateInterest() {
      var principal = parseFloat(document.getElementById("principal").value);
      var rate = parseFloat(document.getElementById("rate").value);
      var time = parseFloat(document.getElementById("time").value);
      var compound = document.getElementById("compound").checked;

      var interest;
      if (compound) {
        interest = principal * Math.pow((1 + rate / 100), time) - principal;
      } else {
        interest = (principal * rate * time) / 100;
      }

      document.getElementById("result").innerHTML = "The compound interest is: " + interest.toFixed(2);
    }
  </script>
</head>
<body>
  <h2>Compound Interest Calculator</h2>
  <label for="principal">Principal Amount:</label>
  <input type="number" id="principal" placeholder="Enter the principal amount"><br><br>

  <label for="rate">Interest Rate:</label>
  <input type="number" id="rate" placeholder="Enter the interest rate"><br><br>

  <label for="time">Time (in years):</label>
  <input type="number" id="time" placeholder="Enter the time in years"><br><br>

  <label for="compound">Compound Interest:</label>
  <input type="checkbox" id="compound"><br><br>

  <button onclick="calculateInterest()">Calculate</button>

  <div id="result"></div>
</body>
</html>
