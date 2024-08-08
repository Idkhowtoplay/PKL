$('#insert').summernote({
    placeholder: 'Silahkan isi (mengisi bisa mengcopy dari word yg telah di edit)',
    tabsize: 2,
    height: 150,
    toolbar: [
      ['style', ['style']],
      ['font', ['bold', 'underline', 'clear']],
      ['color', ['color']],
      ['para', ['ul', 'ol', 'paragraph']],
      ['table', ['table']],
      ['insert', ['link', 'picture', 'video']],
      ['view', ['fullscreen', 'codeview', 'help']]
    ]
  });
  $('.insert').summernote({
    placeholder: 'Silahkan isi (mengisi bisa mengcopy dari word yg telah di edit)',
    tabsize: 2,
    height: 150,
    toolbar: [
      ['style', ['style']],
      ['font', ['bold', 'underline', 'clear']],
      ['color', ['color']],
      ['para', ['ul', 'ol', 'paragraph']],
      ['table', ['table']],
      ['insert', ['link', 'picture', 'video']],
      ['view', ['fullscreen', 'codeview', 'help']]
    ]
  });
  // $(document).ready(function(){
  //   $('.summernote').summernote();
  // });
  // $('.summernote').summernote({
  //   onblur: function(e) {
  //     var id = $('.summernote').data('id');
  //     var sHTML = $('.summernote').eq(id).code();
  //     alert(sHTML);
  //   }
  // });
  // $(document).ready(function() {
  //   $('.summernote').summernote({
  //     height: 300,
  //   });
  // });