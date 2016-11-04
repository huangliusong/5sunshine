<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true"
    CodeFile="index_sub1.aspx.cs" Inherits="index_sub1" %>

<%@ Register Src="lunzhuan].ascx" TagName="lunzhuan" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                            <a href="sub_fx.aspx">享设计</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="subyc.aspx">晒艺潮</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_zixun.aspx">校园资讯</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_about.aspx">关于我们</a></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--主内容-->
    <div style="background-color: #EDF6ED; width: 100%;">
        <div style="width: 1000px; height: 50px; margin-left: 150px;">
            <div class="fr" style="border-bottom: 1px solid #f4f4f4; height: 30px; font-size: 14px;">
                <br />
                <b>您的位置</b>:<a href="index1.aspx">首页</a>>最新动态><asp:Label ID="article" runat="server"
                    Text=""></asp:Label></div>
            <div class="fl">
                <br />
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div style="width: 1200px;">
                            <div class="fl" style="width: 700px; background-color: #EDF6ED; padding-bottom: 200px;
                                padding-left: 30px; padding-top: 30px;">
                                <div class="fl" style="clear: both;">
                                    <div class="ziti" style="height: 40px; font-size: 24px; font-family: 微软雅黑;">
                                        <%#Eval("topic") %></div>
                                    <div style="font-size: 12px;">
                                        <div class="fl" style="height: 20px;">
                                            作者：<%# Eval("writer") %></div>
                                        <div class="fl" style="height: auto; margin-left: 30px;">
                                            |发表于：<%# Eval("time") %></div>
                                        <div class="fl" style="height: auto; margin-left: 30px;">
                                            |浏览量：450</div>
                                        <br />
                                        <div style="clear: both;">
                                            标签：设计</div>
                                        <br />
                                        <br />
                                    </div>
                                    <img alt="" src="images/<%# Eval("image") %>" style="width: 500px; height: 100%;
                                        margin-right: 50px;" />
                                    <div style="height: auto; width: 600px; margin-left: auto; margin-right: auto; font-size: 16px;
                                        clear: both; word-spacing: 20px; line-height: 40px;">
                                        <br />
                                        &nbsp; &nbsp;
                                        <%# Eval("neirong")%></div>
                                    <div style="height: 300px;">
                                        评论区</div>
                                </div>
                            </div>
                            <div class="fl" style="margin-left: 30px; width: 300px; padding-left: 20px; padding-right: 20px;
                                background-color: #EDF6ED; height: 800px;">
                                <div style="height: 50px; border-bottom-style: dashed; border-bottom-width: 2px;
                                    font-size: 18px;">
                                    <br />
                                    <b>最热文章</b></div>
                                <div style="height: 100px; word-spacing: 20px; line-height: 40px;">
                                    <ul>
                                       <li><a href="http://zhidao.baidu.com/special/view/cooperation">百度知道品牌合作指南</a></li>
                                        <li><a href="http://zhidao.baidu.com/special/view/cooperation">真相问答我们一起粉碎流言！</a></li>
                                        <li><a href="http://zhidao.baidu.com/special/view/cooperation">免费领取《知道日报》主题专刊</a></li>
                                    </ul>
                                </div>
                                <div style="height: 400px; margin-top: 20px;">
                                    <iframe src="lunzhuan.aspx" style="height: 400px; width: 260px;" frameborder="no"
                                        scrolling="no"></iframe>
                                </div>
                                <div style="height: 50px; border-bottom-style: dashed; border-bottom-width: 2px;
                                    font-size: 18px; clear: both;">
                                    <br />
                                    <b>最热素材</b></div>
                                <div style="height: 100px; word-spacing: 20px; line-height: 20px;">
                                    <ul>
                                        <li style=" margin-top:20px;" ><a href="http://zhidao.baidu.com/special/view/cooperation">如何练好行书行楷？</a></li>
                                        <li style=" margin-top:20px;" ><a href="http://zhidao.baidu.com/special/view/cooperation">微信拍摄小视频怎么保存</a></li>
                                        <li style=" margin-top:30px;" ><a href="http://zhidao.baidu.com/special/view/cooperation">怎么替换视频的背景音</a></li>
                                        <li style=" margin-top:30px;" ><a href="http://zhidao.baidu.com/special/view/cooperation">怎样快速提升英语口语</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
