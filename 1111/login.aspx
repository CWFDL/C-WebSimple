<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员登录</title>
    <link href="css/button.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body,td,th {
	color: #333;
}

</style>
</head>

<body>
<table width="750" border="0" align="center">
    <form id="form1" runat="server">
<td width="159">
  <tr>
    <td colspan="5" rowspan="2">
        <img src="Photo/2.png" />
    </td>
    <td width="159">&nbsp;</td>
    <td width="159">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="right"><a href="index.aspx"><img src="Photo/3.png" /> </a></td>
        
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
  <tr>
    <td colspan="7">&lt; · 尊 · 贵 · 的 · 会 · 员 · 登 · 录 · &gt;</td>
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
  <tr>
    <td width="159" colspan="7"></td>
  </tr>
  <tr>
    <td colspan="7" rowspan="2">会员账号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">会员密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
 
  <tr>
    <td class="foot" colspan="7" align="center"> <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="登陆会员管理页面" /></td>
  </tr>
  <tr>
    <td align="center" class="foot">&nbsp;</td>
    <td align="center" class="foot">&nbsp;</td>
    <td align="center" class="foot">&nbsp;</td>
    <td align="center" class="foot">&nbsp;</td>
    <td align="center" class="foot">&nbsp;</td>
    <td class="foot" align="center">&nbsp;</td>
    <td class="foot" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td class="foot" colspan="7" align="center">WFD&nbsp;  版权所有</td>
  </tr>
    </form>
</table>



</body>
</html>
