using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
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
                    this.Image1.ImageUrl = "~/images/" + FileUpload1.FileName;
                    this.FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
                    this.Label1.Text = "文件上传成功";
                    this.Label1.Text += "<Br/>";
                    this.Label1.Text += "<li>" + "原文件路径：" + this.FileUpload1.PostedFile.FileName;
                    this.Label1.Text += "<Br/>";
                    this.Label1.Text += "<li>" + "文件大小：" + this.FileUpload1.PostedFile.ContentLength + "字节";
                    this.Label1.Text += "<Br/>";
                    this.Label1.Text += "<li>" + "文件类型：" + this.FileUpload1.PostedFile.ContentType;
                }
                catch (Exception ex)
                {
                    this.Label1.Text = "无法上传文件" + ex.Message;
                }
            }
            else
            {
                this.Label1.Text = "上传失败，只能够上传后缀为.gif,.jpg,.bmp,.png的文件夹";
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
                    this.FileUpload2.SaveAs(Server.MapPath("~/images/") + FileUpload2.FileName);
                    this.Label2.Text = "文件上传成功";
                    this.Label2.Text += "<Br/>";
                    this.Label2.Text += "<li>" + "原文件路径：" + this.FileUpload2.PostedFile.FileName;
                    this.Label2.Text += "<Br/>";
                    this.Label2.Text += "<li>" + "文件大小：" + this.FileUpload2.PostedFile.ContentLength + "字节";
                    this.Label2.Text += "<Br/>";
                    this.Label2.Text += "<li>" + "文件类型：" + this.FileUpload2.PostedFile.ContentType;
                }
                catch (Exception ex)
                {
                    this.Label2.Text = "无法上传文件" + ex.Message;
                }
            }
            else
            {
                this.Label2.Text = "上传失败，只能够上传后缀为.ai,.cdr.psd,.zip,.rar,.jar,.IOS的文件夹";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
