using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class sucai : System.Web.UI.UserControl
{
    Datacon dc = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT top 12 * FROM [shine_sucai]", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_sucai");
        con.Close();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
}