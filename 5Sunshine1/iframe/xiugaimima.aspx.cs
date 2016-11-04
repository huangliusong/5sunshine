using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class iframe_xiugaimima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        String old_pass = TextBox1.Text;
        String new_pass1 = TextBox2.Text;
        String new_pass2 = TextBox3.Text;
        //获取旧密码；
        Datacon dc = new Datacon();
        SqlConnection con = dc.SQL_con();
        con.Open();


        if (old_pass.Equals(""))
        {

        }
    }
}