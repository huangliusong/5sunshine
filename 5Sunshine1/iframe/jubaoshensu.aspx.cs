using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class iframe_jubaoshensu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [shine_report] where 举报人='3' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_report");
        con.Close();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
}