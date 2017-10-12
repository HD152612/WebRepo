<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/index.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <title>MyBlog</title>
  </head>
  <body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.html">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="Hobby.html">Hobby<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item"  onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="Dream.html">Dream</a>
      </li>
      <li class="nav-item"  onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="Love.html">Love</a>
      </li>
    </ul>
    <% 
    String user = (String)session.getAttribute("loginuser");
    if (user == null)  {%>
    <form class="form-inline my-2 my-lg-0" id="LoginForm" action="/WebClass/bloglogin" method="post">
      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" name="id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" name="pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>  &nbsp;&nbsp;
      <button type="button" class="btn btn-outline-success my-2 my-sm-0" data-toggle="modal" data-target="#regModal">Sign Up</button>
    </form>
    <%  } else { %>
    홍길동으로 로그인 중 &nbsp;
    <form class="form-inline my-2 my-lg-0" id="LogoutForm"  action="/WebClass/bloglogout" method="post">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
      </form>
    <% } %>
  </div>
</nav>
<div class="container">
<h1 class="hello">Hello! This is MinYoung's Blog!</h1><br>
  <h2>프로필</h2>
  <p class = "profile_p">
    <img class="profile" src="/WebClass/image/profile.jpg" width="600" height="400" alt="덕선이"><br><br>
한국디지털미디어고등학교 2학년 6반 12번 박민영</p>
</div>
<div>
<hr class="line">
<footer>
<p class="footer">@2017 Made by MinYoung Park</p>

</footer>
</div>
<!-- Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- 새로운 모달-->
<div class="modal" id="regModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">회원가입 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="signupform" name="signupform">
      <div class="modal-body">

          <div class="form-group">
            <label for="inputPassword6">ID</label>
            <input type="text" id="inputPassword6" class="form-control mx-sm-3" aria-describedby="passwordHelpInline" style="width : 300px;" required>
            <small id="passwordHelpInline" class="text-muted">
              Must be 8-20 characters long.
            </small>
          </div>
          <div class="form-group">
            <label for="inputPassword6">Password</label>
            <input type="password" class="form-control mx-sm-3" aria-describedby="passwordHelpInline" style="width : 300px;" required>
            <small  class="text-muted">
              Must be 8-20 characters long.
            </small>
          </div>
        <!--라디오-->
  <label class="custom-control custom-radio">
  <input name="grade" type="radio" class="custom-control-input" checked>
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">1학년</span>
</label>
<label class="custom-control custom-radio">
  <input name="grade" type="radio" class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">2학년</span>
</label>
<label class="custom-control custom-radio">
  <input name="grade" type="radio" class="custom-control-input">
  <span class="custom-control-indicator"></span>
  <span class="custom-control-description">3학년</span>
</label><br>
  <label class="mr-sm-2" for="inlineFormCustomSelectPref">Class</label><br>
  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelectPref" required>
    <option value="">--선택--</option>
    <option value="1">1반</option>
    <option value="2">2반</option>
    <option value="3">3반</option>
    <option value="4">4반</option>
    <option value="5">5반</option>
    <option value="6">6반</option>
  </select>
  <div class="form-group">
    <label for="inputPassword6">Name</label>
    <input type="text" id="name" class="form-control mx-sm-3" aria-describedby="passwordHelpInline" style="width : 200px;" required>
  </div>
  <div class="form-group">
    <label for="inputPassword6">Number</label>
    <input type="text" class="form-control mx-sm-3" aria-describedby="passwordHelpInline" style="width : 200px;" required>
  </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" >Sign Up</button>
      </div>
</form>
    </div>
  </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	
	<script src="/WebClass/js/index.js"></script>
	<% 
	String errorid = (String)request.getAttribute("errorid");
	if (errorid != null) {
	%>
	<script>
	alertModal("로그인 오류","아이디 또는 비밀번호를 틀렸습니다.");
	$('#id').val('<%=errorid %>');
	</script>
	<%
	}
	%>
  </body>
</html>

<!--id="inputPassword6"
id="passwordHelpInline"-->
