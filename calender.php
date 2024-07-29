<form>
	Select Month:
	<select name=cmbmon>
		<?php
			for ($i=1;$i<=12;$i++)
				echo "<option>$i</option>";
		?>
	</select>
	<select name=cmbyear>
		<?php
			for ($i=2022;$i<=2025;$i++)
				echo "<option>$i</option>";
		?>
	</select>
	<input type=submit name=s1 value="Show">
</form>

<?php
if (isset($_GET["s1"]))
{
	$day=1;
	$mon=$_GET["cmbmon"];
	$year=$_GET["cmbyear"];
	$dt=mktime(0,0,0,$mon,$day,$year);
	
	echo "<table border=1 cellspacing=0 width=400>";
	echo "<caption><font color=#070><b>Month: ".date("M-Y",$dt)."</b><br><br></caption></font>";
	echo "<tr><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thr</th><th>Fri</th><th>Sat</th></tr>";

	echo "<tr>";
	$cnt=date("w",$dt);
	if ($cnt!=0)
		echo "<td colspan=$cnt>&nbsp;</td>";
	
	while(checkdate($mon,$day,$year))
	{
		echo "<td align='center'>".$day."</td>";
		$day++;
		$cnt++;
		if ($cnt%7==0)
			echo "</tr><tr>";
	}
	
	$val=7-($cnt%7);
	if ($val!=7)
		echo "<td colspan=$val>&nbsp;</td>";
	echo "</tr>";
	echo "</table>";
}	
?>
