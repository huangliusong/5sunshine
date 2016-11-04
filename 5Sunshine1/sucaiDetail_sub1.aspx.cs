using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class sucaiDetail_sub1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        string id = Request.Params["suc_dfdfddff"];
        if (id == null)
        {
            Response.Redirect("sucaiDetail_sub1.aspx?suc_dfdfddff=2");
        }
        else
        {
            Datacon dc = new Datacon();
            SqlConnection con = dc.SQL_con();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [shine_sucai] where id=" + id + "", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "shine_message");
            con.Close();
            DataList1.DataSource = ds;
            DataList1.DataBind();
            pingluns();
        }
        bingdate();
    }

    public void pingluns()
    {
        string id = Request.Params["suc_dfdfddff"];
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT *  FROM [shine_sucai_pinglun]  where sucai_id='" + id + "' order by time desc  ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_sucai_pinglun");
        con.Close();
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string pinglun = Request.Form["pingluntext"];//评论信息
        if (pinglun.Equals(""))
        {
            Response.Write("<script>alert('内容不能为空！')</script>");
        }
        else
        {

            for (int i = 0; i < 61; i++)
            {
                //改变代码
                pinglun = pinglun.Replace("a" + i + ".gif", "<img src=images/face/a" + i + ".gif/>");

            }
            string id = Request.Params["suc_dfdfddff"];
            Datacon dc = new Datacon();
            SqlConnection conn = dc.SQL_con();
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
            }
            string str = "insert into [shine_sucai_pinglun] (sucai_id,pinglun_yonghu,touxiang,pinglun_neirong) values('" + id + "','" + Session["user"] + "','qq.png','" + pinglun + "')";
            SqlCommand comm = new SqlCommand(str, conn);
            if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0)
            {
                // 在此处放置用户代码以初始化页面 
                pingluns();
            }
            else
            {
                WebMessageBox.Show("评论出错！", "sucaiDetail_sub.aspx?suc_dfdfddff=" + id);

            }


        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Datacon dc = new Datacon();
        SqlConnection conn = dc.SQL_con();
        if (conn.State == System.Data.ConnectionState.Closed)
        {
            conn.Open();
        }
        string url = Request.Url.ToString();
        string str = "insert into [shine_sucai_shoucang] (shoucang_id,shoucang_url) values('" + Session["user"] + "','" + url + "')";
        SqlCommand comm = new SqlCommand(str, conn);
        if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0)
        {
            // 在此处放置用户代码以初始化页面 

            string id = Request.Params["suc_dfdfddff"];
            WebMessageBox.Show("恭喜,收藏成功！", "sucaiDetail_sub.aspx?suc_dfdfddff=" + id);
        }
        else
        {
            WebMessageBox.Show("未来收藏！", "Logon.aspx");
        }
        if (conn.State == System.Data.ConnectionState.Open)
        {
            conn.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //获取客户端的ip地址
        string strHostName = System.Net.Dns.GetHostName();
        string userip = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
        //创建cookie对象：


        if (Session["ipaddress"] == null)
        {
            Session["ipaddress"] = userip;
            Datacon dc = new Datacon();
            SqlConnection con = dc.SQL_con();
            //更新语句
            con.Open();
            String str = "update shine_sucai_zan set dianzan_shu=dianzan_shu+1 where id='1' ";
            SqlCommand comm = new SqlCommand(str, con);
            int record = Convert.ToInt32(comm.ExecuteNonQuery());
            if (record > 0)
            {

                bingdate();
            }
            con.Close();
        }


    }

    public void bingdate()
    {
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT *  FROM [shine_sucai_zan]  ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_sucai_zan");
        con.Close();
        DataList5.DataSource = ds;
        DataList5.DataBind();
    }
}