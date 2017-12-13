﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>搜索</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/lunbo.css" rel="stylesheet" type="text/css" />
    <script src="js/bofangtp.js" type="text/javascript"></script>
    <script src="js/jq.js" type="text/javascript"></script>
<style type="text/css">
body,td,th {
	color: #333;
}

    .style1
    {
    }

    .style2
    {
        width: 207px;
    }

    .style4
    {
        color: #FFF;
        font-weight: bold;
        font-size: 18px;
        background-color: #333;
        width: 207px;
    }

</style>
</head>

<body>
<table width="750" border="0" align="center">
    <form id="Form1" runat="server">
<td class="style2">
  <tr>
    <td rowspan="2" class="style2">
        <img src="Photo/2.png" />
    </td>
    <td width="159">&nbsp;</td>
    <td class="style1" rowspan="2" colspan="2"><a href="index.aspx">&nbsp;<asp:HyperLink 
            ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">登录</asp:HyperLink>
        </a>&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/register.aspx">注册</asp:HyperLink>
            </td>
  </tr>
  
  <tr><td>&nbsp;</td></tr>
  
  
  <tr>
    <td colspan="3"></td>
     <td></td>
  </tr>
  
  <tr>
  <td class="style4">
  <div class="dropdown">
  <button class="dropbtn">全部商品分类</button>
  <div class="dropdown-content">
    <a href="">衣服</a>
    <a href="">玩具</a>
    <a href="">珠宝</a>
    <a href="">运动</a>
    <a href="">水果</a>
    <!--<a href="">海鲜</a>
    <a href="">蔬菜</a>
    <a href="">肉禽</a>
    <a href="">电器</a>
    <a href="">书籍</a>-->
    <a href="list.aspx">更多...</a>
    
  </div>
</div>
  </td>
  <td colspan="3"> 
  <ul>
  <li><a class="active" href="index.aspx">主页</a></li>
  <li><a href="list.aspx">列表信息</a></li>
  <li><a href="search.aspx">搜索</a></li>
  <li><a href="infomation.aspx">全部商品信息</a></li>
</ul>
  </td>
  </tr>
  
 <tr><td colspan='4'><hr /></td></tr>
 <tr><td colspan='4'>&nbsp;</td></tr>
  
  <tr>
    <td colspan='4' align=center>搜索：<asp:TextBox ID="TextBox1" runat="server" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="搜索产品" 
            onclick="Button1_Click" />
      </td>
  </tr>
  
  <tr><td colspan='4'>&nbsp;</td></tr>
  <tr>
  <td class="style2">
      <asp:Label ID="Label1" runat="server" Text="物品名称"></asp:Label>
      </td>
  <td>分类</td>
  <td>价格</td>
  <td>描述</td>
  
  <tr><td colspan='4'>&nbsp;</td></tr>
  
  <tr><td colspan='4'>
      <asp:GridView ID="GridView1" runat="server" Width="743px">
      </asp:GridView>
      </td></tr>
  
  </tr>
  
  <tr><td colspan='4'>&nbsp;</td></tr>
  
   <tr><td colspan='4'><hr /></td></tr>
  
  <tr>
    <td class="foot" colspan="4" align="center">WFD&nbsp;  版权所有</td>
  </tr>
  
    </form>
</table>
</body>
</html>
