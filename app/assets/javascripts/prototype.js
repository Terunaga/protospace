$(window).on("page:change", function(){
  $(".image-upload-plus").on("click", function(){
    $("#show-form").hide();
    $("#hide-form").show();
    $("#hide-form").css("list-style", "none");
  });
});

