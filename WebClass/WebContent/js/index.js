$(document).ready(function(){
$('#signupform').submit(function(event){
  event.preventDefault();

  var name = $('#name').val();
  //
  // var regModal = $('#regModal');
  // regModal.find('.modal-body').text(name+"님 회원가입 되었습니다.");
  // regModal.modal();
  $('#regModal').modal('hide');
  alertModal("회원가입 정보", name+"님 회원가입 되었습니다.");
  document.signupform.reset();

});

});

function alertModal(title, body) {
  var alertModal = $('#myModal');

  alertModal.find('.modal-title').text(title);
  alertModal.find('.modal-body').text(body);
  alertModal.modal();
}
