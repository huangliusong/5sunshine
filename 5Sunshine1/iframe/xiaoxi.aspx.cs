using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class iframe_xiaoxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select c1=count(id),c2=(select count(id) from shine_message where state='未读' and message_uer='" + Session["user"] + "' ),c3=(select count(id) from shine_message where message_uer='" + Session["user"] + "'  ) from shine_message where state='已读' and message_uer='" + Session["user"] + "' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "shine_message");
        con.Close();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
}