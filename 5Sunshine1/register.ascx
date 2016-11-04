<%@ Control Language="C#" AutoEventWireup="true" CodeFile="register.ascx.cs" Inherits="register" %>
<link href="css/prism.css" rel="stylesheet" />
<link href="css/gh_materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
<script src="https://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript">
</script>
<script type="text/javascript">
    if (!window.jQuery) {
        document.write('<script src="bin/jquery-2.1.1.min.js"><\/script>');
    }
</script>
<script src="bean/materialize.js" type="text/javascript"></script>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div style="width: 960px; min-height: 500px; margin-left: auto; margin-right: auto;">
    <div style="min-height: 500px; margin-left: auto; margin-right: auto;">
        <div>
            <div style="float: left; width: auto">
                <h4 class="header">
                    加入我们:
                </h4>
            </div>
            <div style="float: right; width: auto">
                已有账号，<a href="login_user.aspx">马上登陆 </a>
            </div>
            <div style="clear: both;">
            </div>
        </div>
        <div class="col s12 m9 l10">
            <div id="input" class="section scrollspy">
                <div class="row">
                    <form class="col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <label for="last_name">
                                账号</label>
                        </div>
                        <div class="input-field col s6">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <label for="last_name">
                                昵称</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            <label for="password">
                                密码</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                            <label for="password">
                                确认密码</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <label for="email" data-error="wrong" data-success="right">
                                邮箱</label>
                        </div>
                    </div>
                    <div class="row">
                        <div style="float: left;">
                            <h6 class="header">
                                手机号：</h6>
                        </div>
                        <div style="float: left;">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </div>
                        <div style="float: left; height：50px;">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="Button1" runat="server" Text="免费发送验证码" 
                                        Style="height: 50px; border: 0px;" onclick="Button1_Click1" />
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div style="clear: both">
                        </div>
                       <div>
                         <h6 class="header">
                                输入验证码：</h6>  <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></div>
                    </div>
                    <div class="section scrollspy">
                        <h6 class="header">
                            性别</h6>
                        <p>
                            <input name="sex" type="radio" value="男" id="test1" checked />
                            <label for="test1">
                                男</label>
                        </p>
                        <p>
                            <input name="sex" type="radio" value="女" id="test2" />
                            <label for="test2">
                                女</label>
                        </p>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <textarea id="textarea1" name="OrderNote" class="materialize-textarea" length="120"></textarea>
                            <label for="textarea1">
                                个人简述</label>
                        </div>
                    </div>
                    <!-- Checkboxes -->
                    <div id="checkbox" class="section scrollspy">
                        <h6 class="header">
                            我感兴趣的</h6>
                        <br />
                        <p>
                            (可以多选)
                        </p>
                        <br />
                        <div style="float: left;">
                            <p>
                                <input type="checkbox" id="test9" name="g1" checked value="手机APP设计" />
                                <label for="test9">
                                    手机APP设计</label>
                            </p>
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <p>
                                <input type="checkbox" id="test6" name="g2" value="影视媒体" />
                                <label for="test6">
                                    影视媒体</label>
                            </p>
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <p>
                                <input type="checkbox" id="test7" name="g3" value="平面设计" />
                                <label for="test7">
                                    平面设计</label>
                            </p>
                        </div>
                        <div style="float: left; margin-left: 50px;">
                            <p>
                                <input type="checkbox" id="test8" name="g4" value="创意设计" />
                                <label for="test8">
                                    创意设计</label>
                            </p>
                        </div>
                        <div>
                        
                        
                        </div>
                        <div style="clear: both">
                        </div>
                        <div style="margin-top: 50px;">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">立即注册</asp:LinkButton>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
