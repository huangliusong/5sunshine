<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Downloadpage.aspx.cs" Inherits="Downloadpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/ghpages-materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
    <div style="width: 700px; height: 600px; margin-left: auto; margin-right: auto; margin-top: 30px;
        background-image: url('images/downbg.jpg');">
        <div style="float: left; width: 300px;">
            <div>
               
                <asp:LinkButton   ID="LinkButton1"  runat="server"   
                    style="margin-top: 30px; margin-left: 30px;" 
                    class="btn waves-effect waves-light" onclick="LinkButton1_Click1"    >高速通道下载 <i class="material-icons right">file_download</i></asp:LinkButton>
            </div>
            <div>
                  <asp:LinkButton   ID="LinkButton2"  runat="server"   
                    style="margin-top: 30px; margin-left: 30px;" 
                    class="btn waves-effect waves-light" onclick="LinkButton1_Click1"    >专用通道下载 <i class="material-icons right">file_download</i></asp:LinkButton>
       
            </div>
            <div>
                 <asp:LinkButton   ID="LinkButton3"  runat="server"   
                    style="margin-top: 30px; margin-left: 30px;" 
                    class="btn waves-effect waves-light" onclick="LinkButton1_Click1"    >普通通道下载 <i class="material-icons right">file_download</i></asp:LinkButton>
       
            </div>
        </div>
        <div style="float: left; width: 300px; margin-top: 20px;">
            <h6 class="header" style=" line-height:30px;">
                站内所有素材图片均由网友主动上传而来，shine网不拥有此素材图片的版权，网站所有作品均作学习、交流之用，如需商用，请获得版权拥有者授权，并请遵循国家法律法规之规定。若因非法使用引起纠纷，一切后果由使用者承担。(如有疑问请联系网站管理员！)
                </h6>
        </div>
    </div>
    </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
