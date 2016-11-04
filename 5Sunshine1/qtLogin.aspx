<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/forground.master" CodeFile="qtLogin.aspx.cs" Inherits="qtLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <div style="width:100%; height:60px; background-image:url(images/subbg1.png)"></div>



    </div>
    <div align="center">
    <div style=" color:Orange; font-size:24px; height:50px;"><h2>登录</h2></div>
    <div>成为5Sunshine用户，即刻上传分享！下载大量优秀作品！更多惊喜等着你！新用户?不要紧，点击<a href="qtregister.aspx">注册</a>吧！</div>
    <br />
    <br />
                <fieldset style=" width:40%; height:200px;">
                    <legend>帐户信息</legend>
                    <br />
                    <div>
                    <br />
                        <asp:Label ID="UserNameLabel" runat="server" 
                            Font-Size="Large">昵&nbsp;称:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server"  Height="20px"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="*必填"></asp:Label>
                        <!--<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" 
                             ValidationGroup="LoginUserValidationGroup" Font-Size="Large">*必填</asp:RequiredFieldValidator>-->
                             
                    </div>
                    <div>
                        <br />
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                            Font-Size="Large">密&nbsp;码:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" 
                            TextMode="Password" Height="20px"></asp:TextBox>
                            <asp:Label ID="Label2" runat="server" Text="*必填"></asp:Label>
                        <!--<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" 
                             ValidationGroup="LoginUserValidationGroup" Font-Size="Large">*必填</asp:RequiredFieldValidator>-->
                              
                    </div>
                    <div><br />验证码:
                              <asp:TextBox ID="txtCheckCode" runat="server" Height="20px" Width="50px"></asp:TextBox>
                             <asp:Label ID="lblCheckCode" runat="server" Text="1234" Font-Size="14pt" Width="50px"></asp:Label>
                              
                    </div>
                   
                    <div class="submitButton">
                    <br />
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登录" 
                        ValidationGroup="LoginUserValidationGroup" onclick="LoginButton_Click" 
                            Font-Size="Medium" Height="30px" Width="50px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="zhuzhi" runat="server" Text="重置" onclick="zhuzhi_Click" 
                            Height="30px" Width="50px" />
                </div>
                </fieldset>
                 </div>
                 <div style=" height:100px;"></div>
</asp:Content>


