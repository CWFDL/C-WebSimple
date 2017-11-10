<%@ Page Language="C#" AutoEventWireup="true" CodeFile="centre.aspx.cs" Inherits="centre" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员中心</title>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body,td,th {
	color: #333;
}

    .style1
    {
        width: 329px;
    }

    .style2
    {
        width: 65px;
    }
    .style3
    {
        width: 22px;
    }

</style>
</head>

<body>
<table width="750" border="0" align="center">
<form id="Form1" action="" method="post" runat="server">
<td width="159">
  <tr>
    <td colspan="5" rowspan="2">
        <img src="Photo/2.png" />
    </td>
    <td class="style3">&nbsp;</td>
    <td width="159">&nbsp;</td>
  </tr>
  <tr>
    <td class="style3">&nbsp;</td>
    <td align="right"><a href="index.aspx"><img src="Photo/3.png" /> </a></td>
        
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
  <tr>
    <td colspan="7">&lt; · 尊 · 贵 · 的 · 会 · 员 · 中 · 心 · &gt;</td>
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
  
  <tr><td>&nbsp;</td></tr>
  
  <tr>
    <td colspan="2"><asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/modification.aspx">会员账号修改页</asp:HyperLink></td>
    <td class="style2">&nbsp;</td>
    <td colspan="2"><asp:HyperLink ID="HyperLink2" runat="server">后台产品列表管理页</asp:HyperLink></td>
    <td colspan="2"><asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/release.aspx">产品发布页</asp:HyperLink></td> 
  </tr>
  
  <tr><td>&nbsp;</td></tr>
  
  <tr>
    <td colspan="2"><asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/alter.aspx">产品修改页</asp:HyperLink></td>
    <td class="style2">&nbsp;</td>
    <td colspan="2"><asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/delete.aspx">产品删除页</asp:HyperLink></td>
    <td colspan="2"><asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/register.aspx">注册</asp:HyperLink></td>
  </tr>
  
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"></td>
  </tr>
  <tr>
    <td colspan="7"><hr /></td>
  </tr>
 
  <tr>
    <td align="center" class="foot">&nbsp;</td>
    <td align="center" class="foot">&nbsp;</td>
    <td align="center" class="style2">&nbsp;</td>
    <td align="center" class="foot">&nbsp;</td>
    <td align="center" class="style1">&nbsp;</td>
    <td class="style3" align="center">&nbsp;</td>
    <td class="foot" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td class="foot" colspan="7" align="center">15电子商务3班 郭嘉贤 2017-10-11&nbsp;  版权所有</td>
  </tr>
</form>
</table>



</body>
</html>
