using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using LEANJU.Model;
namespace LEANJU.BLL
{
	/// <summary>
	/// Landlord
	/// </summary>
	public partial class Landlord
	{
		private readonly LEANJU.DAL.Landlord dal=new LEANJU.DAL.Landlord();
		public Landlord()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string Lno)
		{
			return dal.Exists(Lno);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.Landlord model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(LEANJU.Model.Landlord model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string Lno)
		{
			
			return dal.Delete(Lno);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string Lnolist )
		{
			return dal.DeleteList(Lnolist );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public LEANJU.Model.Landlord GetModel(string Lno)
		{
			
			return dal.GetModel(Lno);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public LEANJU.Model.Landlord GetModelByCache(string Lno)
		{
			
			string CacheKey = "LandlordModel-" + Lno;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(Lno);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (LEANJU.Model.Landlord)objModel;
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
		public List<LEANJU.Model.Landlord> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<LEANJU.Model.Landlord> DataTableToList(DataTable dt)
		{
			List<LEANJU.Model.Landlord> modelList = new List<LEANJU.Model.Landlord>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				LEANJU.Model.Landlord model;
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

