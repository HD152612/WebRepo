/**
 * 여러줄 주석 
 */
// 한줄주석
	function korea(){
		alert('안녕하세요');
	}

function chinese(){
		alert('니 하오');
	}



	function greeting(nation){
		console.log("greeting 함수 시작");
		if(nation == 'k'){
			document.getElementByld("result").innerHTML = "안녕하세요";
		}
	
		else	if(nation == 'a'){
				document.getElementByld("result").innerHTML = "Hello";
		}	
		else if(nation == 'c'){
					document.getElementByld("result").innerHTML = "니 하오마";
		}
		console.log("greeting 함수 끝");
	}
