<?php
	include "security.php";
	include "header.php";
	include "connection.php";
	$qry="select * from stdata2 where id=".$_GET["rec"];
	$rec=mysqli_query($conn,$qry);
	$val=mysqli_fetch_assoc($rec);
	
	$arr=array('General','OBC','SC','ST','EWS');
	echo "<br><b>Edit Student Details<br>";
?>
<FORM action=stud_edit_qry.php method=post>
	<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=4 ALIGN=CENTER>
		<TR>
			<TD>Registration No:</td>
			<td><input type=text name=txtnum readonly size=10 value=<?=$val["regno"] ?>></td>
		</TR>
		<TR>
			<TD>Name:</td>
			<td><input type=text name=txtname size=40 value='<?=$val["name"] ?>'></td>
		</TR>
		<TR>
			<TD>Gender:</td>
			<td>
				<input type=radio name=optGender value="male" <?=($val["gender"]=='male')?" checked":"" ?>>Male
				<input type=radio name=optGender value="female" <?=($val["gender"]=='female')?" checked":"" ?>>Female
			</td>
		</TR>
		<TR>
			<TD>Category:</td>
			<td>
				<select name=cmbCategory>
					<?php
						foreach($arr as $v)
						{
							if ($v==$val["category"])
								echo "<option selected>$v</option>";
							else
								echo "<option>$v</option>";
							
						}
					?>
				</select>
			</td>
		</TR>
		<TR>
			<TD>Birth Date:</td>
			<td>
				<input type=date name=txtBdate value=<?=$val["birthdate"] ?>>
			</td>
		</TR>
		<TR>
			<TD>Contact Details:</td>
			<td>
				<textarea name=txtContacts><?=$val["contact_details"] ?></textarea>
			</td>
		</TR>
		<tr>
			<th colspan=2><input type=submit name=s1 value="Save">
		</tr>
	</TABLE>
</form>
<?php
	include "footer.php";

?>
