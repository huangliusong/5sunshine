<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true"
    CodeFile="uploading.aspx.cs" Inherits="uploading" %>

<%@ Register src="uploading.ascx" tagname="uploading" tagprefix="uc1" %>

<%@ Register src="uploading_tab.ascx" tagname="uploading_tab" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 960px;height: 500px; margin-left:auto; margin-right:auto;">
        <div style="width: 200px; min-height: 50px; float: left;">
             <uc1:uploading  ID="uploading1" runat="server" />
             
        </div>
        <div style="width: 700px; min-height: 400px; float: left; margin-top:50px;">
                <iframe src="iframe/shangchuan.aspx" name="if" runat="server" frameborder="no"  scrolling="no"  id="_iframe" style="width: 700px; min-height: 400px;"></iframe>
        </div>
        <div style=" clear:both;">
        </div>
    </div>
</asp:Content>
