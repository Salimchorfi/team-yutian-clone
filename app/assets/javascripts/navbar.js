$(document).ready(function(){
  var submitIcon = $('.navbar-search');
  var inputBox = $('.searchbox-input');
  var searchBox = $('.searchbox');
  searchBox.hide();

  $(document).on('click', function() {
  var isOpen = false;
   submitIcon.on('click',function(){
    if(isOpen == false){
      searchBox.show();
      searchBox.addClass('searchbox-open');
      submitIcon.empty();
      inputBox.focus();
      isOpen = true;
    } else  {
      searchBox.hide();
      searchBox.removeClass('searchbox-open');
      submitIcon.html('<a><span>Search</span></a>');
      inputBox.focusout();
      isOpen = false;
    };
  });
 });



  submitIcon.mouseup(function(){
    return false;
  });
  searchBox.mouseup(function(){
    return false;
  });
  $(document).mouseup(function(){
    if(isOpen == true){
      $('.navbar-search').css('display','block');
      submitIcon.click();
    }
  });
});
function buttonUp(){
  var inputVal = $('.searchbox-input').val();
  inputVal = $.trim(inputVal).length;
  if( inputVal !== 0){
    $('.searchbox-icon').css('display','none');
  } else {
    $('.searchbox-input').val('');
    $('.searchbox-icon').css('display','block');
  }
}

$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})
