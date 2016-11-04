using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sub_fx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        updata_datalist();
    }
    protected void updata_datalist()
    {
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [Question]", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Question");
        con.Close();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("fatie.aspx");
    }
}