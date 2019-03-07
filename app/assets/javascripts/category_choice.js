$(document).ready(function(){
  $(".category-choice").click(function(){
    $(this).toggleClass("active");
    console.log($(this).children(":first")[0].checked)
    if ($(this).children(":first")[0].checked == true) {
      $(this).children(":first")[0].checked = false
    } else {
      $(this).children(":first")[0].checked = true
    }
  });
});
