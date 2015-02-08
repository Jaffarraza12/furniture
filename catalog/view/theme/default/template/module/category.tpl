<aside class="side-col">
<nav class="sub-nav clearfix">
<ul>
  <?php foreach ($categories as $category) { ?>
	  <?php if ($category['category_id'] == $category_id) { ?>
		  <?php if ($category['children']) { ?>
			  <?php foreach ($category['children'] as $child) { ?>
				  <?php if ($child['category_id'] == $child_id) { ?>
				  		<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
				  <?php } else { ?>
				  		<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
				  <?php } ?>
			  <?php } ?>
		  <?php } ?>
	  <?php } ?>
  <?php } ?>
</ul>
</nav>
</aside>