<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true"
    CodeFile="index1.aspx.cs" Inherits="index1" %>

<%@ Register Src="headImage.ascx" TagName="headImage" TagPrefix="uc1" %>
<%@ Register Src="sucai.ascx" TagName="sucai" TagPrefix="uc2" %>
<%@ Register src="daohangtu.ascx" tagname="daohangtu" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--导航 -->
    <div style="height: 50px; padding: 0px; margin-bottom: 5px; width: 1500px;">
        <div style="margin-left: 100px; -moz-box-shadow: -3px 1px 12px #D6DB3B; -moz-box-shadow: 0px 2px 8px #666666;
            -webkit-box-shadow: 0px 2px 8px #666666; box-shadow: 0px 2px 8px #666666;">
            <div class="banner">
                <ul>
                    <li>
                        <img alt="" src="images/logoa.png" /></li>
                    <li>
                        <div style="height: 45px; padding-top: 10px; background-color: White;">
                            <a style="color: Blue; padding-left: 10px; padding-right: 10px;">首页</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sucaiDetail.aspx">享设计</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="subyc.aspx">晒艺潮</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_zixun.aspx">师兄支招</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_about.aspx">关于我们</a></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--图片区-->
    <div style="margin-left: auto; margin-right: auto; background-color: #EAEAEA;">
        
        <uc3:daohangtu ID="daohangtu1" runat="server" />
        
    </div>
    <div style="clear: both;">
      
    </div>
    <!--中部-->
    <div style="width: 1150px; height: 2500px; margin-left: auto; margin-right: auto;
        margin-top: 20px;">
        <div class="fl" style="width: 300px; height: 2420px; margin-top: 20px; -moz-box-shadow: 0px 3px 6px #666666;
            -webkit-box-shadow: 0px 3px 6px #666666; box-shadow: 0px 3px 6px #666666;">
            <!--左边-->
            <div class="fl" style="width: 300px; height: auto; margin-top: 20px;">
                <div style="border: 1px solid #E6E6E6; padding-left: 10px;">
                    <div style="height: auto; width: auto;">
                        <div>
                            <div style="border-bottom: 1px solid #E6E6E6; height: 20px; margin-top: 20px;">
                                <div class="fl" style="font-size: 18px; margin-bottom: 20px; color: Red">
                                    站内公告</div>
                                <div class="fr" style="height: 20px;">
                                    <asp:ImageButton ID="ImageButton2" runat="server" src="images/more1.gif" ImageAlign="Bottom" /></div>
                            </div>
                            <div style="clear: both;">
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Width="255px">
                                    <ItemTemplate>
                                        <br />
                                        <div>
                                            No<asp:Label ID="ggidLabel" runat="server" Text='<%# Eval("ggid") %>' /></div>
                                        <div class="ziti">
                                            标题: <a href="#">
                                                <%# Eval("标题") %></a></div>
                                        <div style="clear: both">
                                            时间:
                                            <asp:Label ID="Label" runat="server" Text='<%# Eval("时间")%>' /></div>
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sunshineConnectionString6 %>"
                                    SelectCommand="SELECT top 5 * FROM [shine_gonggao] ORDER BY [时间] DESC"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 10px; border-bottom: 1px solid #E6E6E6; height: 20px;">
                                <div class="fl" style="font-size: 18px; color: Red; margin-bottom: 10px;">
                                    下载排行</div>
                                <div align="right" style="height: 20px;">
                                    <asp:ImageButton ID="ImageButton3" runat="server" src="images/more1.gif" ImageAlign="Bottom" /></div>
                            </div>
                            <div style="clear: both;">
                                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                        <div>
                                            <div class="fl" style="height: auto; margin-bottom: 20px;">
                                                <a href="#">
                                                    <img alt="" src="images/zuopin/<%# Eval("image") %>" style="width: 80px;" /></a>
                                            </div>
                                            <div class="fl">
                                                <div class="ziti">
                                                    <a href="#">
                                                        <%# Eval("topic")%></a></div>
                                                <div>
                                                    说明：<%# Eval("shuoming") %></div>
                                                <div>
                                                    上传者：<%# Eval("author") %></div>
                                                <div style="margin-bottom: 20px;">
                                                    下载量：<%# Eval("download") %>|类型：<%# Eval("style") %><br /></div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sunshineConnectionString7 %>"
                                    SelectCommand="SELECT top 6 * FROM [xiazai] ORDER BY [download] DESC, [phid]">
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div>
                            <div style="margin-top: 10px; border-bottom: 1px solid #E6E6E6; height: 20px;">
                                <div class="fl" style="font-size: 18px; margin-bottom: 10px; color: Red">
                                    校园资讯</div>
                                <div align="right" style="height: 20px;">
                                    <asp:ImageButton ID="ImageButton4" runat="server" src="images/more1.gif" ImageAlign="Bottom" /></div>
                            </div>
                            <div style="clear: both;">
                                <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
                                        <div class="ziti" style="margin-top: 10px;">
                                            <a href="#">
                                                <%# Eval("title") %></a></div>
                                        <div>
                                            <br />
                                            作者:<%# Eval("author") %>|时间：<%# Eval("time") %></div>
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:sunshineConnectionString8 %>"
                                    SelectCommand="SELECT top 5 [author], [time], [title], [zxid]  FROM [zixun] ORDER BY [time] DESC, [author] ">
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--左边结束右边开始-->
        </div>
        <div class="fl" style="width: 50px; height: 2500px; margin-top: 20px;">
        </div>
        <!--右边-->
        <div class="fl" style="width: 800px; height: 2500px; margin-top: 20px;">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div style="width: auto; height: auto;">
                        <asp:DataList ID="DataList1" runat="server" CellSpacing="20" Height="1000px" OnItemCommand="DataList1_ItemCommand"
                            OnItemDataBound="DataList1_ItemDataBound">
                            <FooterTemplate>
                                <div class="ziti2" align="center" style="">
                                    <asp:Label ID="onqian" runat="server" Text=""></asp:Label>
                                    /<asp:Label ID="oncount" runat="server" Text=""></asp:Label>
                                    <asp:LinkButton ID="shouye" runat="server" CommandName="first">首页</asp:LinkButton>
                                    <asp:LinkButton ID="uppage" runat="server" CommandName="pre">上一页</asp:LinkButton>
                                    <asp:LinkButton ID="downpage" runat="server" CommandName="next">下一页</asp:LinkButton>
                                    <asp:LinkButton ID="weiye" runat="server" CommandName="last">尾页</asp:LinkButton>
                                    跳转至
                                    <asp:TextBox ID="TextBox1" runat="server" Width="30px"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="GO" CommandName="search" Height="17px"
                                        Width="54px" />
                                </div>
                            </FooterTemplate>
                            <HeaderTemplate>
                                <div align="center" style="font-size: 18px; -moz-box-shadow: 0px 2px 8px #666666;
                                    -webkit-box-shadow: 0px 2px 8px #666666; box-shadow: 0px 2px 8px #666666;">
                                    最新动态</div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <div>
                                    <div class="fl" style="-moz-box-shadow: 0px 2px 8px #666666; -webkit-box-shadow: 0px 2px 8px #666666;
                                        box-shadow: 0px 2px 8px #666666;">
                                        <div class="table1" style="float: left;">
                                            <img alt="" src="images/<%# Eval("image") %>" style="width: 200px; height: 150px;" />
                                        </div>
                                        <div class="fl">
                                            <div style="border-bottom: 1px solid #E6E6E6;">
                                                <div class="ziti1">
                                                    <a href="index_sub1.aspx?id=+<%# Eval("id") %>+" style="font-size: 20px;">
                                                        <br />
                                                        <%# Eval("topic") %></a></div>
                                            </div>
                                            <div style="height: auto; width: 550px;">
                                                <br />
                                                <%# Eval("neirong").ToString().Length > 100 ? Eval("neirong").ToString().Substring(0, 100) + "..." : Eval("neirong")%>
                                            </div>
                                            <div>
                                                <div class="fl">
                                                    <img alt="" src="images/ren.png" /><%# Eval("writer") %></div>
                                                <div class="fl" style="margin-left: 80px;">
                                                    <img alt="" src="images/time.png" /><%# Eval("time") %></div>
                                                <div class="fl" style="margin-left: 150px;">
                                                    <a version="1.0" class="qzOpenerDiv" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_likeurl"
                                                        target="_blank">赞</a><script src="http://qzonestyle.gtimg.cn/qzone/app/qzlike/qzopensl.js#jsdate=20111107&style=3&showcount=1&width=130&height=30"
                                                            charset="utf-8" defer="defer"></script></div>
                                            </div>
                                            <div style="clear: both;">
                                                <div class="bdsharebuttonbox">
                                                    <a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"
                                                        title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">
                                                    </a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren"
                                                        data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin"
                                                            title="分享到微信"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script>                                    window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": ["sqq", "mshare", "renren", "qzone", "tsina", "weixin", "tqq", "tieba", "douban", "huaban", "people", "ty", "copy"], "bdPic": "", "bdStyle": "1", "bdSize": "24" }, "share": {}, "image": { "viewList": ["qzone", "tsina", "tqq", "renren", "weixin"], "viewText": "分享到：", "viewSize": "16" }, "selectShare": { "bdContainerClass": null, "bdSelectMiniList": ["qzone", "tsina", "tqq", "renren", "weixin"]} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
                            </ItemTemplate>
                            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" />
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sunshineConnectionString5 %>"
                            SelectCommand="SELECT * FROM [new] ORDER BY [time] DESC, [zancount]" ProviderName="System.Data.SqlClient">
                        </asp:SqlDataSource>
                    </div>
                    <div>
                        <br />
                    </div>
                    </div> </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <!--中部-->
        </div>
    </div>
    <!-- 底部-->
    <div style="clear: both;">
    </div>
    <!-- 素材-->
    <div style="width: 1150px; height: 500px; margin-left: auto; margin-right: auto">
        <uc2:sucai ID="sucai1" runat="server" />
        <div style=" height: 60px; width: 1150px; text-align: center; margin-top:20px;">
        <span style="color: rgb(187, 187, 187); font-family: Arial, 'Microsoft yahei', 'Hiragino Sans GB', '冬青黑体简体中文 w3', 'Microsoft Yahei', 'Hiragino Sans GB', '冬青黑体简体中文 w3', STXihei, 华文细黑, 微软雅黑, SimSun, 宋体, Heiti, 黑体, sans-serif;
            font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal;
            letter-spacing: normal; line-height: 60px; orphans: auto; text-align: center;
            text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px;
            -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
            <a href="sucaiDetail.aspx">没看够？点我>></a></span>
    </div>
    </div>

     
    
    <div style="width: 100%; margin-left: 6%; clear: both; margin-top: 1200px;">
        <div>
            <div style="margin-top: 50px; margin-bottom: 20px; color: Black; font-size: 18px;
                border-bottom: 1px solid #E6E6E6; clear: both;">
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
            <iframe id="yxzp" name="yxfr_name" src="xzd.aspx" style="width: 100%; height: 500px;
                border: 0px 0px 0px 0px"></iframe>
        </div>
        <!-- 合作伙伴-->
        <div style="font-size: 16px; clear: both; padding-top: 30px;">
            <img src="images/sanjiao.png" />合作伙伴</div>
        <div style="width: 100%; height: 200px;">
            <marquee behavior="scroll" scrollamount="5" scorlldelay="0" diretion="center" onmouseover="stop();"
                onmouseout="start();">
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
    </marquee>
        </div>
</asp:Content>
