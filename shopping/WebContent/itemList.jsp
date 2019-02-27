<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="shooping.ItemBean"%>

<%--商品一覧画面 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>shopping 商品一覧画面</title>
</head>
<body>
<%--リクエストスコープからBeanクラスの配列を獲得 --%>
<%@ ArrayList<ItemBean> itemList=(ArrayList<ItemBean>) request.getAttribute("itemList");%>

<form action="./BuyItemServlet">
<table class="shopping_table">
<tbody>
<tr>
<th>商品ID</th>
<th>商品名</th>
<th>価格</th>
<th>在庫数</th>
<th>数量</th>
</tr>

<%--Beanの要素数分（商品の種類分）テーブルを作成 --%>
<% for(ItemBean bean:itemList){%>
<tr>
<%-- 商品ID --%>
<td><%= bean.getItemId()%></td>
<%--商品名 --%>
<td><%= bean.getItemName()%></td>
<%--価格 --%>
<td class="int"><%= bean.getPrice()%></td>
<%--数量（在庫） --%>
<td class="int"><%= bean.getQuantity()%></td>

<%--TODO:2-2 在庫が0の場合はリストボックスと購入ボタンを表示しない処理を入れる --%>
<% if(bean.getQuantity() !=0) {%>
<td>
<select class="list" name="<%= bean.getItemId()%>list">
<% for(int i=0; i<=bean.getQuantity(); i++) {%>
<option value="<%= i%>"><%= i%></option>
<% }%>
</select>
</td>

<td class="button">
<input class="common_button" type="submit" value="購入" name="<%= bean.getItemID()%>">
</td>
<% }else{ %>
<td class="button">売り切れ</td>
<% } %>

</tbody>

</table>

<a class="common_button" href="./">戻る</a>

</form>
</body>
</html>


















