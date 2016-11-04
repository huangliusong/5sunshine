using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class qtLogin : System.Web.UI.Page
{
    Random random = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//产生四位随机数
            lblCheckCode.Text = random.Next(1000, 9999).ToString();
        if (Session["user"] != null)
        {
            //Response.Redirect("Index.aspx");

        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        UserName.Text = "";
        Password.Text = "";
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (lblCheckCode.Text.Trim() != txtCheckCode.Text.Trim())    //判断验证码
        {
            WebMessageBox.Show("验证码不正确，请重新输入！");
        }
        else
        {
            string name = UserName.Text.Trim();
            string pass = Password.Text.Trim();
            Datacon dc = new Datacon();
            SqlConnection conn = dc.SQL_con();
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
            }
            string str = "select * from userlogin where username='" + name + "' and pwd='" + pass + "' ";
            SqlCommand comm = new SqlCommand(str, conn);
            SqlDataReader dr = comm.ExecuteReader();
            if (name == "" | pass == "")
            {
                Response.Write("<script>alert('不能为空！')</script>");
            }
            else if (dr.Read())
            {
                Session["user"] = name;
                Response.Redirect("index1.aspx");

            }
            else
            {
                Response.Write("<script>alert('登录失败！请确保已注册且用户名密码不为空！')</script>");
            }
        }
    }


    protected void zhuzhi_Click(object sender, EventArgs e)
    {
        UserName.Text = "";
        Password.Text = "";
    }
}