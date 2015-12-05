$(window).on("page:change", function(){
  $("#main-file").on("click", function(){
    $('#main-file').change(
    function() {
    if ( !this.files.length ) {
        return;
    }

    var file = $(this).prop('files')[0];
    var fr = new FileReader();
    fr.onload = function() {
        $('#main-preview').attr('src', fr.result ).css('display','inline');
    }
    fr.readAsDataURL(file);
    }
    );
  });

  $("#sub-file0").on("click", function(){
    $("#sub-file0").change(
    function() {
    if ( !this.files.length ) {
        return;
    }

    var file = $(this).prop('files')[0];
    var fr = new FileReader();
    fr.onload = function() {
        $("#sub-preview0").attr('src', fr.result ).css('display','inline');
    }
    fr.readAsDataURL(file);
    }
    );
  });

  $("#sub-file1").on("click", function(){
    $("#sub-file1").change(
    function() {
    if ( !this.files.length ) {
        return;
    }

    var file = $(this).prop('files')[0];
    var fr = new FileReader();
    fr.onload = function() {
        $("#sub-preview1").attr('src', fr.result ).css('display','inline');
    }
    fr.readAsDataURL(file);
    }
    );
  });

    $("#sub-file2").on("click", function(){
    $('#sub-file2').change(
    function() {
    if ( !this.files.length ) {
        return;
    }

    var file = $(this).prop('files')[0];
    var fr = new FileReader();
    fr.onload = function() {
        $('#sub-preview2').attr('src', fr.result ).css('display','inline');
    }
    fr.readAsDataURL(file);
    }
    );
  });
});

