<?php echo $header; ?>
<!--<div class="container">-->
<div class="main-container">
<div class="content clearfix">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
    
    <div class="content-box">
                
    <h2>WHY RENT FURNITURE </h2>
<div class="small-slider">
<ul class="slides">
<li>Cut the cost of moving to Dubai and the UAE &#8211; pay in decreasing monthly installments rather than paying for your whole house's worth of furniture in one go.</li>
<li>We deliver it, we assemble it; you enjoy it, then we pick it up.</li>
<li>Focus on your business, focus on your family, we will take care of the rest.</li>
<li>Rent your home furniture. It's easier , it saves times and gives you flexibility of choice.</li>
</ul>
</div>    <p><a href="#" >Find out more</a></p>

            </div>
            
</div> 	<!-- /content -->
</div>	<!-- /main-container -->
<?php echo $footer; ?>