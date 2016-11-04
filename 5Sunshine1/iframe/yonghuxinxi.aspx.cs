using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System;
using System.Security.Cryptography;
public partial class iframe_yonghuxinxi : System.Web.UI.Page
{
    Datacon dc = new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["user"] != null)
        {
            SqlConnection con = dc.SQL_con();
            con.Open();

            //string md5_name; //加密后数据
            //md5_name = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile( Session["user"].ToString() , "MD5");

            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [User_login] where use_num='" + Session["user"].ToString() + "' ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "User_login");
            con.Close();
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        else
        {
            Response.Write("<script>alert('登陆失效！请重新登陆')</script>");
        }
        
    }


    public static string GetMD5(string myString)
    {
        MD5 md5 = new MD5CryptoServiceProvider();
        byte[] fromData = System.Text.Encoding.Unicode.GetBytes(myString);
        byte[] targetData = md5.ComputeHash(fromData);
        string byte2String = null;

        for (int i = 0; i < targetData.Length; i++)
        {
            byte2String += targetData[i].ToString("x");
        }

        return byte2String;
    }
}