<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pinglun.ascx.cs" Inherits="pinglun" %>
<div id="div">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div id="div1">
                    <div id="div1_1">
                        <div>
                            <img src="images/<%#Eval("image") %>" " style="width: 125px; height: 125px; border-color: #FFFFFF;" />
                        </div>
                        <div id="div1_1_1">
                           <%#Eval("name") %>
                        </div>
                    </div>
                    <div id="div1_2">
                        <div id="div1_2_1">
                            <div id="div1_2_1_1">
                                回复于：<%#Eval("time") %>
                            </div>
                            <div id="div1_2_1_2">
                                楼<%#Eval("id") %>
                            </div>
                            <div style="clear: both;">
                            </div>
                        </div>
                        <div id="div1_3">
                            <%#Eval("contents") %>
                        </div>
                    </div>
                    <div style="clear: both;">
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
<link rel="stylesheet" type="text/css" href="css/forum.css" />