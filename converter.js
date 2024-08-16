<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <script>
    function convertToMeters() {
      var centimeters = parseFloat(document.getElementById("centimeters").value);
      var meters = centimeters / 100;
      
      document.getElementById("result").innerHTML = centimeters + " centimeters is equal to " + meters + " meters.";
    }
  </script>
</head>
<body>
  <h2>Centimeter to Meter Converter</h2>
  <input type="number" id="centimeters" placeholder="Enter the value in centimeters">
  <button onclick="convertToMeters()">Convert</button>
  
  <div id="result"></div>



</body>
</html>
