function shiji(){
	var shiji= new Date();
	var nian=shiji.getFullYear();
	var yue=shiji.getMonth();//返回值0-11之间
	var tian=shiji.getDate();
	var xingqi=shiji.getDay();//返回值0-6之间
	var shi=shiji.getHours();
	var fen=shiji.getMinutes();
	var miao= shiji.getSeconds();
	var wu;
	var shi1;
	 	if(shi>12){
			wu="下午好！";
			shi1=shi-12;
			}else{
				wu="早上好！";
				shi1=shi;
				}
	
	var xingqi1;
		switch(xingqi){
			case xingqi=1:xingqi1="星期一";
			break;
			case xingqi=2:xingqi1="星期二";
			break;
			case xingqi=3:xingqi1="星期三";
			break;
			case xingqi=4:xingqi1="星期四";
			break;
			case xingqi=5:xingqi1="星期五";
			break;
			case xingqi=6:xingqi1="星期六";
			break;
			case xingqi=0:xingqi1="星期日";
			break;
		}

	document.getElementById("shiji").innerHTML=nian+"年"+(yue+1)+"月"+tian+"日"+shi1+":"+fen+":"+miao+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+xingqi1+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+wu;
	}
	
		setInterval("shiji()",1000);
