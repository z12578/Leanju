using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace LEANJU.DAL
{
	/// <summary>
	/// 数据访问类:Transcation
	/// </summary>
	public partial class Transcation
	{
		public Transcation()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from Transcation");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.Transcation model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Transcation(");
			strSql.Append("id,date,income,expenditure,balance)");
			strSql.Append(" values (");
			strSql.Append("@id,@date,@income,@expenditure,@balance)");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,20),
					new SqlParameter("@date", SqlDbType.DateTime),
					new SqlParameter("@income", SqlDbType.Decimal,9),
					new SqlParameter("@expenditure", SqlDbType.Decimal,9),
					new SqlParameter("@balance", SqlDbType.Decimal,9)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.date;
			parameters[2].Value = model.income;
			parameters[3].Value = model.expenditure;
			parameters[4].Value = model.balance;

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
		public bool Update(LEANJU.Model.Transcation model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Transcation set ");
			strSql.Append("date=@date,");
			strSql.Append("income=@income,");
			strSql.Append("expenditure=@expenditure,");
			strSql.Append("balance=@balance");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@date", SqlDbType.DateTime),
					new SqlParameter("@income", SqlDbType.Decimal,9),
					new SqlParameter("@expenditure", SqlDbType.Decimal,9),
					new SqlParameter("@balance", SqlDbType.Decimal,9),
					new SqlParameter("@id", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.date;
			parameters[1].Value = model.income;
			parameters[2].Value = model.expenditure;
			parameters[3].Value = model.balance;
			parameters[4].Value = model.id;

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
			strSql.Append("delete from Transcation ");
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
			strSql.Append("delete from Transcation ");
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
		public LEANJU.Model.Transcation GetModel(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,date,income,expenditure,balance from Transcation ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = id;

			LEANJU.Model.Transcation model=new LEANJU.Model.Transcation();
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
		public LEANJU.Model.Transcation DataRowToModel(DataRow row)
		{
			LEANJU.Model.Transcation model=new LEANJU.Model.Transcation();
			if (row != null)
			{
				if(row["id"]!=null)
				{
					model.id=row["id"].ToString();
				}
				if(row["date"]!=null && row["date"].ToString()!="")
				{
					model.date=DateTime.Parse(row["date"].ToString());
				}
				if(row["income"]!=null && row["income"].ToString()!="")
				{
					model.income=decimal.Parse(row["income"].ToString());
				}
				if(row["expenditure"]!=null && row["expenditure"].ToString()!="")
				{
					model.expenditure=decimal.Parse(row["expenditure"].ToString());
				}
				if(row["balance"]!=null && row["balance"].ToString()!="")
				{
					model.balance=decimal.Parse(row["balance"].ToString());
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
			strSql.Append("select id,date,income,expenditure,balance ");
			strSql.Append(" FROM Transcation ");
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
			strSql.Append(" id,date,income,expenditure,balance ");
			strSql.Append(" FROM Transcation ");
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
			strSql.Append("select count(1) FROM Transcation ");
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
			strSql.Append(")AS Row, T.*  from Transcation T ");
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
			parameters[0].Value = "Transcation";
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

