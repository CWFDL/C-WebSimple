<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员注册</title>
    <link href="css/button.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body,td,th {
	color: #333;
}

</style>
</head>

<body>
<table width="750" border="0" align="center">
    <form id="Form1" runat="server">
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
    <td colspan="7">&lt; · 尊 · 贵 · 的 · 会 · 员 · 注 · 册 · &gt;</td>
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
  <tr>
    <td width="159" colspan="7"></td>
  </tr>
  <tr>
    <td colspan="7" rowspan="2">会员账号：&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">会员密码：&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
 
  <tr>
    <td class="foot" colspan="7" align="center"><asp:Button ID="Button1" runat="server" Text="确定注册" onclick="Button1_Click" /> </td>
            
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
    <td class="foot" colspan="7" align="center">15电子商务3班 郭嘉贤 2017-10-11&nbsp;  版权所有</td>
  </tr>
    </form>
</table>



</body>
</html>
