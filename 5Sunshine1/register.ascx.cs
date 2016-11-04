using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web.Script.Serialization;

public partial class register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //注册用户：
        if (TextBox1.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('账号不能为空!', 3000, 'rounded');</script>");
        }
        else if (TextBox5.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('昵称不能为空!', 3000, 'rounded');</script>");
          
        }
        else if (TextBox6.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('手机号不能为空!', 3000, 'rounded');</script>");
           
        }
        else if (TextBox7.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('验证码不能为空!', 3000, 'rounded');</script>");
           
        }
        else if (TextBox2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('密码不能为空!', 3000, 'rounded');</script>");
           
        }
        else if (TextBox4.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('密码不能为空!', 3000, 'rounded');</script>");
          
        }
        else if (TextBox3.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('邮箱不能为空!', 3000, 'rounded');</script>");
          
        }

        else
        {



            Datacon dcc = new Datacon();
            SqlConnection connn = dcc.SQL_con();
            if (connn.State == System.Data.ConnectionState.Closed)
            {
                connn.Open();
            }
            string strs = "select * from [User_login] where use_num='" + TextBox5.Text + "'  ";
            SqlCommand commm = new SqlCommand(strs, connn);
            SqlDataReader dr = commm.ExecuteReader();
            if (dr.Read())
            {
               
                Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('用户已存在!', 3000, 'rounded');</script>");
          
            }

            else
            {



                if (TextBox7.Text.Equals(Session["codes"]))
                {



                    if (!(TextBox2.Text.Equals(TextBox4.Text)))
                    {
                        Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('两次密码不一致!', 3000, 'rounded');</script>");
          
                      
                    }
                    else
                    {

                        String name_num = TextBox1.Text;
                        //string md5_name_num; //加密后数据
                        //md5_name_num = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(name_num, "MD5");
                        String pass1 = TextBox2.Text;
                        string md5_pass1; //加密后数据
                        md5_pass1 = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(pass1, "MD5");
                        String email = TextBox3.Text;
                        String pass2 = TextBox4.Text;
                        String name = TextBox5.Text;
                        string jianjie = Request.Form["OrderNote"];//个人简介
                        String sex = Request.Form["sex"];//性别
                        String g1 = Request.Form["g1"];//喜好
                        String g2 = Request.Form["g2"];//喜好
                        String g3 = Request.Form["g3"];//喜好
                        String g4 = Request.Form["g4"];//喜好
                        String like = g1 + "," + g2 + "," + g3 + "," + g4 + "";
                        Datacon dc = new Datacon();
                        SqlConnection conn = dc.SQL_con();
                        if (conn.State == System.Data.ConnectionState.Closed)
                        {
                            conn.Open();
                        }
                        string str = "insert into [User_login] (use_num,use_name,password,email,sex,jianshu,like1) values('" + name_num + "','" + name + "','" + md5_pass1 + "','" + email + "','" + sex + "','" + jianjie + "','" + like + "')";
                        SqlCommand comm = new SqlCommand(str, conn);
                        if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0)
                        {
                            // 在此处放置用户代码以初始化页面 
                            string namee = name_num;
                            string path = Server.MapPath("") + "\\file" + "\\" + namee;
                            if (Directory.Exists(path))
                            {
                                Response.Write("<script>alert('文件夹已存在了!');history.go(-1);</script>");
                            }
                            else
                            {
                                DirectoryInfo folder = Directory.CreateDirectory(path);
                                string time = Convert.ToString(Directory.GetCreationTime(path));
                                string foldername = name.Substring(name.LastIndexOf("\\") + 1);
                               // Response.Write("添加成功!");
                                //Response.Write("添加时间：" + time);
                                //Response.Write("文件夹名：" + foldername);
                            }
                            WebMessageBox.Show("注册成功，欢迎您加入我们！", "index1.aspx");
                        }
                        else
                        {
                            WebMessageBox.Show("注册失败请，检查输入信息！！", "register.aspx");
                            Response.Redirect("register.aspx");
                        }
                        if (conn.State == System.Data.ConnectionState.Open)
                        {
                            conn.Close();
                        }

                    }
                }
                else
                {
                  
                    Page.ClientScript.RegisterStartupScript(Page.ClientScript.GetType(), "myscript", "<script>Materialize.toast('验证码不一致!', 3000, 'rounded');</script>");
          
                }
            }
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
    public void but_Click(object sender, object o)
    {
        Response.Write("abc");
        Session["mobile"]="";
    }

    protected void Button1_Click1(object sender, System.EventArgs e)
    {
        if (TextBox6.Text.Equals(""))
        {
            Label1.Text = "手机号不能为空！";
        }
        else
        {
             String phnoeNumber=TextBox6.Text;//获取输入的手机号
             if (IsMobilePhone(phnoeNumber))
             {



                 Random rad = new Random();//实例化随机数产生器rad；
                 int value = rad.Next(1000, 10000);//用rad生成大于等于1000，小于等于9999的随机数；
                 Label1.Text = value.ToString(); //用label控件label1显示产生的四位随机数；
                 GetMessage gm = new GetMessage();
                 String s=gm.mian(phnoeNumber, value.ToString());//发送  返回json
                 String key = getJson(s);
                 if (key.Equals("00000"))
                 {
                     Label1.Text = "有效时间2分钟";
                     Button1.Enabled = false;
                     Button1.Text = "验证码已发送";
                     Session["codes"] = value.ToString();
                 }
                 else
                 {
                     Label1.Text = "手机号有误,请核实 !";
                 }
             }
             else
             {
                 Label1.Text = "手机号有误   !";
             }
        }
    }
    public static bool IsMobilePhone(string input)
    {
        Regex regex = new System.Text.RegularExpressions.Regex("^1\\d{10}$");
        return regex.IsMatch(input);
    }
    public String getJson(String jsons)
    {
        var serializer = new JavaScriptSerializer();
        var ret = serializer.Deserialize<JsonObject>(jsons);
        string key = ret.RespCode;

        return key;
    }
    public class JsonObject
    {
        public string RespCode { get; set; }
       
    } 
}