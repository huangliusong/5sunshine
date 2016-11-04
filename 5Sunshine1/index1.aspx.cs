using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class index1 : System.Web.UI.Page
{
    static Datacon data1 = new Datacon();
    SqlConnection conn = data1.SQL_con();
    SqlDataAdapter sda;
    DataSet ds;
    static PagedDataSource pds = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BinDataList1(0);
        }
    }
    #region 设置分页
    /// <summary>
    /// 设置分页
    /// </summary>
    /// <param name="currentpage"></param>
    private void BinDataList1(int currentpage)
    {
        pds.AllowPaging = true;
        pds.PageSize = 11;
        pds.CurrentPageIndex = currentpage;
        string strsql = "SELECT * FROM new ORDER BY time DESC";
        conn.Open();
        sda = new SqlDataAdapter(strsql, conn);
        ds = new DataSet();
        sda.Fill(ds);
        pds.DataSource = ds.Tables[0].DefaultView;
        DataList1.DataSource = pds;
        DataList1.DataBind();
        conn.Close();

    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Footer)
        {
            Label currentpage = e.Item.FindControl("onqian") as Label;
            Label pagecount = e.Item.FindControl("oncount") as Label;
            LinkButton FirstPage = e.Item.FindControl("shouye") as LinkButton;
            LinkButton PerPage = e.Item.FindControl("uppage") as LinkButton;
            LinkButton NextPage = e.Item.FindControl("downpage") as LinkButton;
            LinkButton LastPage = e.Item.FindControl("weiye") as LinkButton;
            currentpage.Text = (pds.CurrentPageIndex + 1).ToString();
            pagecount.Text = pds.PageCount.ToString();
            if (pds.IsFirstPage)
            {
                FirstPage.Enabled = false;
                // FirstPage.ForeColor= ConsoleColor;
                PerPage.Enabled = false;
            }
            if (pds.IsLastPage)
            {
                LastPage.Enabled = false;
                NextPage.Enabled = false;
            }
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "first":
                pds.CurrentPageIndex = 0;
                BinDataList1(pds.CurrentPageIndex);
                break;
            case "pre":
                pds.CurrentPageIndex = pds.CurrentPageIndex - 1;
                BinDataList1(pds.CurrentPageIndex);
                break;
            case "next":
                pds.CurrentPageIndex = pds.CurrentPageIndex + 1;
                BinDataList1(pds.CurrentPageIndex);
                break;
            case "last":
                pds.CurrentPageIndex = pds.PageCount - 1;
                BinDataList1(pds.CurrentPageIndex);
                break;
            case "search":
                if (e.Item.ItemType == ListItemType.Footer)
                {
                    int pagecount = int.Parse(pds.PageCount.ToString());
                    TextBox txtpage = e.Item.FindControl("TextBox1") as TextBox;
                    int num = 0;
                    if (!txtpage.Text.Equals(""))
                    {
                        num = Convert.ToInt32(txtpage.Text.ToString());
                    }
                    if (num <= 0 || num > pagecount)
                    {
                        Response.Write("<script><alert('请输入页数并确定没有超出总页数！')</script>");
                    }
                    else
                    {
                        BinDataList1(num - 1);
                    }

                }
                break;
        }
    }
    #endregion
  

}