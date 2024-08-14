<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!DOCTYPE html>


  <script>
    function calculateInterest() {
      var principal = parseFloat(document.getElementById("principal").value);
      var rate = parseFloat(document.getElementById("rate").value);
      var time = parseFloat(document.getElementById("time").value);
      
      var interest = (principal * rate * time) / 100;
      
      document.getElementById("interestResult").innerHTML = "Simple Interest: " + interest;
    }
  </script>
</head>

<body>
<h2>Simple Interest Calculator</h2>
  <p>ENTER A AMOUNT:
    <input type="number" id="principal" placeholder="Enter principal amount">
  </p>
  <p>ENTER INTREST RATE:
    <input type="number" id="rate" placeholder="Enter interest rate">
  </p>
  <p>
    YEAR:
    <input type="number" id="time" placeholder="Enter time in years">
  </p>
<button onclick="calculateInterest()">Calculate</button>
  
  <div id="interestResult"></div>
</body>
</html>
