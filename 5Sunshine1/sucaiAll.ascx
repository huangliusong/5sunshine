<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sucaiAll.ascx.cs" Inherits="sucaiAll" %>
<div style="height: 200px; margin-top: 40px;">
    <div style="height: 100px; margin-top: 40px;">
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 20px;
            background-color: #3EBB2B; float: left">
            <h6 class="truncate">
               <a style="color: #000000" href="sucaiDetail.aspx?tt=全部">全部素材</a> </h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 20px;
            background-color: #8BDFE0; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=海报">海报</a>  </h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #FF5742; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=会旗">  会旗</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #FFA600; float: left">
            <h6 class="truncate">
             <a style="color: #000000" href="sucaiDetail.aspx?tt=会牌">   会牌</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #C5E5E3; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=写真">  写真</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #35AAE0; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=名片">   名片</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #FE8849; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=Web设计">  Web设计</a></h6>
        </div>
    </div>
    <div style="height: 100px; margin-top: 20px;">
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 20px;
            background-color: #FE6C7F; float: left">
            <h6 class="truncate">
            <a style="color: #000000" href="sucaiDetail.aspx?tt=移动端UI设计">    移动端UI设计</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #F4B514; float: left">
            <h6 class="truncate">
               <a style="color: #000000" href="sucaiDetail.aspx?tt=其他"> 其他</a>
            </h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #92CE0F; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=创意设计">  创意设计</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #FB6054; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=展架">  展架</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #C2FAFF; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=展架">  展架</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #F35B08; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=宣传单">  宣传单</a></h6>
        </div>
        <div class="card-panel" style="width: 150px; text-align: center; margin-left: 30px;
            background-color: #F35B08; float: left">
            <h6 class="truncate">
              <a style="color: #000000" href="sucaiDetail.aspx?tt=扁平化素材">  扁平化素材</a></h6>
        </div>
    </div>
</div>
<div style="height: 30px; margin-top: 40px; margin-left: auto; margin-right: auto;
    text-align: center;">
</div>
<div>
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
        <ItemTemplate>
            <div style="width: 250px; margin-left: 10px;">
                <div style="width: 280px;">
                    <div class="card hoverable small">
                        <div class="card-image">
                            <img src="file/<%#Eval("file_yulan_url") %>" style="height: 400px;">
                            <span class="card-title">原创作品</span>
                        </div>
                        <div class="card-content" style="height: 40px;">
                            <%#Eval("jianjie")%>
                        </div>
                        <%--<div class="card-action" style=" height:60px;">
                        <a href="#">link</a>jianjie
                    </div>--%>
                    </div>
                </div>
                <div style="width: 300px; margin-top: 2px;">
                    <div style="float: left; margin-left: 2px;">
                        <a href="Downloadpage.aspx?fdfdfdf=<%#Eval("id")%>" style="text-decoration: none;"
                            class="waves-effect waves-light btn" href="images/zuopin/<%#Eval("file_zip_url") %>">
                            下载</a>
                    </div>
                    <div style="float: left; margin-left: 80px; text-decoration: none;">
                        <a href="sucaiDetail_sub.aspx?suc_dfdfddff=<%#Eval("id")%>" style="text-decoration: none;"
                            class="waves-effect waves-light btn">详情</a>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</div>
