<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true" CodeFile="fatie.aspx.cs" Inherits="fatie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="Scripts/kindeditor.js" type="text/javascript"></script>
    <script src="Scripts/zh_CN.js" type="text/javascript"></script>
    <script src="Scripts/prettify.js" type="text/javascript"></script>
    <link href="Styles/forum.css" rel="stylesheet" type="text/css" />
    <link href="Styles/default.css" rel="stylesheet" type="text/css" />
    <link href="Styles/prettify.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        KindEditor.ready(function (K) {
            var editor1 = K.create('#content1', {
                cssPath: 'editor/asp.net/upload_json.ashx',
                uploadJson: 'editor/asp.net/upload_json.ashx',
                fileManagerJson: 'editor/asp.net/file_manager_json.ashx',
                allowFileManager: true,
                afterCreate: function () {
                    var self = this;
                    K.ctrl(document, 13, function () {
                        self.sync();
                        K('form[name=example]')[0].submit();
                    });
                    K.ctrl(self.edit.doc, 13, function () {
                        self.sync();
                        K('form[name=example]')[0].submit();
                    });
                }
            });
            prettyPrint();
        });  
    </script>
           <!--导航-->
    <div  style=" height:50px;padding:0px;margin-bottom:10px; background-image:url(images/bannerq.png);">
    <div style="margin-left:100px">
    <div class="banner">
    <ul>
    <li><img alt="" src="images/logoa.png" /></li>
        <li><div style=" height :45px;padding-top:10px;"><a href="index1.aspx">首页</a></div></li>
        <li><div style=" height :45px;padding-top:10px;background-color:White;"><a style="color:Blue; padding-left:10px;padding-right:10px;">享设计</a></div></li>
        <li><div style=" height :45px; padding-top:10px"><a href="subyc.aspx">晒艺潮</a></div></li>
        <li><div style=" height :45px;padding-top:10px"><a href="sub_zixun.aspx">校园资讯</a></div></li>
        <li><div style=" height :45px;padding-top:10px"><a href="sub_about.aspx">关于我们</a></div></li>
        </ul>
     </div>
    </div>
    </div>


    <div style=" margin-top:50px;"></div>
    <div id="_div">
        <div>
            <div style="float: none; text-align: center;">
                <h2>
                    发表话题</h2>
            </div>
            <div style="float: left; width: 20%; text-align: center; height: 80px; line-height: 80px;">
                文章标题：
            </div>
            <div style="float: left; width: 70%; height: 80px; line-height: 80px; padding">
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="360px"></asp:TextBox>
                <span style="color: rgb(221, 26, 0); background-color: rgb(245, 245, 245);">你还可以输入80个字符</span></div>
            <div style="float: left; width: 20%; text-align: center; height: 80px; line-height: 80px;">
                文章内容：
            </div>
            <div style="float: left; width: 70%; min-height: 300px; line-height: 40px; padding">
                <asp:TextBox ID="content1" runat="server" Height="300px" Width="500px"></asp:TextBox>
            </div>
            <div style="float: left; width: 20%; text-align: center; height: 250px; line-height: 50px;">
            </div>
            <div style="float: left; width: 70%; height: 250px; line-height: 50px; padding; margin-bottom: 0px;">
                <div>
                    验证码:<asp:ImageButton ID="yzm" runat="server" ImageUrl="validate.aspx" />
                </div>
                <div>
                    输入验证码：<asp:TextBox ID="TextBox2" runat="server" Width="50px"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="发帖" OnClick="Button1_Click" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="免验证码预览" OnClick="Button2_Click" />
                <br />
                <div style="border: thin groove #C0C0C0; color: #666666;">
                    1.这里发言，表示您接受了本网站论坛的用户行为准则。<br />
                    2.请对您的言行负责，并遵守中华人民共和国有关法律法规,尊重网上道德。<br />
                    3.转载文章请注明出自“shine”。如是商业用途请联系原作者。
                </div>
            </div>
        </div>
        <div style="clear: both;">
        </div>
    </div>
    <div style=" margin-bottom:200px;"></div>
</asp:Content>

