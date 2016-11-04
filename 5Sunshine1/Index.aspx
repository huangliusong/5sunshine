<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>❤我享晒 5Sunshine❤</title>
    <link rel="Shortcut Icon" href="images/logoaa.png">
    <link href="Styles/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style=" background-color:#F4F4F4; height :30px; width:100%; font-family: 微软雅黑;" >
    <div class="fl" style=" margin-top:6px; margin-left:10px;">❤5Sunshine--一个设计交流的平台❤</div>
    
    <table class="fr"><tr><td><div style=" margin-top:6px; ">NowDate:<%= DateTime.Now.Date.ToShortDateString()%> <%= DateTime.Now.DayOfWeek%></div></td>
    <td><div class="ziti" style=" margin-left:10px; border-right:1px solid black; " ><a href="#" >登录&nbsp; </a></div></td>
    <td><div class="ziti" style=" margin-right:20px;">&nbsp;&nbsp; <a href="#" >注册</a></div></td></tr></table>
    </div>
   <!--搜索 -->
    <div id="header">
    <div  style=" width:100%; height:30px;">
        <div style="height:60px; background-image:url(images/subbg1.png)"></div>
    <div  style="height:100px; clear:both;margin-left:30%; margin-top:3%;">
    
        请输入关键字：<asp:TextBox 
            ID="Txt_sousuo" runat="server" 
            Height="25px" Width="300px" Text="例如 优秀作品" BorderColor="Silver" 
            BackColor="#FFFFFD"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/sousuo03.png" ImageAlign="AbsBottom"/>
            </div>
            </div>
    </div>
    <!--导航 -->
    <div  style=" height:50px;padding:0px; margin-bottom:5px; background-image:url(images/bannerq.png);">
    <table style=" margin-left:8%"><tr>
    <td ><img alt="" src="images/logoa.png" /></td>
    <td><div class="banner">
    <ul>
        <li><div style=" height :40px;background-color:White; padding-top:10px"><a style=" color:Blue; padding-left:10px;padding-right:10px;">首页</a></div></li>
        <li><div style=" height :45px;padding-top:10px"><a href="subyc.aspx">晒艺潮</a></div></li>
        <li><div style=" height :45px;padding-top:10px"><a href="sub_fx.aspx">晒分享</a></div></li>
        <li><div style=" height :45px;padding-top:10px"><a href="sub_zixun.aspx">校园资讯</a></div></li>
        <li><div style=" height :45px;padding-top:10px"><a href="sub_liuyan.aspx">晒留言</a></div></li>
        <li><div style=" height :45px;padding-top:10px"><a href="sub_about.aspx">关于我们</a></div></li>
        </ul>
     </div></td>
    </tr></table>
    </div>
      <!--图片区-->
      <div>
    <div style=" width:100%; height :300px;  margin-left:8%;">
    <img alt="" src="images/banner2.jpg"/>
        </div>
        </div>
        <!-- 主内容-->
        <div style="width:100%;">
        <div align="center" style="margin-left:8%;">
        <div class="fl"   style=" width:auto;">
         <!--左边-->
    <div class="fl" style="width:300px; height:auto; margin-top:20px; ">
    <table style=" border:1px solid #E6E6E6; padding-left:10px;" >
    <tr><td><table style=" height:auto; width:auto;" ><tr><td><div>
    <div style="border-bottom:1px solid #E6E6E6; height:20px; margin-top:20px;">
    <div class="fl" style=" font-size:18px; margin-bottom:20px; color:Red">站内公告</div>
    <div class="fr" style=" height:20px;">
        <asp:ImageButton ID="ImageButton2" runat="server" 
            src="images/more1.gif" ImageAlign="Bottom"/></div></div>
        <div style=" clear:both;">
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" Width="255px" CellSpacing="1">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <ItemStyle ForeColor="Black" BackColor="#DEDFDE" />
            <ItemTemplate>
            <br />
                <div>No<asp:Label ID="ggidLabel" runat="server" Text='<%# Eval("ggid") %>' /></div>
                <div class="ziti" >标题:
                <a href="#"><%# Eval("标题") %></a></div>
                <div style=" clear:both">时间:
                <asp:Label ID="Label" runat="server" Text='<%# Eval("时间")%>' /></div>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sunshineConnectionString6 %>" 
            SelectCommand="SELECT top 5 * FROM [shine_gonggao] ORDER BY [时间] DESC"></asp:SqlDataSource>
            </div>
    </div>
    </td></tr></table></td></tr>
    <tr><td><table><tr><td><div>
    <div style="margin-top:10px;border-bottom:1px solid #E6E6E6; height:20px; ">
    <div class="fl" style="  font-size:18px;color:Red;margin-bottom:10px;">下载排行</div>
    <div align="right" style=" height:20px;">
        <asp:ImageButton ID="ImageButton3" runat="server" 
            src="images/more1.gif" ImageAlign="Bottom"/></div></div>
        <div style=" clear:both;">
        
            <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <ItemStyle ForeColor="Black" BackColor="#DEDFDE" />
                <ItemTemplate>
                <table><tr>
                <td  rowspan="5"><a href="#"><img alt=""  src="images/zuopin/<%# Eval("image") %>" style="width: 80px;"/></a></td>
                </tr>
                
                <tr><td ><div class="ziti"><a href="#"><%# Eval("topic")%></a></div></td></tr>
                <tr><td>说明：<%# Eval("shuoming") %></td></tr>
                <tr><td>上传者：<%# Eval("author") %></td></tr>
                <tr><td colspan="2">下载量：<%# Eval("download") %>|类型：<%# Eval("style") %></td><br /></tr>
                </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:sunshineConnectionString7 %>" 
                SelectCommand="SELECT top 6 * FROM [xiazai] ORDER BY [download] DESC, [phid]">
            </asp:SqlDataSource>

        </div>

    </div></td></tr></table></td></tr>
    <tr><td><table><tr><td><div>
    <div style=" margin-top:10px; border-bottom:1px solid #E6E6E6; height:20px; ">
    <div class="fl" style=" font-size:18px; margin-bottom:10px;color:Red">校园资讯</div>
    <div align="right" style=" height:20px;">
        <asp:ImageButton ID="ImageButton4" runat="server" 
            src="images/more1.gif" ImageAlign="Bottom"/></div></div>
        <div style=" clear:both;">
            <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1">
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                <ItemTemplate>
                <div class="ziti" style=" margin-top:10px;"><a href="#"><%# Eval("title") %></a></div>
                <div><br />作者:<%# Eval("author") %>|时间：<%# Eval("time") %></div>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:sunshineConnectionString8 %>" 
                SelectCommand="SELECT top 5 [author], [time], [title], [zxid]  FROM [zixun] ORDER BY [time] DESC, [author] ">
            </asp:SqlDataSource>
        </div>


    </div></td></tr></table></td></tr>
    </table>
    </div>
        
        <!--左边结束右边开始-->
        
        <div style =" width:auto; height:auto">
        
            <asp:DataList ID="DataList1" runat="server" 
                CellSpacing="20" Height="1000px"  OnItemCommand="DataList1_ItemCommand" 
                OnItemDataBound="DataList1_ItemDataBound">
             
                <FooterTemplate>
                <div class="ziti2" align="center" style="">
                 <asp:Label ID="onqian" runat="server" Text=""></asp:Label>
                /<asp:Label ID="oncount" runat="server" Text=""></asp:Label>
                <asp:LinkButton ID="shouye" runat="server" CommandName="first">首页</asp:LinkButton>
                <asp:LinkButton ID="uppage" runat="server" CommandName="pre">上一页</asp:LinkButton>
                <asp:LinkButton ID="downpage" runat="server" CommandName="next">下一页</asp:LinkButton>
                <asp:LinkButton ID="weiye" runat="server" CommandName="last">尾页</asp:LinkButton>
                跳转至 <asp:TextBox ID="TextBox1" runat="server" Width="30px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="GO" CommandName="search" />
                </div>
                </FooterTemplate>

                <HeaderTemplate>
                    <div align="center" style=" font-size:18px; color:Black; border-bottom:1px solid #E6E6E6; margin-top:20px; margin-bottom:20px;">最新动态</div>
                </HeaderTemplate>
             
                <ItemTemplate>
                <table class="table1"  style=" margin-left:20px; margin-right:20px;">
                <tr>
                <td rowspan="4">
                <img alt=""  src="images/<%# Eval("image") %>" style="width: 200px; height: 150px; margin-right:20px;"/></td>
                <td colspan="3" style="border-bottom:1px solid #E6E6E6;" ><div class="ziti1"><a  href="#" style=" font-size:24px;"><%# Eval("topic") %></a></div></td>
                </tr>
                <tr><td  colspan="3"  style=" height:auto; width:550px"><br /><%# Eval("neirong").ToString().Length > 100 ? Eval("neirong").ToString().Substring(0, 100) + "..." : Eval("neirong")%></td></tr>
                <tr><td>
                    <img alt="" src="images/ren.png" /><%# Eval("writer") %></td>
                    <td>
                        <img alt="" src="images/time.png" /><%# Eval("time") %></td>
                        <td><img alt="" src="images/like.png" style=" width:25px; height:25px;" /><%# Eval("zancount") %></td>
                </tr>
               <tr style=" border-bottom:1px solid #E6E6E6;"><td colspan="3">分享到：<img alt="" src="images/weibo.png" /><img alt="" src="images/weixin.png" /><img alt="" src="images/qq.png" /></tr>
               <tr><td colspan="4"><hr /></td></tr>
                </table>
                <div>
                
                </div>
                   
                </ItemTemplate>
                <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:sunshineConnectionString5 %>" 
                SelectCommand="SELECT * FROM [new] ORDER BY [time] DESC, [zancount]" 
                ProviderName="System.Data.SqlClient">
            </asp:SqlDataSource>
            </div>
            <div><br /></div>
            </div>
    </div> 
    
    <!--中部-->
    <div style=" width:100%; margin-left:6%; clear:both;">
    <div>
    <div style=" margin-top:50px; margin-bottom:20px;color:Black; font-size:18px;border-bottom:1px solid #E6E6E6; clear:both;">
                    <img alt="" src="images/sanjiao.png" />优秀作品</div>
    <div class="ziti2">
    <asp:HyperLink ID="HyperLink1" runat="server" Target="yxfr_name" NavigateUrl="~/xzd.aspx">宣传单|</asp:HyperLink>
    <asp:HyperLink ID="HyperLink2" runat="server" Target="yxfr_name" NavigateUrl="~/hb.aspx">海报|</asp:HyperLink>
    <asp:HyperLink ID="HyperLink3" runat="server" Target="yxfr_name" NavigateUrl="~/mp.aspx">名片|</asp:HyperLink>
    <asp:HyperLink ID="HyperLink4" runat="server" Target="yxfr_name" NavigateUrl="~/hq.aspx">会旗|</asp:HyperLink>
    <asp:HyperLink ID="HyperLink5" runat="server" Target="yxfr_name" NavigateUrl="~/xz.aspx">写真|</asp:HyperLink>
    <asp:HyperLink ID="HyperLink6" runat="server" Target="yxfr_name" NavigateUrl="~/hp.aspx">会牌|</asp:HyperLink>
    <asp:HyperLink ID="HyperLink7" runat="server" Target="yxfr_name" NavigateUrl="~/zj.aspx">展架|</asp:HyperLink>
    <asp:HyperLink ID="HyperLink8" runat="server" Target="yxfr_name" NavigateUrl="~/qt.aspx">其他</asp:HyperLink>
    </div>
    <iframe id="yxzp" name="yxfr_name" style=" width:100%; height:500px; border:0px 0px 0px 0px"></iframe>
    </div>
     


   
    
    <!-- 合作伙伴-->
    <div style=" font-size:16px; clear:both; padding-top:30px;">
        <img src="images/sanjiao.png" />合作伙伴</div>
    <div style=" width:100%; height:200px;">
    <marquee behavior="scroll" scrollamount="5" scorlldelay="0" diretion="center" onmouseover="stop();" onmouseout="start();">
    <img src="images/images/电子商务协会.jpg" />
    <img src="images/images/图片1_01.png" /> 
    <img src="images/images/艺潮设计工作室.png" />
    <img src="images/images/图片1_03.png" />
    <img src="images/images/投资理财协会.png" />
    <img src="images/images/青竹汉服社.png" />
    <img src="images/images/图片1_05.png" />
    <img src="images/images/图片1_07.png" />
    <img src="images/images/图片1_15.png" />
    <img src="images/images/图片1_12.png" />
    <img src="images/images/图片1_20.png" />
    <img src="images/images/图片1_21.png" />
    <img src="images/images/图片1_22.png" />
    <img src="images/images/图片1_23.png" />
    <img src="images/images/3logo.png" /><img src="images/images/图片1_14.jpg" />
    </marquee></div>

    <!--友情链接-->
    <div style=" font-size:16px; clear:both;"><img src="images/sanjiao.png" />友情链接</div>
    <div  style=" margin-top:10px; margin-bottom:50px;"><table cellpadding="20px">
    <tr><td><div class="ziti2"><a href="#">广西外国语学院 |</a></div></td>
    <td><div class="ziti2">&nbsp; <a href="#">广外院信息工程学院|</a></div></td>
    <td><div class="ziti2">&nbsp; <a href="#">我爱自学网|</a></div></td>
    <td><div class="ziti2">&nbsp; <a href="#">天涯社区|</a></div></td>
    <td><div class="ziti2">&nbsp; <a href="#">昵图网|</a></div></td>
    <td><div class="ziti2">&nbsp; <a href="#">百度一下你就知道</a></div></td>
    </tr></table></div>
    </div>
    </div>
    <!-- 底部 -->
    <div id="footer">
    <div style="width:100%; height:100%; clear:both; border-top:1px solid #E6E6E6;">
    <div align="center" style=" margin-top:20px; font-size:14px">我享晒 5sunshine</div>
    <div align="center" style=" margin-top:10px;font-size:14px">分享作品 晒出风采 收获你我他</div>
    <div align="center" style=" margin-top:10px;font-size:14px">了解5sunshine|5sunshine资讯|帮助中心|加入我们|咨询热线</div>
    <div align="center" style=" margin-top:10px; margin-bottom:20px;font-size:14px">广西ICP证070598号网站备案号 广西公网安备公网安备 11010502023255 
    Copyright © 2016,CSTO.COM, csdnstore.com All right
    <div align="center" style=" margin-top:10px;font-size:14px">版权归广西外国语学院sunshine团队所有 如有雷同 纯属巧合</div>
    </div>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
