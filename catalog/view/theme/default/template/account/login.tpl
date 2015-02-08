<?php echo $header; ?>
<div class="main-container">
<div class="content clearfix">
  
	<div class="content-header">
		<h2 class="main-heading">Home</h2>        
		<p class="breadcrumb"></p> 
	</div>
  
  <?php if ($success) { ?>
  <div class="alert alert-success"  id="forget-password-message"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"  id="forget-password-message"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-sm-12"><?php echo $content_top; ?>
    
    
    
    <div class="checkout-container clearfix">
                <div class="form clearfix">
                    

<fieldset class="login clearfix">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2>Returning Customer Login:</h2>
    
        
        

        <div class="ctrlHolder">
            <label class="control-label" for="input-email"><?php echo $entry_email; ?> *</label>
            <input type="text" name="email" value="<?php echo $email; ?>" placeholder="" id="input-email" />        
        </div>
        <div class="ctrlHolder">
            <label class="control-label" for="input-password"><?php echo $entry_password; ?> *</label>
            <input type="password" name="password" value="<?php echo $password; ?>" placeholder="" id="input-password" />
        </div>
        <div class="btnHolder">
            <input type="submit" value="sign me in" class="button" />            
        </div>
</form>
</fieldset><!-- / login-->

<fieldset class="register clearfix">
<form action="http://furniture.jaffarraza.com/index.php?route=account/register" method="post" enctype="multipart/form-data">
<h2>New Customers:</h2>


<div class="ctrlHolder">
<label class="control-label" for="input-firstname">First Name *</label>
<input type="text" name="firstname" id="input-firstname" />
</div>

<div class="ctrlHolder">
<label class="control-label" for="input-lastname">Last Name *</label>            
<input type="text" name="lastname" id="input-lastname" />            
</div>

<div class="ctrlHolder">
<label class="control-label" for="input-email">Email Address *</label>
<input type="email" name="email" id="input-email" />
</div>

<div class="ctrlHolder">
<label class="control-label" for="input-password"><?php echo $entry_password; ?> *</label>
<input type="password" name="password" id="input-password" />
</div>

<div class="ctrlHolder">
<label class="control-label" for="input-confirm">Retype Password *</label>
<input type="password" name="confirm" id="input-confirm" />
</div>


<input type="hidden" name="telephone" value="123456789" id="input-telephone" />
<input type="hidden" name="address_1" value="Address 1" id="input-address-1" />
<input type="hidden" name="city" value="UAE" id="input-city" />
<input type="hidden" name="postcode" value="11223" id="input-postcode" />

<select name="country_id" id="input-country" style="display: none;">
	<option value="222" selected="selected">United Kingdom</option>
</select>

<select name="zone_id" id="input-zone" style="display: none;">
	<option value="3553">Greater London</option>
</select>

<input type="checkbox" name="agree" value="1" checked="checked" style="display: none;" />


<div class="btnHolder">
<input type="submit" name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$BodyContent$MemberRegister_8$BtnCreateAccount" value="Create Account" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ctl00$ctl00$ContentPlaceHolderDefault$BodyContent$MemberRegister_8$BtnCreateAccount&quot;, &quot;&quot;, true, &quot;MemberRegister&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolderDefault_BodyContent_MemberRegister_8_BtnCreateAccount" />
</div>

</form>
</fieldset>







                </div>
            </div>
    
      <?php echo $content_bottom; ?></div>
    <?php //echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?>