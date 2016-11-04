using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class qtregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script> alert('昵称不能为空')</script>");
        }
        else if (TextBox2.Text == "")
        {
            Response.Write("<script> alert('账号不能为空')</script>");
        }
        else if (TextBox3.Text == "")
        {
            Response.Write("<script> alert('密码不能为空')</script>");
        }
        /*else
       {
           Datacon dc = new Datacon();
           SqlConnection conn = dc.SQL_con();
           if (conn.State == System.Data.ConnectionState.Closed)
           {
               conn.Open();
           }
          string str = "insert into userlogin (username,pwd,sex,image,geqian,email) values('" + TextBox1.Text.Trim().ToString() + "','qq.png','" + TextBox2.Text.Trim().ToString() + "','" + TextBox3.Text.Trim().ToString() + "','" + TextBox4.Text.Trim().ToString() + "','" + TextBox5.Text.Trim().ToString() + "','" + TextBox6.Text.Trim().ToString() + "','" + TextBox8.Text.Trim().ToString() + "')";
           SqlCommand comm = new SqlCommand(str, conn);
           if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0)
           {
               Response.Write("<script> alert('注册成功，立即跳转登陆！')</script>");
               Response.Write("<script language='javascript' type='text/javascript'>tiaozhuan(); function tiaozhuan(){setTimeout(window.location.href='login.aspx',2); }</script>");

           }
           else
           {
               Response.Write("<script> alert('注册失败！请检查输入信息!')</script>");
           }
           if (conn.State == System.Data.ConnectionState.Open)
           {
               conn.Close();
           }
       }*/
    }
}