#= require tinymce

window.CMS.wysiwyg = ->
  tinymce.init
    selector: 'textarea[data-rich-text]'
    theme: "modern"
    plugins: "advlist autolink lists link image charmap print preview hr anchor pagebreak
      searchreplace wordcount visualblocks visualchars code fullscreen
      insertdatetime media nonbreaking save table contextmenu directionality
      emoticons template paste textcolor"
    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
    toolbar2: "code media fullscreen | forecolor backcolor emoticons"
    image_advtab: true
