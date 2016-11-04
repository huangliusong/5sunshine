<%@ Page Language="C#" AutoEventWireup="true" CodeFile="perview.aspx.cs" Inherits="perview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>预览信息</title>
    <link href="Styles/forum.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <div id="divv">
                <div id="divv1">
                    <div id="divv1_1">
                        <div>
                            <img src="images/tou1.jpg" " style="width: 125px; height: 125px; border-color: #FFF3C9;" />
                        </div>
                        <div id="divv1_1_1">
                           发表人
                        </div>
                    </div>
                    <div id="divv1_2">
                        <div id="divv1_2_1">
                            <div id="divv1_2_1_1">
                               &nbsp;
                               标题：<%Response.Write(Session["title"]); %>
                            </div>
                            <div id="divv1_2_1_2">
                                楼主
                            </div>
                            <div style="clear: both;">
                            </div>
                        </div>
                        <div id="divv1_3">
                           <%Response.Write(Session["neirong"]); %>
                        </div>
                    </div>
                    <div style="clear: both;">
                    </div>
                </div>
        
    </div>
    </form>
</body>
</html>
