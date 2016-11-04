<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true" CodeFile="sucaiDetail_sub1.aspx.cs" 
Inherits="sucaiDetail_sub1" ValidateRequest="false"
    EnableEventValidation="false" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div style="height: 60px; width: 1100px; text-align: center; margin-top: 20px; margin-left: auto;
                    margin-right: auto;">
                    <h1 style="box-sizing: border-box; margin: 0px auto; font-size: 24px; width: 1000px;
                        padding-bottom: 27px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238);
                        text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px;
                        -webkit-text-stroke-width: 0px;">
                        <%#Eval("file_zip")%></h1>
                </div>
                <div style="width: 1100px; height: 200px; margin-left: auto; margin-right: auto;
                    text-align: center; margin-top: 30px;">
                    <div style="width: 700px; min-height: 500px; float: left; background-color: #FFFFFF;
                        -moz-box-shadow: 10px 10px 5px #888888; /* 老的 firefox */
box-shadow: 10px 10px 5px #888888;">
                        <img alt="/" src="file/<%#Eval("file_yulan_url")%>" style="margin: 30px; width: 650px;
                            height: 400px;" />
                    </div>
                    <div style="border: 1px solid rgb(238, 238, 238); width: 300px; min-height: 500px;
                        float: left; margin-left: 50px; background-color: #FFFFFF; box-sizing: border-box;
                        padding-bottom: 27px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238);
                        color: rgb(40, 40, 40);">
                        <%--详细信息介绍--%>
                        <div style="text-align: left">
                            <div style="margin: 30px;">
                                <span style="color: rgb(153, 153, 153); font-family: 'Microsoft YaHei'; font-size: 15px;
                                    word-spacing: 0px;">上传者：&nbsp;&nbsp;&nbsp;<%#Eval("use_num")%></span></div>
                            <div style="margin: 30px;">
                                <span style="color: rgb(153, 153, 153); font-family: 'Microsoft YaHei'; font-size: 15px;
                                    word-spacing: 0px;">上传时间:&nbsp;&nbsp;&nbsp;<%#Eval("time")%></span></div>
                            <div style="margin: 30px;">
                                <span style="color: rgb(153, 153, 153); font-family: 'Microsoft YaHei'; font-size: 15px;
                                    word-spacing: 0px;">类型:&nbsp;&nbsp;&nbsp;<%#Eval("type")%></span></div>
                            <div style="margin: 30px;">
                                <span style="color: rgb(153, 153, 153); font-family: 'Microsoft YaHei'; font-size: 15px;
                                    word-spacing: 0px;">标签:&nbsp;&nbsp;&nbsp;明信片</span>
                            </div>
                            <div style="margin: 30px;">
                                <span style="color: rgb(153, 153, 153); font-family: 'Microsoft YaHei'; font-size: 15px;
                                    word-spacing: 0px;">格式:&nbsp;&nbsp;&nbsp;PNG</span>
                            </div>
                            <div style="margin: 30px;">
                                <span style="color: rgb(153, 153, 153); font-family: 'Microsoft YaHei'; font-size: 15px;
                                    word-spacing: 0px;">模式:&nbsp;&nbsp;&nbsp;RGB-ZIP</span>
                            </div>
                            <div style="margin: 30px;">
                                <div style="width: 150px; ">
                                    <div style="width: 50px;  float: left;">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                                            点赞
                                        </asp:LinkButton>
                                    </div>
                                    
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:DataList ID="DataList5" runat="server">
                                                <ItemTemplate>
                                                    <div style=" width:100px; float:left;">
                                                      <%#Eval("dianzan_shu")%>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="LinkButton1" EventName="Click" />
                                            <asp:AsyncPostBackTrigger ControlID="DataList5" EventName="DataBinding" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </div>
                                
                                    
                                    <div style="clear: both;">
                                    </div>
                                
                            </div>
                            <div style="box-sizing: border-box; margin: 0px auto; font-size: 24px; border-bottom-width: 1px;
                                border-bottom-style: solid; border-bottom-color: rgb(238, 238, 238); text-indent: 0px;
                                text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                            </div>
                            <div class="bdsharebuttonbox" style="margin: 30px;">
                                <a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"
                                    title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">
                                </a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren"
                                    data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_mshare" data-cmd="mshare"
                                        title="分享到一键分享"></a><a href="#" class="bds_tqf" data-cmd="tqf" title="分享到腾讯朋友">
                                </a><a href="#" class="bds_bdxc" data-cmd="bdxc" title="分享到百度相册"></a><a href="#"
                                    class="bds_kaixin001" data-cmd="kaixin001" title="分享到开心网"></a><a href="#" class="bds_weixin"
                                        data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_douban" data-cmd="douban"
                                            title="分享到豆瓣网"></a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧">
                                </a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a><a href="#" class="bds_thx"
                                    data-cmd="thx" title="分享到和讯微博"></a><a href="#" class="bds_ibaidu" data-cmd="ibaidu"
                                        title="分享到百度中心"></a><a href="#" class="bds_ty" data-cmd="ty" title="分享到天涯社区">
                                </a><a href="#" class="bds_mogujie" data-cmd="mogujie" title="分享到蘑菇街"></a><a href="#"
                                    class="bds_bdysc" data-cmd="bdysc" title="分享到百度云收藏"></a><a href="#" class="bds_bdhome"
                                        data-cmd="bdhome" title="分享到百度新首页"></a><a href="#" class="bds_huaban" data-cmd="huaban"
                                            title="分享到花瓣"></a><a href="#" class="bds_fbook" data-cmd="fbook" title="分享到Facebook">
                                            </a><a href="#" class="bds_linkedin" data-cmd="linkedin" title="分享到linkedin">
                                </a><a href="#" class="bds_print" data-cmd="print" title="分享到打印"></a><a href="#"
                                    class="bds_evernotecn" data-cmd="evernotecn" title="分享到印象笔记"></a><a href="#" class="bds_qingbiji"
                                        data-cmd="qingbiji" title="分享到轻笔记"></a><a href="#" class="bds_iguba" data-cmd="iguba"
                                            title="分享到股吧"></a><a href="#" class="bds_diandian" data-cmd="diandian" title="分享到点点网">
                                            </a><a href="#" class="bds_meilishuo" data-cmd="meilishuo" title="分享到美丽说">
                                </a><a href="#" class="bds_duitang" data-cmd="duitang" title="分享到堆糖"></a><a href="#"
                                    class="bds_hx" data-cmd="hx" title="分享到和讯"></a><a href="#" class="bds_xinhua" data-cmd="xinhua"
                                        title="分享到新华微博"></a><a href="#" class="bds_youdao" data-cmd="youdao" title="分享到有道云笔记">
                                        </a><a href="#" class="bds_people" data-cmd="people" title="分享到人民微博"></a>
                                <a href="#" class="bds_mail" data-cmd="mail" title="分享到邮件分享"></a><a href="#" class="bds_isohu"
                                    data-cmd="isohu" title="分享到我的搜狐"></a><a href="#" class="bds_yaolan" data-cmd="yaolan"
                                        title="分享到摇篮空间"></a><a href="#" class="bds_h163" data-cmd="h163" title="分享到网易热">
                                </a>
                            </div>
                            <script>                                window._bd_share_config = { "common": { "bdSnsKey": { "tsina": "sunshine好多图片须分享", "tqq": "sunshine好多图片须分享", "t163": "sunshine好多图片须分享", "tsohu": "sunshine好多图片须分享" }, "bdText": "sunshine好多图片须分享", "bdMini": "2", "bdMiniList": false, "bdPic": "sunshine好多图片须分享", "bdStyle": "2", "bdSize": "16" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
                            <div>
                            </div>
                            <div style="text-align: left; margin-left: 30px; margin-top: 30px;">
                                <div style="float: left;">
                                    <a href="Downloadpage.aspx?fdfdfdf=<%#Eval("id")%>" target="_blank" style="text-decoration: none;"
                                        class="waves-effect waves-light btn">下载</a>
                                </div>
                                <div style="float: left; ">
                                    <asp:Button ID="Button2" runat="server" Text="我要收藏" class="waves-effect waves-light btn"
                                        OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div>
                        <div style="clear: left;">
                        </div>
                    </div>
            </ItemTemplate>
        </asp:DataList></div>
    <div style="margin-left: auto; margin-right: auto; width: 1100px; min-height: 200px;">
        <div style="width: 700px; height: 50px;">
            <div>
                <div id="Smohan_FaceBox">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <textarea name="pingluntext" id="Smohan_text" class="smohan_text"></textarea>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <p>
                        <a class="face" title="表情">
                        <asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
                        </a>
                        <asp:Button ID="Button1" runat="server" Text="评论" class="button" OnClick="Button1_Click"
                            Width="57px" />
                    </p>
                </div>
            </div>
        </div>
    </div>


    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div style="margin-left: auto; margin-right: auto; width: 1100px; min-height: 500px;">
                <div style="width: 700px; min-height: 100px;">
                    <fieldset>
                        <legend>最新评论</legend>
                        <div style="width: 500px; min-height: 100px; margin-left: 40px;">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                                <PagerTemplate>
                                
                                    <asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
                                </PagerTemplate>
                            </asp:GridView>
                          
                        </div>
                        <div style="width: 50px; min-height: 100px; margin-left: 40px;">
                        </div>
                    </fieldset>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="DataList2" EventName="DataBinding" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
