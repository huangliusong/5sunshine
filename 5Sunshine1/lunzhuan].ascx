<%@ Control Language="C#" AutoEventWireup="true" CodeFile="lunzhuan].ascx.cs" Inherits="lunzhuan_" %>

    <link href="css/slides.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="js/slides.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        // Slideshow 
        $("#slider").responsiveSlides({
            auto: true,
            pager: false,
            nav: true,
            speed: 500,
            timeout: 4000,
            pager: true,
            pauseControls: true,
            namespace: "callbacks"
        });
    });
</script>


   <div class="callbacks_container">
	<ul class="rslides" id="slider">
		<li><a href="#"><img src="images/3.png" alt=""/></a></li>
		<li><a href="#"><img src="images/a.png" alt=""/></a></li>
		<li><a href="#"><img src="images/2.png" alt=""/></a></li>
		<!--<li><a href="#"><img src="images/2.jpg" alt=""></a></li>-->
	</ul>
</div>
