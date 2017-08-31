var id="2301";
var name="홍길동";
var age = 18;
var height = 173.5;
var hobby=["탁구", "게임"];

console.log(typeof id);
console.log(typeof age);
console.log(typeof hobby);
console.log(typeof 123);

document.getElementById("profile").innerHTML =
	"<ul>" + "<li>학번 : " + id + "</li>" + "<li>이름 : "+name + "</li>"
	+ "<li>나이 : " + age + "세</li>" + "<li>키  : "+ height + "cm</li>" + "<li>취미 : " + hobby + "</li></ul>";
