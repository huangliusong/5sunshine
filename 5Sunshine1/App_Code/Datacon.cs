using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
///Datacon 的摘要说明
/// </summary>
public class Datacon
{
	public Datacon()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public SqlConnection SQL_con()
    {
        SqlConnection con = new SqlConnection("server=UBVBIYXSV1LKLZB;database=sunshine;User ID=sa;Password=111111;");
        return con;
    }
    public System.Data.DataSet GetDataSet(string s, string tablename)
    {
        SqlConnection con = new SqlConnection("Server=UBVBIYXSV1LKLZB;database=sunshine;User ID=sa;Password=111111;");
        con.Open();
        SqlDataAdapter dbAdapter = new SqlDataAdapter(s, con);
        DataSet dataset = new DataSet();
        dbAdapter.Fill(dataset, tablename);
        return dataset;

    }
}