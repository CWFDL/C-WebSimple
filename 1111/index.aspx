<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>首页</title>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <link href="css/lunbo.css" rel="stylesheet"/>
    <script src="js/jq.js"></script>
    <script>
        var i = 0;
        var timer;
        $(function () {
            $(".ig").eq(0).show().siblings().hide();//页面打开之后，第一张图片显示，其余的图隐藏
            beginLunbo();
            $(".tab").hover(function () {
                clearInterval(timer);//清除定时器
                i = $(this).index();//获取到当前鼠标放上去的对象的索引值，并赋值给i
                showPicTab();
            }, function () {
                beginLunbo();
            });

            $(".btn1").click(function () {
                clearInterval(timer);
                i--;
                if (i == -1) {
                    i = 2;
                }
                showPicTab();
                beginLunbo();
            });
            $(".btn2").click(function () {
                clearInterval(timer);
                i++;
                if (i == 3) {
                    i = 0;
                }
                showPicTab();
                beginLunbo();
            });
        });

        function showPicTab() {
            $(".ig").eq(i).fadeIn(300).siblings().fadeOut(300);
            $(".tab").eq(i).addClass("bg").siblings().removeClass("bg");
        }
        function beginLunbo() {
            timer = setInterval(function () {
                i++;//i自增1
                if (i == 3) {
                    i = 0;
                }
                showPicTab();
            }, 4000);
        }
    </script>
    
<style type="text/css">
body,td,th {
	color: #333;
}

    .style1
    {
        width: 207px;
    }

    .style2
    {
        width: 126px;
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
    <td width="159"><h2>京东商城</h2></td>
    <td class="style1" rowspan="2"><a href="index.aspx">&nbsp;<asp:HyperLink 
            ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">登录</asp:HyperLink>
        </a>&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/register.aspx">注册</asp:HyperLink>
            </td>
  </tr>
  <tr>
    <td><h2>欢迎您！</h2></td>
        
  </tr>
  <tr>
    <td colspan="3"><hr /></td>
  </tr>
  
  <tr>
  <td class="val">
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
  <td colspan="2"> 
  <ul>
  <li><a class="active" href="index.aspx">主页</a></li>
  <li><a href="list.aspx">列表信息</a></li>
  <li><a href="search.aspx">搜索</a></li>
  <li><a href="infomation.aspx">全部商品信息</a></li>
</ul>
  </td>
  </tr>
  
  <tr>
  <td colspan="4">
  <div id="dlunbo">
        <div id="igs">
            <div class="ig"><img src="Photo/4.jpg"/></div>
            <div class="ig"><img src="Photo/5.jpg"/></div>
            <div class="ig"><img src="Photo/6.jpg"/></div>
        </div>
        <div id="tabs">
            <div class="tab bg"></div>
            <div class="tab"></div>
            <div class="tab"></div>
        </div>
        <div class="btn btn1">&lt;</div>
        <div class="btn btn2">&gt;</div>
    </div>
  </td>
  </tr>
  
    </form>
</table>

</body>
</html>
