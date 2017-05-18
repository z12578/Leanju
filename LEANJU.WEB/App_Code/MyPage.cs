using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// MyPage 的摘要说明
/// </summary>
public class MyPage : Page
{
	public MyPage()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 用于向前台js发送响应信息
    /// </summary>
    /// <param name="stat"></param>
    /// <param name="message"></param>
    public void WriteMessage(string stat, string message)
    {
        base.Response.ClearContent();
        base.Response.Clear();
        base.Response.Buffer = true;
        base.Response.ExpiresAbsolute = DateTime.Now.AddDays(-1.0);
        base.Response.AddHeader("pragma", "no-cache");
        base.Response.AddHeader("cache-control", "");
        base.Response.CacheControl = "no-cache";
        base.Response.ContentType = "text/plain";
        base.Response.Write(message);
        base.Response.Flush();
        base.Response.End();
    }
}