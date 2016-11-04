using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        

        if (Session["user"] == null)
        {
            login.Text = "<a href='login_user.aspx' >登陆</a>";
            register.Text = "<a href='register.aspx' >注册</a>";


        }
        else
        {
            register.Text = "<a href='uploading.aspx'>" + Session["user"].ToString() + "</a>";
            login.Text = "<a href='exit.aspx'>退出</a>";
            xiaoxi();
        }

       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Txt_sousuo.Text == "")
        {
            Response.Write("<script>alert('不能为空')</script>");
        }
        else
        {

        }
    }
    public void xiaoxi()
    {
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select count(id) as num from shine_message where message_uer='3' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_message");
        con.Close();
        DataListaa.DataSource = ds;
        DataListaa.DataBind();
    }

}