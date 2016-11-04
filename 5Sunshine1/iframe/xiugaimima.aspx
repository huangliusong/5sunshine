<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiugaimima.aspx.cs" Inherits="iframe_xiugaimima" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/prism.css" rel="stylesheet" />
    <link href="../css/gh_materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <script src="https://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript">
    </script>
    <script type="text/javascript">
        if (!window.jQuery) {
            document.write('<script src="bin/jquery-2.1.1.min.js"><\/script>');
        }
    </script>
    <script src="../bean/materialize.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 500px; height: 500px; background-color: #FFFFFF; margin-left:20px;" >
        <div>
            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <label for="password">
                        原始密码</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <label for="password">
                        新密码</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <label for="password">
                        确认新密码</label>
                </div>
            </div>
            <div style="margin-top: 50px; margin-left: 20px;">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">提交</asp:LinkButton>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
