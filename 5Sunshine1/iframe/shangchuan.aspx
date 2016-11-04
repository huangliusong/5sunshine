﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shangchuan.aspx.cs" Inherits="iframe_shangchuan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Material Design滑动菜单导航代码</title>
    <style>
body {
  font-family: 'Raleway', sans-serif;
  /*background: #2C3E50;*/
}

ul {
  font-size: 0;
  position: relative;
  padding: 0;
  width: 480px;
 margin-left:40px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

li {
  display: inline-block;
  width: 160px;
  height: 60px;
  background: #ff7043;
  font-size: 16px;
  text-align: center;
  line-height: 60px;
  color: #fff;
  text-transform: uppercase;
  position: relative;
  overflow: hidden;
  cursor: pointer;
}

.slider {
  display: block;
  position: absolute;
  bottom: 0;
  left: 0;
  height: 2px;
  background: #FFFFFF;
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
}

/*  Ripple */


.ripple {
  width: 0;
  height: 0;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.4);
  -webkit-transform: scale(0);
  -ms-transform: scale(0);
  transform: scale(0);
  position: absolute;
  opacity: 1;
}

.rippleEffect {
  -webkit-animation: rippleDrop .6s linear;
  animation: rippleDrop .6s linear;
}
 @-webkit-keyframes 
rippleDrop {  100% {
 -webkit-transform: scale(2);
 transform: scale(2);
 opacity: 0;
}
}
 @keyframes 
rippleDrop {  100% {
 -webkit-transform: scale(2);
 transform: scale(2);
 opacity: 0;
}
}
</style>
</head>
<body>
    <form runat="server">
    <div class="htmleaf-container">
        <div class="htmleaf-content bgcolor-3">
            <ul>
                <li><a href="xuanzewenjian.aspx"  target="ifr" style="text-decoration: none;color: #FFFFFF;">选择文件</a></li>
                <li><a href="daichuli.aspx" target="ifr" style="text-decoration: none;color: #FFFFFF;">待处理(0)</a></li>
                <li><a href="tongguo.aspx" target="ifr" style="text-decoration: none; color: #FFFFFF;">已通过(1)</a></li>
            </ul>
        </div>
        <div style="width: 550px; min-height: 500px; margin-left:40px;  ">
            <iframe name="ifr" src="xuanzewenjian.aspx" id="_iframes" frameborder="no" scrolling="no" style="width: 550px;
                min-height: 500px;"></iframe>
        </div>
    </div>
    <script src="../js/jquery_tab.min.js" type="text/javascript"></script>
    <script>
        $("ul li").click(function (e) {

            // make sure we cannot click the slider
            if ($(this).hasClass('slider')) {
                return;
            }
            var whatTab = $(this).index();

            // Work out how far the slider needs to go
            var howFar = 160 * whatTab;

            $(".slider").css({
                left: howFar + "px"
            });

            /* Add the ripple */

            // Remove olds ones
            $(".ripple").remove();

            // Setup
            var posX = $(this).offset().left,
	  posY = $(this).offset().top,
	  buttonWidth = $(this).width(),
	  buttonHeight = $(this).height();

            // Add the element
            $(this).prepend("<span class='ripple'></span>");

            // Make it round!
            if (buttonWidth >= buttonHeight) {
                buttonHeight = buttonWidth;
            } else {
                buttonWidth = buttonHeight;
            }

            // Get the center of the element
            var x = e.pageX - posX - buttonWidth / 2;
            var y = e.pageY - posY - buttonHeight / 2;

            // Add the ripples CSS and start the animation
            $(".ripple").css({
                width: buttonWidth,
                height: buttonHeight,
                top: y + 'px',
                left: x + 'px'
            }).addClass("rippleEffect");
        });
    </script>
    </form>
</body>
</html>
