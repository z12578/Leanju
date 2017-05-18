using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using LEANJU.Model;
namespace LEANJU.BLL
{
	/// <summary>
	/// 1
	/// </summary>
	public partial class Users
	{
		private readonly LEANJU.DAL.Users dal=new LEANJU.DAL.Users();
		public Users()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string emailorMbl)
		{
			return dal.Exists(emailorMbl);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.Users model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(LEANJU.Model.Users model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string emailorMbl)
		{
			
			return dal.Delete(emailorMbl);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string emailorMbllist )
		{
			return dal.DeleteList(emailorMbllist );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public LEANJU.Model.Users GetModel(string emailorMbl)
		{
			
			return dal.GetModel(emailorMbl);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public LEANJU.Model.Users GetModelByCache(string emailorMbl)
		{
			
			string CacheKey = "UsersModel-" + emailorMbl;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(emailorMbl);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (LEANJU.Model.Users)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<LEANJU.Model.Users> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<LEANJU.Model.Users> DataTableToList(DataTable dt)
		{
			List<LEANJU.Model.Users> modelList = new List<LEANJU.Model.Users>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				LEANJU.Model.Users model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = dal.DataRowToModel(dt.Rows[n]);
					if (model != null)
					{
						modelList.Add(model);
					}
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			return dal.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return dal.GetListByPage( strWhere,  orderby,  startIndex,  endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

