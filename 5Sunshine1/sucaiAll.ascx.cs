using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class sucaiAll : System.Web.UI.UserControl
{
    Datacon dc = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        String str = "";
        string type = Request.Params["tt"];
        if (type == null || type.Equals("全部"))
        {

            str = "SELECT * FROM [shine_sucai]";
        }
        else
        {
            str = "SELECT * FROM [shine_sucai] where type='"+type+"'";
        }
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_sucai");
        con.Close();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
}