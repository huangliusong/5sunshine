using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class fatie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String title = TextBox1.Text;//获取标题
        String validate = TextBox2.Text;//获取验证码
        String contents = Request.Form["content1"];//获取内容
        if (contents.Equals("") && title.Equals("") && validate.Equals(""))
        {
            Response.Write("<script>alert('不能为空！')</script>");
        }

        else
        {
            if (String.Compare(Request.Cookies["yzmcode"].Value, this.TextBox2.Text, true) != 0)
            {
                Response.Write("<script>alert('验证码错误!')</script>");
                TextBox2.Text = "";
            }
            else
            {
                Datacon dc = new Datacon();
                SqlConnection con = dc.SQL_con();
                string answerid = "";
                int answer_id = 0;
                //建立数据库连接
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    //如果数据库连接处于关闭状态  则打开数据库
                    con.Open();
                    SqlCommand sqlcommand = new SqlCommand("select answerid from Question where id=(select max(id) from Question)", con);
                    answerid = sqlcommand.ExecuteScalar().ToString();
                    answer_id = int.Parse(answerid);
                    answer_id++;
                }
                //创建SQL语句
                string sqlstr = "insert into Question(title,question,answerid) values('" + title + "','" + contents + "','" + answer_id + "')";

                //创建SQLcommand对象
                SqlCommand conmm = new SqlCommand(sqlstr, con);
                //打开数据库连接
                if (Convert.ToInt32(conmm.ExecuteNonQuery()) > 0)
                {
                    content1.Text = "";
                    Response.Write("<script> alert('恭喜，发表成功');</script>");
                   // Response.Redirect("index_forum.aspx");
                }
                else
                {
                    Response.Write("<script> alert('数据添加失败！');</script>");
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String contents = Request.Form["content1"];//获取内容
        Session["neirong"] = contents;
        Session["title"] = TextBox1.Text;
        Response.Redirect("preview.aspx");
    }
}