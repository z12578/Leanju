using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace LEANJU.DAL
{
	/// <summary>
	/// 数据访问类:DetailInfo
	/// </summary>
	public partial class DetailInfo
	{
		public DetailInfo()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from DetailInfo");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.DetailInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into DetailInfo(");
			strSql.Append("id,picture,sex,year,month,day,school,country,address,job)");
			strSql.Append(" values (");
			strSql.Append("@id,@picture,@sex,@year,@month,@day,@school,@country,@address,@job)");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,20),
					new SqlParameter("@picture", SqlDbType.NVarChar,50),
					new SqlParameter("@sex", SqlDbType.NVarChar,5),
					new SqlParameter("@year", SqlDbType.NVarChar,10),
					new SqlParameter("@month", SqlDbType.NVarChar,50),
					new SqlParameter("@day", SqlDbType.NVarChar,50),
					new SqlParameter("@school", SqlDbType.NVarChar,20),
					new SqlParameter("@country", SqlDbType.NVarChar,10),
					new SqlParameter("@address", SqlDbType.NVarChar,50),
					new SqlParameter("@job", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.picture;
			parameters[2].Value = model.sex;
			parameters[3].Value = model.year;
			parameters[4].Value = model.month;
			parameters[5].Value = model.day;
			parameters[6].Value = model.school;
			parameters[7].Value = model.country;
			parameters[8].Value = model.address;
			parameters[9].Value = model.job;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(LEANJU.Model.DetailInfo model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update DetailInfo set ");
			strSql.Append("picture=@picture,");
			strSql.Append("sex=@sex,");
			strSql.Append("year=@year,");
			strSql.Append("month=@month,");
			strSql.Append("day=@day,");
			strSql.Append("school=@school,");
			strSql.Append("country=@country,");
			strSql.Append("address=@address,");
			strSql.Append("job=@job");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@picture", SqlDbType.NVarChar,50),
					new SqlParameter("@sex", SqlDbType.NVarChar,5),
					new SqlParameter("@year", SqlDbType.NVarChar,10),
					new SqlParameter("@month", SqlDbType.NVarChar,50),
					new SqlParameter("@day", SqlDbType.NVarChar,50),
					new SqlParameter("@school", SqlDbType.NVarChar,20),
					new SqlParameter("@country", SqlDbType.NVarChar,10),
					new SqlParameter("@address", SqlDbType.NVarChar,50),
					new SqlParameter("@job", SqlDbType.NVarChar,20),
					new SqlParameter("@id", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.picture;
			parameters[1].Value = model.sex;
			parameters[2].Value = model.year;
			parameters[3].Value = model.month;
			parameters[4].Value = model.day;
			parameters[5].Value = model.school;
			parameters[6].Value = model.country;
			parameters[7].Value = model.address;
			parameters[8].Value = model.job;
			parameters[9].Value = model.id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from DetailInfo ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string idlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from DetailInfo ");
			strSql.Append(" where id in ("+idlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public LEANJU.Model.DetailInfo GetModel(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,picture,sex,year,month,day,school,country,address,job from DetailInfo ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = id;

			LEANJU.Model.DetailInfo model=new LEANJU.Model.DetailInfo();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public LEANJU.Model.DetailInfo DataRowToModel(DataRow row)
		{
			LEANJU.Model.DetailInfo model=new LEANJU.Model.DetailInfo();
			if (row != null)
			{
				if(row["id"]!=null)
				{
					model.id=row["id"].ToString();
				}
				if(row["picture"]!=null)
				{
					model.picture=row["picture"].ToString();
				}
				if(row["sex"]!=null)
				{
					model.sex=row["sex"].ToString();
				}
				if(row["year"]!=null)
				{
					model.year=row["year"].ToString();
				}
				if(row["month"]!=null)
				{
					model.month=row["month"].ToString();
				}
				if(row["day"]!=null)
				{
					model.day=row["day"].ToString();
				}
				if(row["school"]!=null)
				{
					model.school=row["school"].ToString();
				}
				if(row["country"]!=null)
				{
					model.country=row["country"].ToString();
				}
				if(row["address"]!=null)
				{
					model.address=row["address"].ToString();
				}
				if(row["job"]!=null)
				{
					model.job=row["job"].ToString();
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select id,picture,sex,year,month,day,school,country,address,job ");
			strSql.Append(" FROM DetailInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" id,picture,sex,year,month,day,school,country,address,job ");
			strSql.Append(" FROM DetailInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM DetailInfo ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.id desc");
			}
			strSql.Append(")AS Row, T.*  from DetailInfo T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "DetailInfo";
			parameters[1].Value = "id";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

