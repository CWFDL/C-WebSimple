<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>产品列表</title>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body,td,th {
	color: #333;
}

    .style1
    {
        float:inherit;
    }

    .style2
    {
    }

    .style5
    {
        width: 145px;
    }

</style>
</head>

<body>
<table width="750" border="0" align="center">
    <form id="Form1" runat="server">
<td class="style5">
  <tr>
    <td class="style2" colspan="2">
        <img src="Photo/2.png" />
    </td>
    <td class="style1" colspan="3"><a href="index.aspx">&nbsp;<asp:HyperLink 
            ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">登录</asp:HyperLink>
        </a>&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/register.aspx">注册</asp:HyperLink>
            </td>
  </tr>
  <tr>
    <td colspan="5"><hr /></td>
  </tr>
  
  <tr>
  <td colspan="5"> 
  <ul>
  <li><a class="active" href="index.aspx">主页</a></li>
  <li><a href="list.aspx">列表信息</a></li>
  <li><a href="search.aspx">搜索</a></li>
  <li><a href="infomation.aspx">全部商品信息</a></li>
</ul>
  </td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink3" runat="server">上衣</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink4" runat="server">下衣</asp:HyperLink></td> 
  <td class="style5"><asp:HyperLink ID="HyperLink5" runat="server">内衣</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink6" runat="server">外套</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink7" runat="server">马甲</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink8" runat="server">赛车</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink9" runat="server">积木</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink10" runat="server">拼图</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink11" runat="server">玩偶</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink12" runat="server">魔方</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink13" runat="server">项链</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink14" runat="server">手镯</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink15" runat="server">玉坠</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink16" runat="server">耳环</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink17" runat="server">手链</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink18" runat="server">球拍</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink19" runat="server">球类</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink20" runat="server">护手</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink21" runat="server">护膝</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink22" runat="server">跑鞋</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink23" runat="server">香蕉</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink24" runat="server">瓜类</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink25" runat="server">橘子</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink26" runat="server">坚果</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink27" runat="server">果子</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink28" runat="server">龙虾</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink29" runat="server">螃蟹</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink30" runat="server">生蚝</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink31" runat="server">鱼类</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink32" runat="server">海螺</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink33" runat="server">青菜</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink34" runat="server">西红柿</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink35" runat="server">马铃薯</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink36" runat="server">番薯</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink37" runat="server">蒜头</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink38" runat="server">猪肉</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink39" runat="server">鸡肉</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink40" runat="server">牛肉</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink41" runat="server">鸭肉</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink42" runat="server">鹅肉</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink43" runat="server">电脑</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink44" runat="server">交换机</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink45" runat="server">路由器</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink46" runat="server">网线</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink47" runat="server">硬盘</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
  <td class="style5"><asp:HyperLink ID="HyperLink48" runat="server">教科书</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink49" runat="server">练习册</asp:HyperLink></td>
  <td class="style5"><asp:HyperLink ID="HyperLink50" runat="server">小说</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink51" runat="server">传记</asp:HyperLink></td>
  <td><asp:HyperLink ID="HyperLink52" runat="server">其它</asp:HyperLink></td>
  </tr>
  
  <tr><td class="style5">&nbsp;</td></tr>
  
  <tr>
    <td colspan="5"><hr /></td>
  </tr>
  
  <tr>
    <td class="foot" colspan="5" align="center">15电子商务3班 郭嘉贤 2017-10-10&nbsp;  版权所有</td>
  </tr>
  
  </form>
  </table>
</body>
</html>
