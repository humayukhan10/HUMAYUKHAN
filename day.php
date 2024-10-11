<form>
    Select Month
    <select name=sm>
       <?php
       for($i=1;$i<=12;$i++){
       echo "<option>$i</option>";
       }
       ?>
    </select>
    <select name=ym>
       <?php
       for($i=2021;$i<=2025;$i++){
       echo "<option>$i</option>";
       }
       ?>
    </select>
    <input type=submit name=s1>
</form>
<?php
$day=1;
$mon=$_GET["sm"];
$year=$_GET["ym"];
$stm=mktime(0,0,0,$mon,$day,$year);
$month=date("M-Y",$stm);
$Day=date("w",$stm);
$cnt=-1;
ECHO "SELECTED MONTH";
echo $month;
echo "<br>";
while(checkdate($mon,$day,$year))
	{
		
		$day++;
		$Day++;

       if($Day%7==0){
        $cnt++;
       }    
    }
    echo "<td align='center'>".$day."</td>";
    echo "Total Sunday in Month".$cnt;
   


?>
