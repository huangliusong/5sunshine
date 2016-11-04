<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true"
    CodeFile="register.aspx.cs" Inherits="register" %>
   
<%@ Register src="register.ascx" tagname="register" tagprefix="uc1" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <uc1:register ID="register1" runat="server" />
    
</asp:Content>
