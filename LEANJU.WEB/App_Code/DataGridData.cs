using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// DataGridData 的摘要说明
/// </summary>
public class DataGridData
{
	public DataGridData()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /// <summary>
    /// 满足条件总数据条数
    /// </summary>
    public int total { get; set; }

    /// <summary>
    /// 当页数据集
    /// </summary>
    public DataSet rows { get; set; }
}