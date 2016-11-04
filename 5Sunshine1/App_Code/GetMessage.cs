using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.IO;
using System.Text;
using System.Web.Security;
using System.Security.Cryptography;
/// <summary>
///GetMessage 的摘要说明
/// </summary>
public class GetMessage
{
    public GetMessage()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    

    public String mian(String number, String code)
    {
        string accountSid = "ddf704c9bee0495eafbbbe768005ad0d";
        string appId = "38c14d81e0de4e8bac5c4768d2110dd9";
        string templateId = "20780120";
        string to = number;
        string param = code;
        string authToken = "3b292ab538e4468aa874bc45e5756cd0";
        string timestamp = DateTime.Now.ToString("yyyyMMddHHmmss");
        //MD5(ACCOUNT SID + AUTH TOKEN + timestamp)
        string sig = GetMd5Hash(accountSid + authToken + timestamp);
        string respDataType = "json";
        string paramList = string.Format(
                "accountSid={0}&appId={1}&templateId={2}&to={3}&param={4}&timestamp={5}&sig={6}&respDataType={7}",
                accountSid, appId, templateId, to, param, timestamp, sig.ToLowerInvariant(), respDataType);
        string requestPost = RequestPost("https://api.qingmayun.com/20150822/SMS/templateSMS", paramList);
        return requestPost;
    }

    static string GetMd5Hash(string md5Str)
    {
        return FormsAuthentication.HashPasswordForStoringInConfigFile(md5Str, "MD5");
    }

    public static string RequestPost(string requestUrl, string context, string contentType = "application/x-www-form-urlencoded")
    {
        var pageStr = string.Empty;
        Uri url = new Uri(requestUrl);
        byte[] reqbytes = Encoding.UTF8.GetBytes(context);
        try
        {
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.Timeout = 15000;
            httpWebRequest.ContentLength = reqbytes.Length;

            httpWebRequest.ContentType = contentType;
            httpWebRequest.Method = "POST";
            Stream stm = httpWebRequest.GetRequestStream();
            stm.Write(reqbytes, 0, reqbytes.Length);

            stm.Close();
            HttpWebResponse wr = (HttpWebResponse)httpWebRequest.GetResponse();
            Stream stream = wr.GetResponseStream();
            StreamReader srd = new StreamReader(stream, Encoding.UTF8);
            pageStr += srd.ReadToEnd();
            stream.Close();
            srd.Close();
        }
        catch (Exception ex)
        {
            pageStr += ex.Message;
        }

        return pageStr;
    }
}