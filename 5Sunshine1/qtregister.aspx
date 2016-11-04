<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/forground.master" CodeFile="qtregister.aspx.cs" Inherits="qtregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div style="width:100%; height:60px; background-image:url(images/subbg1.png)"></div>



    </div>
    <div align="center" style=" height:600px;">
    <div style=" color:Orange; font-size:24px; height:50px;"><h2>注册</h2></div>
    <div>成为5Sunshine用户，即刻上传分享！下载大量优秀作品！更多惊喜等着你！新用户免费注册，还等什么呢？赶紧<a href="qtregister.aspx">注册</a>吧！</div>
    <br />
    <br />
                <fieldset style=" width:45%; height:450px;">
                    <legend>帐户信息</legend>
                    <br />
                    <div>
                    <br />
                        <asp:Label ID="Label1" runat="server" Text="Label">昵&nbsp;称:</asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="*必填"></asp:Label>  
                    </div>
                   
                    <div>
                    <br />
                        <asp:Label ID="Label4" runat="server" Text="上传头像："></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" />
                    </div>
                     <div>
                    <br />
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="男" />&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton2"
                            runat="server" Text="女"/>
                    </div>
                    <div>
                        <br />
                        <asp:Label ID="Label2" runat="server" >密&nbsp;码:</asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="20px"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="*必填"></asp:Label>   
                    </div>
                    <div>
                        <br />
                        <asp:Label ID="Label6" runat="server" >邮&nbsp;箱:</asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="20px"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="*选填"></asp:Label>   
                    </div>
                    <div>
                        <br />
                        <asp:Label ID="Label8" runat="server" >个性签名:</asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="150px" 
                            Width="300px"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Text="*选填"></asp:Label>   
                    </div>
                    <div>

                    </div>
                   
                    <div class="submitButton">
                    <br />
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="注册" 
                        ValidationGroup="LoginUserValidationGroup"  
                            Font-Size="Medium" Height="30px" Width="50px" onclick="LoginButton_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="zhuzhi" runat="server" Text="重置"  
                            Height="30px" Width="50px" />
                </div>
                </fieldset>
                 </div>
                 <div style=" height:100px;"></div>
</asp:Content>