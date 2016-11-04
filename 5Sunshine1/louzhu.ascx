<%@ Control Language="C#" AutoEventWireup="true" CodeFile="louzhu.ascx.cs" Inherits="louzhu" %>
<div id="divv">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div id="divv1">
                    <div id="divv1_1">
                        <div>
                            <img src="images/tou1.jpg" " style="width: 125px; height: 125px; border-color: #FFFFFF;" />
                        </div>
                        <div id="divv1_1_1">
                           黄柳淞
                        </div>
                    </div>
                    <div id="divv1_2">
                        <div id="divv1_2_1">
                            <div id="divv1_2_1_1">
                               发表于：2016-02-02 17:09:15
                            </div>
                            <div id="divv1_2_1_2">
                                楼主
                            </div>
                            <div style="clear: both;">
                            </div>
                        </div>
                        <div id="divv1_3">
                            1
                        </div>
                    </div>
                    <div style="clear: both;">
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
<link rel="stylesheet" type="text/css" href="css/forum.css" />