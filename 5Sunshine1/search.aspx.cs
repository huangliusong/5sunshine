using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class search : System.Web.UI.Page
{
    Datacon data = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        DataList1.DataSource = data.GetDataSet(Convert.ToString(Session["search"]), "xiazai");
        DataList1.DataKeyField = "id";
        DataList1.DataBind();
        Label1.Text = Convert.ToString(Session["tool"]);
    }
}