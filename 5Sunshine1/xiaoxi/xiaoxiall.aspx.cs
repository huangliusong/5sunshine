using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class xiaoxi_xiaoxiall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [shine_message] where message_uer='"+Session["user"]+"' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "pinglun");
        con.Close();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
}