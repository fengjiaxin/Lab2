<%@ page language="java" import="java.sql.*,java.io.*,java.util.*,net.kuangmeng.SQLSearch"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":["qzone","tsina","bdysc","weixin","renren","kaixin001","tieba","douban","bdhome","sqq","ty","fbook","twi","linkedin","copy","print"],"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"1","bdPos":"left","bdTop":"107.5"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
<link rel="Shortcut Icon" href="tubiao.jpg" >
<link rel="Bookmark" href="tubiao.jpg" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-touch-fullscreen" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
<meta name="format-detection" content="telephone=no,email=no"/>
<meta name="author" content="kuangmeng"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍详细信息</title>
<style type="text/css">
body{font:.85em/1.2 "微软雅黑","microsoft yahei",arial;background:#f2f2f2;background:linear-gradient(left,#f2f2f2,#dddddd);background:-moz-linear-gradient(left,#f2f2f2,#dddddd);background:-webkit-linear-gradient(left,#f2f2f2,#dddddd);background:-o-linear-gradient(left,#f2f2f2,#dddddd);}
a:focus{outline:none;}
h3{text-shadow:0 2px #ccc;}
.tc{text-align:center;}
#navs{position:fixed;left:14px;bottom:14px;width:100px;height:100px;line-height:100px;font-size:2.5em;list-style-type:none;margin:0;padding:0;text-align:center;color:#fff;cursor:pointer;}
#navs>li,#navs:after{position:absolute;left:0;top:0;width:100%;height:100%;border-radius:50%;-webkit-border-radius:50%;background-color:#4ECDC4;}
#navs>li{transition:all .6s;-webkit-transition:all .6s;-moz-transition:.6s;}
#navs:after{content:attr(data-close);z-index:1;border-radius:50%;-webkit-border-radius:50%;}
#navs.active:after{content:attr(data-open);}
#navs a{width:100px;height:100px;display:inline-block;border-radius:50%;-webkit-border-radius:50%;text-decoration:none;color:#fff;}   

#customers
{
  font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
  width:60%;
  border-collapse:collapse;
  }
#customers td 
  {
  font-size:1.8em;
  padding:3px 7px 2px 7px;
  color:#00ff00;
  }
a {
text-decoration:none;
}
body {
	background:URL(1634.jpg) no-repeat;
	font-family: "Varela Round", Arial, Helvetica, sans-serif;
	width:1200px;
	margin:50px auto;
    padding:50px auto;
        background-size:100%;
           background-attachment:fixed;
    
}
/* 小火箭css */
#gotop1 {
    width: 80px;
    position: fixed;
    bottom: 90px;
    cursor: pointer;
    z-index: 99998;
    right: 50%;
    margin-right: -620px;
}

/* 小火箭悬停特效 */

#gotop1:hover {
    animation: rubberBand 1s;
}

@keyframes rubberBand {
  from {
    transform: scale3d(1, 1, 1);
  }

  30% {
    transform: scale3d(1.25, 0.75, 1);
  }

  40% {
    transform: scale3d(0.75, 1.25, 1);
  }

  50% {
    transform: scale3d(1.15, 0.85, 1);
  }

  65% {
    transform: scale3d(.95, 1.05, 1);
  }

  75% {
    transform: scale3d(1.05, .95, 1);
  }

  to {
    transform: scale3d(1, 1, 1);
  }
}

/* end 小火箭 */
.clock{
   position:absulote;
   padding-left:350px;

}


</style>
<link href="js/zzsc.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>

</head>
<body>
    <div style="top:0;right:0;position:fixed;"><iframe width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&color=%2300B050&icon=2&py=haerbin&num=5"></iframe></div>
    <div style="background:url(book.png);height:150px;margin-top:150px;"><div class="clock"></div></div>
   <%
      String isbn=request.getParameter("books");
      SQLSearch ss=new SQLSearch();
      ResultSet rs= ss.getResult();
      ResultSet au= ss.getAuthor();
      String[] name=new String[65535];
      int index=1;
      while(au.next()){
        name[index++]=au.getString("AuthorID");
      	name[index++]=au.getString("Name");
      	name[index++]=au.getString("Age");
      	name[index++]=au.getString("Country");
      }
      while(rs.next()){
    	if(rs.getString(1).equals(isbn.trim())){  
   %>
     <table align="center" id ="customers">
		<tr>
			<td>
				<%
					out.print("ISBN");
				%>
			</td>
			<td class="alt">
				<%
					out.print(rs.getString(1));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Title");
				%>
			</td>
			<td class="alt">
				<%
					out.print(rs.getString(2));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Publisher");
				%>
			</td>
			<td class="alt"><a href="/publisher.jsp?publisher=<%=rs.getString("ISBN") %>">
				<%
					out.print(rs.getString(3));
				%></a>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("PublishDate");
				%>
			</td>
			<td class="alt">
				<%
					out.print(rs.getDate(4));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Price");
				%>
			</td>
			<td class="alt">
				<%
					out.print(rs.getFloat(5));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Author");
				    int no=rs.getInt(6); 
				%>
			</td>
			<td class="alt"><a href="/author.jsp?author=<%=no %>">
				<% 
				for(int i=1;i<index;i+=4){
					if(no==Integer.parseInt(name[i])){
						out.print(name[i+1]);
				%></a>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Age");
				%>
			</td>
			<td class="alt">
				<% 
					out.print(name[i+2]);
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Country");
				%>
			</td>
			<td class="alt">
				<% 
					out.print(name[i+3]);
				}
			}
				%>
			</td>
		</tr>
		</table>
		<%
    	}
      }
		%>
