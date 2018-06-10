
var getByClass = function (className) {
  return document.getElementsByClassName(className);
};
var addClass = function (element , _className) {

  var className = element.className.split(' ');
  var classNameMap = {};

  for(var i=0;i<className.length;i++){
    classNameMap[ className[i]] = 1;
  }
  classNameMap[_className] = 1;

  className = [];
  for(i in classNameMap){
    className.push(i);
  }
  element.className = className.join(' ');

};

window.onscroll = function () {

  var top  = document.body.scrollTop;
  if( top < 100 ){
    getByClass('header')[0].setAttribute('class','header header_active_1');

  }else{
    addClass( getByClass('header')[0] , 'header_status_black' ) ;
  }

};
function dianjishijian(){
	
	if(document.getElementById("photo1").value==""||document.getElementById("photo1").value==null){
		alert("请先登录");
		return false;
	}else{
		return true;
	};	
};
function yanzhengdenglu(){

	if(document.getElementById("photo1").value!=""){
		document.getElementById("xxx").innerHTML="欢迎登录！当前用户:"+document.getElementById("photo1").value;
	}
}