<?php echo $header; ?>
<div class="main-container">
<div class="content clearfix">

<div class="content-header">
    <h2 class="main-heading">Your shopping cart so far...</h2>
    
<ul class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
</ul> 

</div>



  
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    
    
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="checkout-container clearfix">
                    
        <table summary="Tabular data of shopping bag" class="tblcheckoutsection">
        <thead>
        <tr>
             <th class="cart-product">Product</th>  
             <th class="cart-remove">REMOVE?</th>                                          
             <th class="cart-price">PRICE</th>  
             <th class="cart-qty">QTY</th> 
             <th class="cart-price-total">TOTAL</th>
        </tr>
        </thead>
        <tbody>
      <?php foreach ($products as $product) { ?>
        <tr>
            <td class="cart-product">
                <div class="cart-image">
                	<?php if ($product['thumb']) { ?>
                    <img width="120" id="MainContent_productimage1" class="product-image" src="<?php echo $product['thumb']; ?>">                  
                  <?php } ?>
                </div>
                <div class="cart-desc">
                    <h3><?php echo $product['name']; ?></h3>
                    <p><br><?php echo $product['model']; ?></p>
                    
                    
                </div>
            </td>
            <td class="cart-remove">
                <!-- <a class="remove" href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolderDefault$BodyContent$rptShoppingCart$ctl01$ctl00','')">&#120;</a> -->
                <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['key']; ?>');"><i class="fa fa-times-circle"></i></button>
            </td>
            <td class="cart-price">
                <?php echo $product['price']; ?>/Mo
            </td>
            <td class="cart-qty">
                <!-- <input name="ctl00$ctl00$ctl00$ContentPlaceHolderDefault$BodyContent$rptShoppingCart$ctl01$txtQuantity" type="text" value="1" id="ContentPlaceHolderDefault_BodyContent_rptShoppingCart_txtQuantity_0" class="only-numbers">
                <a class="btn-apply" href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolderDefault$BodyContent$rptShoppingCart$ctl01$ctl01','')">APPLY</a> -->
                <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="only-numbers" />
                <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
            </td>
            
            <td class="cart-price-total">
                <?php echo $product['total']; ?>/Mo
            </td>
         </tr>
      <?php } ?>
        </tbody>
        </table>
                      

        <div id="ContentPlaceHolderDefault_BodyContent_pnlCartFooter" class="cart-footer">
	


        <ul class="summary">
            
            <li><em>FIRST MONTH TOTAL:</em> <span id="ContentPlaceHolderDefault_BodyContent_lblSubTotal">AED <?php echo $product['total']; ?></span></li>
            
            <li><a class="set-up" href="#fees">This price excludes set-up fees. See more information.</a></li>
            <li class="total-price"><em>ORDER TOTAL:</em> <span id="ContentPlaceHolderDefault_BodyContent_lblTotal">AED <?php echo $product['total']; ?></span></li>
        </ul>

        <div id="fees" style="display:none">
          <h3>List of our set-up fees</h3>
          <ul>
            <li>Single piece - <b>AED 250</b></li>
            <li>1 bedroom apartment - <b>AED 850</b></li>
            <li>2 bedroom apartment - <b>AED 1250</b></li>
            <li>3 bedroom apartment - <b>AED 1600</b></li>
          </ul>
          </div>

        <div class="checkout-navigation">
            <p>
                <span class="left"><input type="button"  value="continue shopping" id="ContentPlaceHolderDefault_BodyContent_btnBack" class="button sc-back-button" onclick="window.location.href='<?php echo $continue; ?>'"></span>
                
                <input type="button" value="checkout" id="ContentPlaceHolderDefault_BodyContent_btnCheckout" class="button" onclick="window.location.href='<?php echo $checkout; ?>'">
            </p>
        </div>

        
</div>
        
                </div>
    </form>
    
    
      
      
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?> 