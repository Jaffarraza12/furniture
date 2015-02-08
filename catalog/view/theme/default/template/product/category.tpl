<?php echo $header; ?>
<!--<div class="container">-->
<div class="main-container">
<div class="content clearfix">

<div class="content-header">
    <h2 class="main-heading"><?php echo $heading_title; ?></h2>
    
<ul class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
</ul> 

</div>


<?php
$url = $_SERVER["REQUEST_URI"];

$explode = explode('=', $url);

if( $explode[2] != 62 ) {
?>
<div class="intro-box">
    <p><?php echo $description; ?></p>
</div>

<?php } ?>

  <div class="row"><?php //echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-sm-12"><?php echo $content_top; ?>
    
  
<?php
$pos = strpos($_SERVER["REQUEST_URI"], '_');
if ($pos === false) {	
?>
    
<?php if ($categories) { ?>
	<ul class="blocks-1 clearfix">
		<?php foreach ($categories as $category) { ?>		           
			<li class="block-item">
				<div class="box-image">
					<img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" />
				</div>
				<div class="box-content">
					<h2><?php echo $category['name']; ?></h2>          
			        
			        <div class="desc">
						<h3>Live in a luxury Italian haven</h3>
						<p><?php echo $category['description']; ?></p>                   
						
			            <p class="btn"><a href="<?php echo $category['href']; ?>">View details &raquo;</a></p>
					</div>
				</div>
			</li>
		<?php } ?>
	</ul>
<?php } ?> 


<!-- // Below code is for display Products // -->


<?php } else { ?>


<?php echo $column_left; ?>


<div class="products clearfix">
<?php if ($products) { ?>      
<ul class="blocks-2 clearfix">
	<?php foreach ($products as $product) { ?>
		<li class="block-item">
			<div class="box-image">
				<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" width="248" height="186" />
			</div>
			<div class="box-content">				          
				<div class="desc">
					<h3>Live in a luxury Italian haven</h3>
					<h2><?php echo $product['name']; ?></h2>
					<ul class="lease-term">
                            

<li class="lease-select"><a class="trigger" href="#">Lease Term <span id="months">4 Months</span></a>
    <div class="sub">

    <ul class="lease-selector">           
        <li class="m@ThisTerm.id"><a href="#" data-term="6">1 Month</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="7">2 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="8">3 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="9">4 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="10">5 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="11">6 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="12">7 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="13">8 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="14">9 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="15">10 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="16">11 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="17">12 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="18">13 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="19">14 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="20">15 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="21">16 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="22">17 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="23">18 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="24">19 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="25">20 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="26">21 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="27">22 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="28">23 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="29">24 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="30">25 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="31">26 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="32">27 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="33">28 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="34">29 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="35">30 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="36">31 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="37">32 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="38">33 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="39">34 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="40">35 Months</a></li>
        <li class="m@ThisTerm.id"><a href="#" data-term="41">36 Months</a></li>
    </ul>
    </div>
</li>  
                        </ul>					                    
					<p class="btn"><a href="<?php echo $product['href']; ?>">View details &raquo;</a></p>
				</div>
			</div>
		</li>
	<?php } ?>
</ul>
<?php } ?>
</div>


<?php } ?>


<?php if( $explode[2] != 62 ) { ?>
      
<?php if (!$categories && !$products) { ?>
	<p><?php echo $text_empty; ?></p>
<?php } ?>      
      
      
<?php } ?>
      
      
<?php 
if( $explode[2] == 62 ){
?>

<aside class="side-col">
                <nav class="sub-nav clearfix">
                
<nav>
<ul id="menu-two" class="clearfix">
        <li class="current"><a href="index.html">Contact Us</a>
        </li>
        <li><a href="../company-profile/index.html">Company Profile</a></li>
        <li><a href="../our-people/index.html">Our People</a></li>
        <li><a href="../careers/index.html">Careers</a></li>
        <li><a href="../privacy-and-legal/index.html">Privacy Policy</a></li>
        <li><a href="../terms-of-lease/index.html">Terms Of Lease</a></li>
        <li><a href="../news-press/index.html">News &amp; Press</a></li>
</ul> 
</nav>
              </nav>
            </aside> 
            

<div class="main-col clearfix">
                <p><iframe marginheight="0" marginwidth="0" src="https://maps.google.com/maps/ms?msa=0&amp;msid=210432970945583728448.0004dfe529b6c021a4f17&amp;ie=UTF8&amp;ll=25.117359,55.236538&amp;spn=0,0&amp;t=m&amp;output=embed" scrolling="no" frameborder="0" height="350" width="100%"></iframe><br /><span style="font-size: 13px;">View <a href="https://maps.google.com/maps/ms?msa=0&amp;msid=210432970945583728448.0004dfe529b6c021a4f17&amp;ie=UTF8&amp;ll=25.117359,55.236538&amp;spn=0,0&amp;t=m&amp;source=embed">Living Philosophy Furniture Trading LLC</a> in a larger map</span></p>
<h2>Furniture Rental by Living Philosophy</h2>
<h3>Living Philosophy Furniture Trading LLC</h3>
<address>
<p><strong>Warehouse:</strong> 369- 450 Al Quoz<br />Po Box 212209 Dubai&nbsp;</p>
<p><strong>PH.: +971 (0)44 303693</strong></p>
<p><br /> <strong>Donata Mob.:</strong> +971 (0)50 5592544&nbsp;</p>
<p><strong>Remi Mob.:</strong>&nbsp;&nbsp;&nbsp;&nbsp;+971 (0)56 6509620</p>
<p><strong>Luca Mob.:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+971 (0)55 5742083</p>
<p>&nbsp;</p>
</address>               
            </div> <!-- /products -->

<?php } ?>      
      
      
      
      
      
      
      
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div> 	<!-- /content -->
</div>	<!-- /main-container -->
<?php echo $footer; ?>
