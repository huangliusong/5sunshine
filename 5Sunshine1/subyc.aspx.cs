using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
public partial class subyc : System.Web.UI.Page
{
    
    static Datacon data1 = new Datacon();
    SqlConnection conn = data1.SQL_con();
    SqlDataAdapter sda;
    SqlCommand comm;
    DataSet ds;
    static PagedDataSource pds = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BinDataList3(0);
        }
    }
    #region 设置分页
    /// <summary>
    /// 设置分页
    /// </summary>
    /// <param name="currentpage"></param>
   private void BinDataList3(int currentpage)
    {
        pds.AllowPaging = true;
        pds.PageSize = 5;
        pds.CurrentPageIndex = currentpage;
        string strsql = "SELECT [image], [gx], [name], [yw_id] FROM [yc_wait] ORDER BY [yw_id] DESC";
        conn.Open();
        sda = new SqlDataAdapter(strsql, conn);
        ds = new DataSet();
        sda.Fill(ds);
        pds.DataSource = ds.Tables[0].DefaultView;
        DataList3.DataSource = pds;
        DataList3.DataBind();
        conn.Close();
    }
    protected void DataList3_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Footer)
        {
            LinkButton PerPage = e.Item.FindControl("uppage") as LinkButton;
            LinkButton NextPage = e.Item.FindControl("nextpage") as LinkButton;
            if (pds.IsFirstPage)
            {
                PerPage.Enabled = false;
            }
            if (pds.IsLastPage)
            {
                NextPage.Enabled = false;
            }
        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "pre":
                pds.CurrentPageIndex = pds.CurrentPageIndex - 1;
                BinDataList3(pds.CurrentPageIndex);
                break;
            case "next":
                pds.CurrentPageIndex = pds.CurrentPageIndex + 1;
                BinDataList3(pds.CurrentPageIndex);
                break;
        }
    }
    #endregion 设置分页

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into yc_advice(advice) values ('" + TextBox1.Text + "')";
        comm = new SqlCommand(sql, conn);
        /*comm.CommandType = CommandType.StoredProcedure;
        comm.Parameters.Add(new SqlParameter("@advice", SqlDbType.VarChar, 280));
        comm.Parameters["@advice"].Value = this.TextBox1.Text;*/
        if (conn.State.Equals(ConnectionState.Closed)) { conn.Open(); }
        if (TextBox1.Text.Trim().Equals("")) { WebMessageBox.Show("信息提示：提交失败！请确定内容是否为空或者字数超过140！"); }
        else
        {
            if (Convert.ToInt32(comm.ExecuteNonQuery()) > 0) {
                WebMessageBox.Show("信息提示：提交成功！您的宝贵建议就是我们前进的动力，感谢您的参与!");
                TextBox1.Text = "";
            } 

        }
        if (conn.State.Equals(ConnectionState.Open)) conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
}