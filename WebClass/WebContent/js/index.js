$(document).ready(function(){
	$('#LoginForm').submit(function(event){
		// 자동 submit되는 기능을 막음
		event.preventDefault();

		//id, pwd값을 가져오기
		//document.getElementById("id").value
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		console.log(id,pwd);

		//서버로 post 방식으로 전송
		$.post("http://httpbin.org/post", {id:id,pwd:pwd},function(data){
		// 	//alert(data.form.id+'님 로그인되었습니다.');
		// var myModal = $('#myModal');
		// myModal.modal();
		// myModal.find('.modal-body').text(data.form.id+"님 로그인 되었습니다.");
		alertModal('로그인 정보',data.form.id+"님 로그인 되었습니다.")
		});
	});
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
