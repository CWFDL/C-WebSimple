<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modification.aspx.cs" Inherits="modification" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员账号修改</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/button.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body,td,th {
	color: #333;
}

    .style3
    {
        width: 268435424px;
    }

    .style4
    {
        width: 268435520px;
    }

</style>
</head>

<body>
<table width="750" border="0" align="center">
    <form id="Form1" runat="server">
<td width="159">
  <tr>
    <td colspan="5" rowspan="2" class="style4">
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
  
  <tr><td colspan="7"><hr /></td></tr>
  
  <tr><td colspan="7">&nbsp;</td></tr>
  
  <tr>
  <td colspan="2" class="style5"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="centre.aspx">会员中心</asp:HyperLink></td>
  <td colspan="5" rowspan="2"><h2>会员账号修改</h2></td>
  </tr>
  
  <tr>
  <td colspan="2">&nbsp;</td>
  </tr>
  
  <tr>
  <td colspan="2" class="style5"><asp:HyperLink ID="HyperLink2" runat="server" 
          NavigateUrl="~/modification.aspx">会员账号修改</asp:HyperLink></td>
  <td colspan="5">&nbsp;</td>
  </tr>
  
  <tr>
  <td>&nbsp;</td>
  <td colspan="6">
      <asp:Label ID="Label1" runat="server" Text="账号："></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:DropDownList ID="DropDownList1" runat="server" 
          DataSourceID="AccessDataSource1" DataTextField="username" 
          DataValueField="username" style="height: 22px; margin-left: 0px;" 
          Height="24px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
          Width="111px">
      </asp:DropDownList>
      <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
          DataFile="~/db/shoppingonlinec2015110250.mdb" 
          SelectCommand="SELECT [ID] FROM [admin]"></asp:AccessDataSource>
      <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
          DataFile="~/db/shoppingonlinec2015110250.mdb" 
          SelectCommand="SELECT [username] FROM [admin]"></asp:AccessDataSource>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td></tr>
  
  <tr>
  <td colspan="5"><asp:HyperLink ID="HyperLink3" runat="server" 
          NavigateUrl="~/release.aspx">产品列表管理</asp:HyperLink></td>
  <td colspan="2">
      &nbsp;</td>
  </tr>
  
  <tr>
  <td></td>
  <td colspan="6">
      <asp:Label ID="Label2" runat="server" Text="旧密码："></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      &nbsp;&nbsp;&nbsp; </td></tr>
  
  <tr>
  <td colspan="2" class="style5"><asp:HyperLink ID="HyperLink4" runat="server" 
          NavigateUrl="~/release.aspx">产品发布</asp:HyperLink></td>
  <td colspan="5">
      &nbsp;</td>
  </tr>
  
  <tr>
  <td></td>
  <td colspan="6">
      <asp:Label ID="Label3" runat="server" Text="新密码："></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
      &nbsp;&nbsp;&nbsp; </td></tr>
  
  <tr>
  <td colspan="2" class="style5"><asp:HyperLink ID="HyperLink5" runat="server" 
          NavigateUrl="~/alter.aspx">产品修改</asp:HyperLink></td>
  <td colspan="5">
      &nbsp;</td>
  </tr>
  
  <tr><td colspan="7">&nbsp;</td></tr>
  
  <tr>
  <td colspan="2" class="style5"><asp:HyperLink ID="HyperLink6" runat="server" 
          NavigateUrl="~/delete.aspx">产品删除</asp:HyperLink></td>
    <td class="foot" colspan="7" align="center"> 
        <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
      </td>
  </tr>
  
  <tr><td colspan="7">&nbsp;</td></tr>
  <tr><td colspan="7"><hr /></td></tr>
  <tr><td colspan="7">&nbsp;</td></tr>
  
  <tr>
    <td class="foot" colspan="7" align="center">WFD&nbsp;  版权所有</td>
  </tr>
  
  <tr><td colspan="7">&nbsp;</td></tr>
    </form>
  </table>
</body>
</html>
