<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sucai.ascx.cs" Inherits="sucai" %>
<link href="css/gh_materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
    <ItemTemplate>
        <div style="width: 300px; margin-left: 10px;">
            <div style="width: 300px;">
                <div class="card hoverable small">
                    <div class="card-image">
                        <img src="file/<%#Eval("file_yulan_url") %>">
                        <span class="card-title">Card Title</span>
                    </div>
                    <div class="card-content">
                        <p>
                            I am a very simple card. I am good at containing small bits of information. .</p>
                    </div>
                    
                </div>
            </div>
            <div style="width: 300px; margin-top: 2px; ">
                <div style="float: left;">
                    <a href="Downloadpage.aspx?fdfdfdf=<%#Eval("id")%>" style=" text-decoration: none;" class="waves-effect waves-light btn">下载</a>
                
                </div>
                <div style="float: left; margin-left: 100px;">
                     <a href="sucaiDetail_sub.aspx?suc_dfdfddff=<%#Eval("id")%>" style=" text-decoration: none;" class="waves-effect waves-light btn">详情</a>
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>
