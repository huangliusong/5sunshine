<%@ Control Language="C#" AutoEventWireup="true" CodeFile="uploading.ascx.cs" Inherits="uploading" %>
<style type="text/css">
* {margin: 0; padding: 0;}

.nav ul {
	background: white;
	 border-top: 6px solid #ff7043;
	width: 200px; margin: 5em auto;
}
.nav ul li {
	list-style-type: none;
    position: relative;
	overflow: hidden;
}
.nav ul li a {
	font: normal 14px/28px Montserrat; 
	color: #ff7043;
	display: block; 
	padding: 10px 15px;
	text-decoration: none;
	cursor: pointer; /*since the links are dummy without href values*/
	/*prevent text selection*/
	user-select: none;
	/*static positioned elements appear behind absolutely positioned siblings(.ink in this case) hence we will make the links relatively positioned to bring them above .ink*/
	position: relative;
}

/*.ink styles - the elements which will create the ripple effect. The size and position of these elements will be set by the JS code. Initially these elements will be scaled down to 0% and later animated to large fading circles on user click.*/
.nav .ink {
	display: block; 
	position: absolute;
	background: #ff7043;
	border-radius: 100%;
	transform: scale(0);
}
/*animation effect*/
.nav .ink.animate {animation: ripple 0.65s linear;}
@keyframes ripple {
	100% {opacity: 0; transform: scale(2.5);}
}
</style>
<div class="nav">
    <ul>
        <li><a href="iframe/yonghuxinxi.aspx" target="if">个人中心</a></li>
        <li><a href="iframe/xiaoxi.aspx"  target="if">消息中心</a></li>
        <li><a href="iframe/shangchuan.aspx" target="if">上传素材</a></li>
        <li><a href="iframe/yuanchuang.aspx" target="if">上传原创</a></li>
        <li><a href="iframe/zuopinguanli.aspx" target="if">作品管理</a></li>
        <li><a href="iframe/shangxianjilu.aspx" target="if">上线记录</a></li>
        <li><a href="iframe/xiugaimima.aspx" target="if">修改密码</a></li>
        <li><a href="iframe/jubaoshensu.aspx" target="if">举报申述</a></li>

    </ul>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
    //jQuery time
    var parent, ink, d, x, y;
    $(".nav ul li a").click(function (e) {
        parent = $(this).parent();
        //create .ink element if it doesn't exist
        if (parent.find(".ink").length == 0)
            parent.prepend("<span class='ink'></span>");

        ink = parent.find(".ink");
        //incase of quick double clicks stop the previous animation
        ink.removeClass("animate");

        //set size of .ink
        if (!ink.height() && !ink.width()) {
            //use parent's width or height whichever is larger for the diameter to make a circle which can cover the entire element.
            d = Math.max(parent.outerWidth(), parent.outerHeight());
            ink.css({ height: d, width: d });
        }

        //get click coordinates
        //logic = click coordinates relative to page - parent's position relative to page - half of self height/width to make it controllable from the center;
        x = e.pageX - parent.offset().left - ink.width() / 2;
        y = e.pageY - parent.offset().top - ink.height() / 2;

        //set the position and add class .animate
        ink.css({ top: y + 'px', left: x + 'px' }).addClass("animate");
    })
</script>
