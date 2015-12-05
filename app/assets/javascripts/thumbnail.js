$(window).on("page:change", function(){
  $("#main-file").on("click", function(){
    $('#main-file').change(
    function() {
    if ( !this.files.length ) {
        return;
    }

    var file = $(this).prop('files')[0];
    var file_reader = new FileReader();
    file_reader.onload = function() {
        $('#main-preview').attr('src', file_reader.result ).css('display','inline');
    }
    file_reader.readAsDataURL(file);
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
    var file_reader = new FileReader();
    file_reader.onload = function() {
        $("#sub-preview0").attr('src', file_reader.result ).css('display','inline');
    }
    file_reader.readAsDataURL(file);
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
    var file_reader = new FileReader();
    file_reader.onload = function() {
        $("#sub-preview1").attr('src', file_reader.result ).css('display','inline');
    }
    file_reader.readAsDataURL(file);
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
    var file_reader = new FileReader();
    file_reader.onload = function() {
        $('#sub-preview2').attr('src', file_reader.result ).css('display','inline');
    }
    file_reader.readAsDataURL(file);
    }
    );
  });

  $("#avatar").on("click", function(){
    $("#avatar").change(
    function() {
    if ( !this.files.length ) {
        return;
    }

    var file = $(this).prop('files')[0];
    var file_reader = new FileReader();
    file_reader.onload = function() {
        $("#avatar-preview").attr('src', file_reader.result ).css('display','inline');
    }
    file_reader.readAsDataURL(file);
    }
    );
  });

  $("#first-avatar").on("click", function(){
    $("#first-avatar").change(
    function() {
    if ( !this.files.length ) {
        return;
    }

    var file = $(this).prop('files')[0];
    var file_reader = new FileReader();
    file_reader.onload = function() {
        $("#first-avatar-preview").attr('src', file_reader.result ).css('display','inline');
    }
    file_reader.readAsDataURL(file);
    }
    );
  });
});

