<%@ Control Language="C#" AutoEventWireup="true" CodeFile="daohangtu.ascx.cs" Inherits="daohangtu" %>
 <link rel="stylesheet" href="/js/bootstrap.min.css" />
    <link rel="stylesheet" href="/js/bootstrap-theme.min.css" />
    <script src="js/typing.js"></script>


    
    <div style=" width:1150px; height:300px; background-image: url('http://localhost:10450/5Sunshine1/images/banner2.jpg'); margin-left:auto; margin-right:auto">
         <div class="col-lg-6" style=" position:absolute; z-index:2; left:10px; ">
                <div id="output-wrap" 
                    style=" margin-left:300px;  color: #CCCCCC; font-size: 20px;">

                    <span id="output"></span><span class="typing-cursor">|</span>
                </div>
            </div>
 
    </div>


    <div>
        <div style="margin-left: auto; margin-right: auto; background-color: #EAEAEA;">
            
           
        </div>
    </div>
    <div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div id="source" style="display: none">
                       
                        爱设计，爱分享，就来5Sunshine素材网

                        <br />
                        wellcome to here
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var typing = new Typing({
                source: document.getElementById('source'),
                output: document.getElementById('output'),
                delay: 120,
                done: function () {
                    console.log(this);
                    console.log('done')
                }
            });
            typing.start();
  </script>
    </div>
  