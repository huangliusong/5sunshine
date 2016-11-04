using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System;
using System.Security.Cryptography;
public partial class login_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //登陆响应事件
        String name= TextBox1.Text;
        //string md5_name; //加密后数据
        //md5_name = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(name, "MD5");
                
        String pass = TextBox2.Text;
        string md5_pass; //加密后数据
        md5_pass = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "MD5");
         
        Datacon dc = new Datacon();
        SqlConnection conn = dc.SQL_con();
        if (conn.State == System.Data.ConnectionState.Closed)
        {
            conn.Open();
        }
        string str = "select * from [User_login] where use_num='" + name + "' and password='" + md5_pass + "' ";
        SqlCommand comm = new SqlCommand(str, conn);
        SqlDataReader dr = comm.ExecuteReader();
        if (name == "" | pass == "")
        {
            Response.Write("<script>alert('不能为空！')</script>");
        }
        else if (dr.Read())
        {
            Session["user"] = name;
            online();
            WebMessageBox.Show("登陆成功！", "index1.aspx");
            
        }
        else
        {
            Response.Write("<script>alert('登陆失败，检查用户名密码！')</script>");
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

    public void online()
    {
        Datacon dc = new Datacon();
        SqlConnection conn = dc.SQL_con();
        if (conn.State == System.Data.ConnectionState.Closed)
        {
            conn.Open();
        }
        String online1 = HttpContext.Current.Request.UserHostAddress;
        string strHostName = System.Net.Dns.GetHostName();
        string clientIPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
        string str = "insert into [shine_online] (上线地点,ip地址,use_num) values('" + clientIPAddress + "','" + online1 + "','" + Session["user"].ToString() + "')";
        SqlCommand comm = new SqlCommand(str, conn);
        if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0)
        {
 
        }
        else
        {
           
        }
        if (conn.State == System.Data.ConnectionState.Open)
        {
            conn.Close();
        }
    }
}