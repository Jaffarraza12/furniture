$(document).ready(function(){ 
    $('#btn-search').click(function (event) {
        if ($('#query').val() != '') {
            window.location.href = "/search/" + $("#query").val().replace(' ', '+');
        };
        return false;
    });

// Utility panel trigger
     $(".sub").hide();
     $('.trigger').each(function(){
      var $content = $(this).closest('li').find('.sub');
      $(this).click(function(e){
        e.preventDefault();
        $content.not(':animated').slideToggle();
      });
    }); 

 // Fancybox 
 $(".sign-up a").fancybox({
    maxWidth  : 400,
    maxHeight : 450,
    fitToView : false,
    width   : '70%',
    height    : '70%',
    autoSize  : false,
    closeClick  : false,
    openEffect  : 'none',
    closeEffect : 'none'
  });
 
 $(".set-up").fancybox({
    maxWidth  : 400,
    maxHeight : 300,
    fitToView : false,
    width   : '70%',
    height    : '70%',
    autoSize  : false,
    closeClick  : false,
    openEffect  : 'none',
    closeEffect : 'none'
  });

// FAQ
  $('.accordion li span').click(function() {
    //REMOVE THE ON CLASS FROM ALL BUTTONS
    $('.accordion li span').removeClass('on');      
    //NO MATTER WHAT WE CLOSE ALL OPEN SLIDES
    $('.accordion li em').slideUp('normal');   
    //IF THE NEXT SLIDE WASN'T OPEN THEN OPEN IT
    if($(this).next().is(':hidden') == true) {      
      //ADD THE ON CLASS TO THE BUTTON
      $(this).addClass('on');        
      //OPEN THE SLIDE
      $(this).next().slideDown('normal');
     }       
   });
  $('.accordion li em').hide();

// Slider
  $('.home-slider .flexslider').flexslider({
    animation: "slide",
    animationSpeed: 800,
    slideshow: false, 
    directionNav: false,
    animationLoop: false,
    manualControls: ".slider-nav li"
  });

  $('.home-slider .slider-nav li').hover(
    function () {
        $('.home-slider .flexslider').flexslider("pause");
        $('.home-slider .flexslider').flexslider($(this).index());
      }, 
      function () {
        $('.home-slider .flexslider').flexslider("pause");
      }
  );

  $('.home-slider .slider-nav li a').click(function(){
      window.location = $(this).attr("href");
  });


// Slider Product Detail
  $('.product-slider .flexslider').flexslider({
    animation: "slide",
    directionNav: false,
    manualControls: ".product-nav li"
  });

  // Small Slider 
  $('.small-slider').flexslider({
    animation: "slide",
    controlNav: false,
    directionNav: false
  });

});

// ********************************
// Term selection
// ********************************
$('.lease-select').ready(function () {
    //term selector
    $('.lease-selector li a').click(function () {
        $('.lease-selector li').removeClass('selected');
        $(this).parent().addClass('selected');
        $.cookie("leaseterm", $('.lease-selector li.selected a').data('term'), { expires: 365, path: '/' })
        $.get("/Base/ShoppingCartService/RefreshCart/" + $('.lease-selector li.selected a').data('term'), function (data) { refreshpage(data); });
        //location.reload();
        //return false
    });

});

// ********************************
// Package add-on/upgrade selection
// ********************************
$(document).ready(function () {
    if ($('#add-on-selection').length > 0) {
        console.log("exists");
        CalculateProductPrice();
        $('.bedroom-select').change(function () {
            $('#total-price').fadeOut(0);
            CalculateProductPrice();
            $('#total-price').fadeIn(500);
            return false;
        });
    }
});
function CalculateProductPrice() {
    var baseprice = parseFloat($('#total-price').data('base-price'), 10);
    var b1price = parseFloat($('#bdr1').find(":selected").data('price'), 10);
    var b2price = parseFloat($('#bdr2').find(":selected").data('price'), 10);
    var b3price = parseFloat($('#bdr3').find(":selected").data('price'), 10);
    var b4price = parseFloat($('#bdr4').find(":selected").data('price'), 10);
    var totalprice = baseprice + b1price + b2price + b3price + b4price;
    $('#total-price-value').html(totalprice.toFixed(2));

}



$(".product-content").ready(function () {

    // ********************************
    // Add to cart
    // ********************************
    $('.btnRent').click(function () {
        $.get("/Base/ShoppingCartService/AddToCart/" + $(this).data('product-sku'), function (data) { updatecart(data); });
        return false
    });

    function updatecart(data) {
        console.log("all good");
        window.location.href = "personalise/index.html";
    }


    // ********************************
    // Package add to cart
    // ********************************
    $('.btnRentPackage').click(function () {
        console.log($(this).data('product-sku'))
        $.get("/Base/ShoppingCartService/AddPackageToCart/" + $(this).data('product-sku') + "/" + $('#bdr1').find(":selected").val() + "/" + $('#bdr2').find(":selected").val() + "/" + $('#bdr3').find(":selected").val() + "/" + $('#bdr4').find(":selected").val(), function (data) { updatepackageadd(data); });
        return false
    });

    function updatepackageadd(data) {
        console.log("all good");
        window.location.href = "personalise/index.html";
    }
});
function updatecart(data) {
    location.reload();
    console.log("all good");

}
function refreshpage(data) {
    location.reload();
    //console.log("all good");

}

function CheckBoxRequired_ClientValidate(sender, e) {
    e.IsValid = jQuery(".AcceptedAgreement input:checkbox").is(':checked');
}