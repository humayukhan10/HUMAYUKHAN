<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <style>
    body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
    }

    h2 {
      color: #333333;
    }

    .result {
      margin-top: 20px;
      font-size: 18px;
    }

    .leap {
      color: green;
    }

    .not-leap {
      color: red;
    }
  </style>

  <script>
    function checkLeapYear() {
      var year = parseInt(document.getElementById("year").value);

      var resultElement = document.getElementById("result");

      if (year % 4 === 0 && (year % 100 !== 0 || year % 400 === 0)) {
        resultElement.innerHTML = year + " is a leap year!";
        resultElement.classList.remove("not-leap");
        resultElement.classList.add("leap");
      } else {
        resultElement.innerHTML = year + " is not a leap year.";
        resultElement.classList.remove("leap");
        resultElement.classList.add("not-leap");
      }
    }
  </script>
</head>
<body>
  <h2>Leap Year Checker</h2>
  <label for="year">Enter a year:</label>
  <input type="number" id="year" placeholder="Enter a year"><br><br>

  <button onclick="checkLeapYear()">Submit</button>

  <div id="result" class="result"></div>
</body>
</html>
