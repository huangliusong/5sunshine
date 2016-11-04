<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_user.aspx.cs" Inherits="login_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>5sunshine登陆</title>
    <link href="css/project.min.css" rel="stylesheet" type="text/css" />
    <link href="css/base.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  
    <div class="header header-brand">
        <span class="header-logo"><a style="text-decoration: none" href="index1.aspx">5sunshine</a>
        </span>
    </div>
    <main>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-lg-push-4 col-sm-6 col-sm-push-3">
                <section class="content-inner">
						<div class="card-wrap">
							<div class="card">
								<div class="card-main">
									<div class="card-header">
										<div class="card-inner">
											<h1 class="card-heading">登陆</h1>
										</div>
									</div>
									<div class="card-inner">
										<p class="text-center">
											<span class="avatar avatar-inline avatar-lg">
												<img alt="Login" src="images/avatar-001.jpg">
											</span>
										</p>
										<form class="form" action="index.html">
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														
														<asp:TextBox ID="TextBox1" runat="server" OnClick="this,value= ''  " Text="用户名" class="form-control"></asp:TextBox>
													</div>
												</div>
											</div>
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="doc_login_password">密码</label>
														<asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                                            TextMode="Password"></asp:TextBox>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<asp:Button ID="Button1" runat="server" 
                                                            class="btn btn-block btn-brand waves-attach waves-light" Text="登陆" 
                                                            onclick="Button1_Click"></asp:Button>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<div class="checkbox checkbox-adv">
															<label for="doc_login_remember">
																<input class="access-hide" id="doc_login_remember" name="doc_login_remember" type="checkbox">记住密码
																<span class="checkbox-circle"></span><span class="checkbox-circle-check"></span><span class="checkbox-circle-icon icon">done</span>
															</label>
														</div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix">
							<p class="margin-no-top pull-left"><a class="btn btn-flat btn-brand waves-attach" href="javascript:void(0)">忘记密码?</a></p>
							<p class="margin-no-top pull-right"><a  href="register.aspx">新注册账号</a></p>
						</div>
					</section>
            </div>
        </div>
    </div>
    </main>
    <div class="footer">
        <div class="container">
            <p class="margin-no-top pull-left">
                <a class="btn btn-flat btn-brand waves-attach" href="javascript:void(0)">我享晒 5sunshine分享作品
                    晒出风采 收获你我他</a>
            </p>
        </div>
    </div>
    </form>
</body>
</html>
