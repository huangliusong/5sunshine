<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xuanzewenjian.aspx.cs" Inherits="iframe_xuanzewenjian" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>选择文件</title>
 
    <link href="../css/gh_materialize.css" rel="stylesheet" type="text/css" />
    <link href="../css/prism.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="file" class="section scrollspy">
            <div class="file-field input-field" style="float: left">
                <div class="btn">
                    <span>上传预览图</span>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
                <asp:Image ID="Image1" Style="width: 100px; height: 100px;" runat="server" ImageUrl="~/imag/bg.png" /><br />
                
               
            </div>
            <div class="file-field input-field" style="float: left">
                <div class="btn">
                    <span>选择源文件</span>
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                </div>
            </div>
            <asp:Image ID="Image2" Style="width: 100px; height: 100px;" runat="server" ImageUrl="~/imag/bg1.png" /><br />
            
            
            
            
        </div>
        <div>
            <div style=" float:left">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
            <div style=" float:left">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div style=" clear:both"></div>
        <div>
                <asp:Button ID="Button1" class="waves-effect waves-light btn" runat="server" Text="提交"
                    OnClick="Button1_Click" />
            </div>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script>        if
    (!window.jQuery) {
            document.write('<script src="bin/jquery-2.1.1.min.js"><\/script>');
        } </script>
    <script src="bin/materialize.js"></script>
    
    </form>
</body>
</html>
