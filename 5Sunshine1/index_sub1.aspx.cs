using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class index_sub1 : System.Web.UI.Page
{
    Datacon dc = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.Params["id"];
        if (id == null)
        {
            Response.Redirect("index1.aspx");
        }
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from new where id='" + id + "'", con); 
        DataSet ds = new DataSet();
        da.Fill(ds, "new");
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();

        /* string sql = "select  from new where id='" + id + "'";
         SqlCommand cmd = new SqlCommand(sql, con);
         SqlDataReader dr = cmd.ExecuteReader();
         while (dr.Read())
         {
             article.Text = dr["topic"].ToString();
         }
        
          string s = "select topic from new where id='" + id + "'";
          SqlDataAdapter da1 = new SqlDataAdapter(s, con);
          DataSet ds1 = new DataSet();
        
          Response.Write(ds1);

         Label1.Text = Convert.ToString(Session["i_tool"]);*/

    }
}