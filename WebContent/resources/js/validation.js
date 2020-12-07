function CheckAddStudent(){
	var studentId = document.getElementById("studentId");
	var name = document.getElementById("name");
	var grade = document.getElementById("grade");

	//이름 체크
	if(!isNaN(name.value.substr(0,1))){
		alert("[이름]\n숫자로 시작할 수 없습니다");
		name.select();
		name.focus();
		return false;
	}
	//학번 체크
	if(!check(/^[1900-2020][0-9]{5}/, studentId, "[학번]\n입학년도와 5개의 숫자를 조합하여 9자의 수를 입력하세요")){
		studentId.select();
		studentId.focus();
		return false;
		}
	
	//학년 체크
	if(!check(/^[1-4]$/, grade, "[학년]\n1~4의 숫자중 하나를 입력하세요")){
		grade.select();
		grade.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.newStudent.submit()
}