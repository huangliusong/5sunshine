using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class FileDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面 
        string name = "aa";
        string path =Server.MapPath("")+"\\file"  + "\\" + name;
        if (Directory.Exists(path))
        {
            Response.Write("<script>alert('文件夹已存在了!');history.go(-1);</script>");
        }
        else
        {
            DirectoryInfo folder = Directory.CreateDirectory(path);
            string time = Convert.ToString(Directory.GetCreationTime(path));
            string foldername = name.Substring(name.LastIndexOf("\\") + 1);
            Response.Write("添加成功!");
            Response.Write("添加时间：" + time);
            Response.Write("文件夹名：" + foldername);
        }

    }
}