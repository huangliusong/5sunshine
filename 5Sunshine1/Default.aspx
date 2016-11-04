<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>上传</title>
    <link href="../css/gh_materialize.css" rel="stylesheet" type="text/css" />
    <link href="../css/prism.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Image ID="Image1" Style="width: 100px; height: 100px;" runat="server" ImageUrl="imag/bg.png" />
    </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <br />
    <asp:Image ID="Image2" Style="width: 100px; height: 100px;" runat="server" ImageUrl="~/imag/bg1.png" />
    <br />
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button2" runat="server" Text="文件上传" OnClick="Button2_Click" />
    <div>
        <div id="file" class="section scrollspy">
            <h4 class="header">
                上传素材</h4>
            <p>
                支持rar、zip、jpg、psd、ai、cdr、tif、abr、ppt、eps...等格式，体积在300MB以下</p>
            <div class="file-field input-field">
                <div class="btn">
                    <span>选择源文件</span>
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text">
                </div>
            </div>
            <div class="file-field input-field">
                <div class="btn">
                    <span>上传预览图</span>
                    <asp:FileUpload ID="FileUpload4" runat="server" />
                </div>
                <div class="file-path-wrapper">
                    <input class="file-path validate" type="text">
                </div>
            </div>
            <div>
            </div>
            <div>
                <asp:Button ID="Button1" class="waves-effect waves-light btn" runat="server" Text="提交"
                    OnClick="Button1_Click" />
            </div>
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
