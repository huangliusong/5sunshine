using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Downloadpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.Params["fdfdfdf"];
        if (id == null)
        {
            Response.Redirect("sucaiDetail.aspx");
        }
        else
        {
            Datacon dc = new Datacon();
            SqlConnection con = dc.SQL_con();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [shine_sucai] where id=" + id + "", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "shine_message");
            //if (ds.Tables["shine_message"].Rows.Count == 0)
            //{
            //    Response.Write("没有查询到数据，请重试");

            //}
            //else
            //{
            //    Response.Write("<br>");
            //    for (int i = 0; i < ds.Tables["shine_message"].Rows.Count; i++)
            //    {
            //        Response.Write(ds.Tables["shine_message"].Rows[i]["file_zip_url"] + "<br>");
            //    }


            //}
            con.Close();
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        string id = Request.Params["fdfdfdf"];
        String str = "";
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [shine_sucai] where id=" + id + "", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_message");
        if (ds.Tables["shine_message"].Rows.Count == 0)
        {
            Response.Write("没有查询到数据，请重试");

        }
        else
        {
            Response.Write("<br>");
            for (int i = 0; i < ds.Tables["shine_message"].Rows.Count; i++)
            {
                str = (ds.Tables["shine_message"].Rows[i]["file_zip_url"]).ToString();
            }

            Datacon dcc = new Datacon();
            SqlConnection conn = dc.SQL_con();
            //更新语句
            conn.Open();
            String strs = "update shine_sucai set xiazailiang=xiazailiang+1 where id='"+id+"' ";
            SqlCommand commd = new SqlCommand(strs, con);
            int record = Convert.ToInt32(commd.ExecuteNonQuery());
            if (record > 0)
            {
                //链接到下载界面
                Response.Redirect("file/zuopin/" + str);
            }
            con.Close();  
            

            
        }
    }

    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        string id = Request.Params["fdfdfdf"];
        String str = "";
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [shine_sucai] where id=" + id + "", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_message");
        if (ds.Tables["shine_message"].Rows.Count == 0)
        {
            Response.Write("没有查询到数据，请重试");

        }
        else
        {
            Response.Write("<br>");
            for (int i = 0; i < ds.Tables["shine_message"].Rows.Count; i++)
            {
                str = (ds.Tables["shine_message"].Rows[i]["file_zip_url"]).ToString();
            }
            Response.Redirect("file/zuopin/" + str);
        }
    }

    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        string id = Request.Params["fdfdfdf"];
        String str = "";
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [shine_sucai] where id=" + id + "", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_message");
        if (ds.Tables["shine_message"].Rows.Count == 0)
        {
            Response.Write("没有查询到数据，请重试");

        }
        else
        {
            Response.Write("<br>");
            for (int i = 0; i < ds.Tables["shine_message"].Rows.Count; i++)
            {
                str = (ds.Tables["shine_message"].Rows[i]["file_zip_url"]).ToString();
            }
            Response.Redirect("file/zuopin/" + str);
        }
    }
}