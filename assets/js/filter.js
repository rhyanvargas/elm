var ready;
ready = function() {
$grid = $(".work-index");
$grid.isotope({
  itemSelector: '.work-item',
  layoutMode: 'fitRows'
});

$(".filter .btn-link").on("click", function(){
  $grid.isotope({ filter: $(this).attr("data-filter") });
  // remove active classes from all
  $(".btn-link").removeClass("active");
  // add active class to the filter that was clicked
  $(this).addClass("active");
})
};

$(document).ready(ready);

$(document).on('page:load', ready);
