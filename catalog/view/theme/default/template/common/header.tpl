<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<!-- <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script> -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js" ></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<!--<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">-->

<script src="catalog/view/javascript/plugins.js" ></script>
<script src="catalog/view/javascript/main.js" ></script>

<link href="catalog/view/theme/default/stylesheet/main.css" rel="stylesheet">
<script src="catalog/view/javascript/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">



           <header class="site-header">
               <h1><a href="index.html" title="Home">
               <?php if ($logo) { ?>
	          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
	          <?php } else { ?>
	          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
	          <?php } ?>               
               </a></h1>
               <p class="top-contact"><a href="mailto:info@furniturerentalme.com">info@furniturerentalme.com</a></p>
               <ul class="utility-panel">
                    <li class="login">


    <!-- <a href="<?php echo $login; ?>">Login</a> 
&#8211;    <a href="<?php echo $register; ?>">Register</a> -->

		<a href="<?php echo $login; ?>">Login &#8211; Register</a>
</li>
					

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
                    <li class="cart">


<a href="<?php echo $shopping_cart; ?>" id="count"><span>Cart </span>(<?php echo $cart; ?> item/s)</a>
</li>
                    
                    
                    </li>
               </ul><!-- /utility-panel -->

           </header>     
        
              
     <!--<div class="main-container">-->
              <nav class="main-nav clearfix">    



    
    
    
    <?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul id="menu" class="clearfix">
      	<li><a href="<?php echo $home; ?>">Home</a></li>
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <!-- <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a> -->
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?> 




</nav>







  
</nav>


