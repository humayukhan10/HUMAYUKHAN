<?php
	function sumcalc()
	{
		$totarg=func_num_args();
		echo "<br>Total Args:=".$totarg;
		$tot=0;
		/*
		for ($i=0;$i<$totarg;$i++)
		{
			$tot=$tot+func_get_arg($i);
		}
		*/
		$arr=func_get_args();
		foreach($arr as $val)
			$tot=$tot+$val;
			
		echo "<br>Total:=".$tot;
		
		echo "<br>Array Total:=".array_sum($arr);
		
	}
	
	sumcalc(11,22,33);
	sumcalc(111,22,33,44,55);
?>