<div style="top:0;position:fixed;">
       <h4 style="float:left;margin-left:5px;color:#ffff00">当前用户：<a href="/comment.jsp?username=<%=session.getAttribute("username")%>"><%=session.getAttribute("username")%></a></h4><br>
 </div>
	<ul id="navs" data-open="回退" data-close="导航">
	<li><a href="/Search.jsp">查询</a></li>
	<li><a href="/Add.jsp">添加</a></li>
	<li><a href="http://www.kuangmeng.net">彩蛋</a></li>
	<li><a href="/top.jsp">首页</a></li>
</ul>
   
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
(function(){
	var ul=$("#navs"),li=$("#navs li"),i=li.length,n=i-1,r=240;
	ul.click(function(){
		$(this).toggleClass('active');
		if($(this).hasClass('active')){
			for(var a=0;a<i;a++){
				li.eq(a).css({
					'transition-delay':""+(50*a)+"ms",
					'-webkit-transition-delay':""+(50*a)+"ms",
					'-o-transition-delay':""+(50*a)+"ms",
					'transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px",
					'-webkit-transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px",
					'-o-transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px",
					'-ms-transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px"
				});
			}
		}else{
			li.removeAttr('style');
		}
	});
})($);
</script>
 <!-- 右侧小火箭图标返回顶部 -->
	<div id="shangxia2">
		<span id="gotop1">
			<img src="huojian.svg" alt="返回顶部小火箭">
		</span>
	</div>
	<script src="js/jquery.min.js"></script>
<script src="js/TweenMax.min.js"></script>
<script src="js/ScrollToPlugin.min.js"></script>
<script>

/* 选择你喜欢的速度类型，复制下面的某段代码即可。不明处请咨询：qpjk.cc */

$(function() {

// 默认速度
$("#gotop6").click(function() {
TweenMax.to(window, 1, {scrollTo:0});
 });
// 弹跳球式滚动底部 .box2是要滚动地方的id或者锚点
$("#gotop5").click(function() {
TweenMax.to(window, 2, {scrollTo:".box2", ease:Bounce.easeOut});
 });
// 返回顶部，绑定gotop1图标和gotop2文字事件
$("#gotop1,#gotop2").click(function(e) {
   TweenMax.to(window, 1.5, {scrollTo:0, ease: Expo.easeInOut});
   var huojian = new TimelineLite();
	huojian.to("#gotop1", 1, {rotationY:720, scale:0.6, y:"+=40", ease:  Power4.easeOut})
	.to("#gotop1", 1, {y:-1000, opacity:0, ease:  Power4.easeOut}, 0.6)
	.to("#gotop1", 1, {y:0, rotationY:0, opacity:1, scale:1, ease: Expo.easeOut, clearProps: "all"}, "1.4");
 });
// 以1秒慢快慢的速度滚动顶部
$("#gotop3").click(function() {
TweenMax.to(window, 1, {scrollTo:0, ease:Expo.easeInOut});
 });
// 以1.5秒快慢快的速度滚动顶部
$("#gotop4").click(function() {
TweenMax.to(window, 1.5, {scrollTo:0, ease:SlowMo.ease.config(0.7, 0.7, false)});
 });
});

</script>
<!-- 代码 开始 -->
<div class="go-top dn" id="go-top">
    <a href="javascript:;" class="uc-2vm"></a>
	<div class="uc-2vm-pop dn">
		<h2 class="title-2wm">微信扫一扫</h2>
		<div class="logo-2wm-box">
			<img src="images/weixin.jpg" alt="我的微信" width="240" height="240">
		</div>
	</div>
    <a href="/comment.jsp" target="_blank" class="feedback"></a>
</div>

<script>
$(function(){
	$(window).on('scroll',function(){
		var st = $(document).scrollTop();
		if( st>0 ){
			if( $('#main-container').length != 0  ){
				var w = $(window).width(),mw = $('#main-container').width();
				if( (w-mw)/2 > 70 )
					$('#go-top').css({'left':(w-mw)/2+mw+20});
				else{
					$('#go-top').css({'left':'auto'});
				}
			}
			$('#go-top').fadeIn(function(){
				$(this).removeClass('dn');
			});
		}else{
			$('#go-top').fadeOut(function(){
				$(this).addClass('dn');
			});
		}	
	});
	$('#go-top .go').on('click',function(){
		$('html,body').animate({'scrollTop':0},500);
	});

	$('#go-top .uc-2vm').hover(function(){
		$('#go-top .uc-2vm-pop').removeClass('dn');
	},function(){
		$('#go-top .uc-2vm-pop').addClass('dn');
	});
});
</script>
<!-- 代码 结束 -->	
</body>
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/clock-1.1.0.min.js"></script>
<script>
    var clock = $(".clock").clock({
        width: 100,       // set width
        height: 150,      // set height
        theme: 't3',      // set theme  => 't1' 't2' 't3'
        date: new Date()  // set date => new Date()
    }),
    data = clock.data('clock');
</script>

</html>