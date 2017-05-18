using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using LEANJU.Model;
namespace LEANJU.BLL
{
	/// <summary>
	/// House
	/// </summary>
	public partial class House
	{
		private readonly LEANJU.DAL.House dal=new LEANJU.DAL.House();
		public House()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string Hno)
		{
			return dal.Exists(Hno);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.House model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(LEANJU.Model.House model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string Hno)
		{
			
			return dal.Delete(Hno);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string Hnolist )
		{
			return dal.DeleteList(Hnolist );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public LEANJU.Model.House GetModel(string Hno)
		{
			
			return dal.GetModel(Hno);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public LEANJU.Model.House GetModelByCache(string Hno)
		{
			
			string CacheKey = "HouseModel-" + Hno;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(Hno);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (LEANJU.Model.House)objModel;
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
		public List<LEANJU.Model.House> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<LEANJU.Model.House> DataTableToList(DataTable dt)
		{
			List<LEANJU.Model.House> modelList = new List<LEANJU.Model.House>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				LEANJU.Model.House model;
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

