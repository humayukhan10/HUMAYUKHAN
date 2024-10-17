<html>
<body>
<form action=fileupload.php method=post enctype="multipart/form-data">
Select file for upload:

<input type=file name=file1 id=fileupload>
<input type=submit  name=s1 value=upload file>
</form>
</html>
<?php

?>

<?PHP
PRINT_R($_POST);
$tgtfile="./PDF/".$_FILES["file1"]["name"];
if (substr($tgtfile,-4)==".pdf")
{
move_uploaded_file($_FILES["file1"]["tmp_name"], $tgtfile);
echo "<br>Success";
}
else{

echo "<br>invaliod File Format";

}

?>
