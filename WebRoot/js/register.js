function e(e) {
	return document.getElementById(e);
}

function jujiao(v, c, str) {
	var v = e(v);
	v.value = "";
	var a = e(c);
	a.innerHTML = str;
}

function checkName(obj, div) {

	var a = e(div);
	var userName = e(obj);
	var reg = new RegExp("^[a-zA-Z0-9][a-zA-Z0-9\-\._]{2,16}[a-zA-Z0-9]$");
	if (userName.value == "") {
		a.innerHTML = "用户名不能为空，请输入用户名";
		return num =false;
	}
	if (userName.value.length <=6 && userName.value.length >= 20) {
		a.innerHTML = "输入长度不正确！必须是6-20位之间！";
		return num =false;
	}
	if (!reg.test(userName.value)) {
		a.innerHTML = "帐号只能以数字、字母开头或结尾!";
		return num =false;
	}
	a.innerHTML = "输入正确！";
	return num =true;
	
}

var sum = false;
var num = false;

function checkPassword(obj, div) {
	var a = e(div);
	var password = e(obj);
	var reg = new RegExp("^(((?=.*[0-9])(?=.*[a-zA-Z])|(?=.*[0-9])(?=.*[^\s0-9a-zA-Z])|(?=.*[a-zA-Z])(?=.*[^\s0-9a-zA-Z]))[^\s]+)$");
	
	if (password.value == "") {
		a.innerHTML = "用户密码不能为空，请正确输入密码！";
		return sum =false;
	}
	
	if (password.value.length < 6 || password.value.length > 20) {
		a.innerHTML = "密码长度不符!";
		return sum =false;
	}
	
	if (!reg.test(password.value)) {s
		a.innerHTML = "输入错误，秘密必须是数字，字母，符号其中两种以上！";
		return sum =false;
	} 
	
	a.innerHTML = "输入正确！";
	return sum =true;
	
}
function CheckPost(){
	if(sum==true&&num==true){
		alert("恭喜！注册成功！");
		return true;
	}else{
		return false;
	};
}
