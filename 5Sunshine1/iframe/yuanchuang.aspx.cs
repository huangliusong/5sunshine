using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class iframe_yuanchuang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String file_yulan_url = "";
        String file_zip_url = "";
        bool fileIsValid = false;
        //如果确认了上传文件，则判断文件类型是否符合要求
        if (this.FileUpload1.HasFile)
        {
            //获取上传文件的后缀
            String fileExtension = System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
            String[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png" };
            //判断文件类型是否符合要求
            for (int i = 0; i < restrictExtension.Length; i++)
            {
                if (fileExtension == restrictExtension[i])
                {
                    fileIsValid = true;
                }
            }
            //如果文件类型符合要求,调用SaveAs方法实现上传,并显示相关信息
            if (fileIsValid == true)
            {
                try
                {
                    this.Image1.ImageUrl = "~/file/" + Session["user"].ToString() + "/" + FileUpload1.FileName;
                    //预览文件地址
                    file_yulan_url = Session["user"] + "/" + FileUpload1.FileName;
                    this.FileUpload1.SaveAs(Server.MapPath("~/file/" + Session["user"].ToString() + "/") + FileUpload1.FileName);
                    this.Label1.Text = "预览文件上传成功";
                    this.Label1.Text += "<Br/>";
                    this.Label1.Text += "<li>" + "原文件路径：" + this.FileUpload1.PostedFile.FileName;
                    this.Label1.Text += "<Br/>";
                    this.Label1.Text += "" + "文件大小：" + this.FileUpload1.PostedFile.ContentLength + "字节";
                    this.Label1.Text += "&nbsp;&nbsp;";
                    this.Label1.Text += "" + "文件类型：" + this.FileUpload1.PostedFile.ContentType;
                }
                catch (Exception ex)
                {
                    this.Label1.Text = "无法上传文件" + ex.Message;
                }
            }
            else
            {
                this.Label1.Text = "上传失败，只能够上传后缀为.gif,.jpg,.bmp,.png的文件";
            }
        }


        //##########################################################################################################


        //如果确认了上传文件，则判断文件类型是否符合要求
        if (this.FileUpload2.HasFile)
        {
            //获取上传文件的后缀
            String fileExtension = System.IO.Path.GetExtension(this.FileUpload2.FileName).ToLower();
            String[] restrictExtension = { ".ISO", ".jar", ".rar", ".zip", ".ai", ".cdr", ".cdr" };
            //判断文件类型是否符合要求
            for (int i = 0; i < restrictExtension.Length; i++)
            {
                if (fileExtension == restrictExtension[i])
                {
                    fileIsValid = true;
                }
            }
            //如果文件类型符合要求,调用SaveAs方法实现上传,并显示相关信息
            if (fileIsValid == true)
            {
                try
                {
                    this.Image2.ImageUrl = "~/imag/bg2.png";
                    //源文件地址
                    file_zip_url = Session["user"] + "/" + FileUpload2.FileName;
                    this.FileUpload2.SaveAs(Server.MapPath("~/file/" + Session["user"].ToString() + "/") + FileUpload2.FileName);
                    this.Label2.Text = "源文件上传成功";
                    this.Label2.Text += "<Br/>";
                    this.Label2.Text += "<li>" + "原文件路径：" + this.FileUpload2.PostedFile.FileName;
                    this.Label2.Text += "<Br/>";
                    this.Label2.Text += "" + "文件大小：" + this.FileUpload2.PostedFile.ContentLength + "字节";
                    this.Label2.Text += "&nbsp;&nbsp;";
                    this.Label2.Text += "" + "文件类型：" + this.FileUpload2.PostedFile.ContentType;
                }
                catch (Exception ex)
                {
                    this.Label2.Text = "无法上传文件" + ex.Message;
                }
            }
            else
            {
                this.Label2.Text = "上传失败，只能够上传后缀为.ai,.cdr.psd,.zip,.rar,.jar,.IOS的文件";
            }
        }


        String use_number = Session["user"].ToString();
        String file_zip = "源文件名";
        String file_yulan = "预览文件名";
        String jianjie = "素材简介";
        String type = "原创作品";


        Datacon dc = new Datacon();
        SqlConnection conn = dc.SQL_con();
        if (conn.State == System.Data.ConnectionState.Closed)
        {
            conn.Open();
        }
        string str = "insert into [shine_sucai] (use_num,file_zip,file_yulan,file_zip_url,file_yulan_url,jianjie,type) values('" + use_number + "','" + file_zip + "','" + file_yulan + "','" + file_yulan_url + "','" + file_yulan_url + "','" + jianjie + "','" + type + "')";
        SqlCommand comm = new SqlCommand(str, conn);
        if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0)
        {
            // 在此处放置用户代码以初始化页面 

            Response.Write("<script> alert('恭喜 ，上传成功！')</script>");

        }
        else
        {
            Response.Write("<script> alert('抱歉 ，上传失败！')</script>");
        }
        if (conn.State == System.Data.ConnectionState.Open)
        {
            conn.Close();
        }

    }



}