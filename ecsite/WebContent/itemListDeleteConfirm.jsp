<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>削除確認画面</title>
<style type="text/css">
/*=====TAG LAYOUT=====*/
body{
margin:0;
padding:0;
line-height:1.6;
letter-spacing:1px;
font-family:Verdana,Helvetica,sans-serif;
font-size:12px;
color:#333;
background:#fff;
}

/*=====ID LAYOUT=====*/
#top{
width:780px;
margin:30px auto;
border:1px solid #333;
}
#header{
width:100%;
heigh:80px;
background-color:black;
}
#main{
width:100%;
height:500px;
text-align:center;
}
#footer{
width:100%;
height:80px;
background-color:black;
clear:both;
}
#button{
margin:10px;}
</style>
<script type="text/javascript">
function submitAction(url){
	$('form').sttr('action',url);
	$('form').submit();
}
</script>
</head>
<body>

<div id="header">
<div id="top">
</div>
</div>

<div id="main">
<div id="top">
<p>削除確認</p>
</div>

<div>
<h3>本当にすべての商品を削除しますか</h3>
<s:form>
<input id="button" type="button" value="はい" onclick="submitAction('ItemListDeleteCompleteAction')"/>
<input id="button" type="button" value="いいえ" onclick="submitAction('ItemListAction')"/>
</s:form>

</div>
</div>

<div id="footer">
<div id="pr">
</div>
</div>

</body>
</html>












