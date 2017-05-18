using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace LEANJU.DAL
{
	/// <summary>
	/// 数据访问类:Users
	/// </summary>
	public partial class Users
	{
		public Users()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string emailorMbl)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from Users");
			strSql.Append(" where emailorMbl=@emailorMbl ");
			SqlParameter[] parameters = {
					new SqlParameter("@emailorMbl", SqlDbType.NVarChar,20)			};
			parameters[0].Value = emailorMbl;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.Users model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Users(");
			strSql.Append("emailorMbl,password,telcode,user_first_name,user_last_name)");
			strSql.Append(" values (");
			strSql.Append("@emailorMbl,@password,@telcode,@user_first_name,@user_last_name)");
			SqlParameter[] parameters = {
					new SqlParameter("@emailorMbl", SqlDbType.NVarChar,20),
					new SqlParameter("@password", SqlDbType.NVarChar,20),
					new SqlParameter("@telcode", SqlDbType.NVarChar,10),
					new SqlParameter("@user_first_name", SqlDbType.NVarChar,10),
					new SqlParameter("@user_last_name", SqlDbType.NVarChar,10)};
			parameters[0].Value = model.emailorMbl;
			parameters[1].Value = model.password;
			parameters[2].Value = model.telcode;
			parameters[3].Value = model.user_first_name;
			parameters[4].Value = model.user_last_name;

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
		public bool Update(LEANJU.Model.Users model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Users set ");
			strSql.Append("password=@password,");
			strSql.Append("telcode=@telcode,");
			strSql.Append("user_first_name=@user_first_name,");
			strSql.Append("user_last_name=@user_last_name");
			strSql.Append(" where emailorMbl=@emailorMbl ");
			SqlParameter[] parameters = {
					new SqlParameter("@password", SqlDbType.NVarChar,20),
					new SqlParameter("@telcode", SqlDbType.NVarChar,10),
					new SqlParameter("@user_first_name", SqlDbType.NVarChar,10),
					new SqlParameter("@user_last_name", SqlDbType.NVarChar,10),
					new SqlParameter("@emailorMbl", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.password;
			parameters[1].Value = model.telcode;
			parameters[2].Value = model.user_first_name;
			parameters[3].Value = model.user_last_name;
			parameters[4].Value = model.emailorMbl;

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
		public bool Delete(string emailorMbl)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Users ");
			strSql.Append(" where emailorMbl=@emailorMbl ");
			SqlParameter[] parameters = {
					new SqlParameter("@emailorMbl", SqlDbType.NVarChar,20)			};
			parameters[0].Value = emailorMbl;

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
		public bool DeleteList(string emailorMbllist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Users ");
			strSql.Append(" where emailorMbl in ("+emailorMbllist + ")  ");
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
		public LEANJU.Model.Users GetModel(string emailorMbl)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 emailorMbl,password,telcode,user_first_name,user_last_name from Users ");
			strSql.Append(" where emailorMbl=@emailorMbl ");
			SqlParameter[] parameters = {
					new SqlParameter("@emailorMbl", SqlDbType.NVarChar,20)			};
			parameters[0].Value = emailorMbl;

			LEANJU.Model.Users model=new LEANJU.Model.Users();
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
		public LEANJU.Model.Users DataRowToModel(DataRow row)
		{
			LEANJU.Model.Users model=new LEANJU.Model.Users();
			if (row != null)
			{
				if(row["emailorMbl"]!=null)
				{
					model.emailorMbl=row["emailorMbl"].ToString();
				}
				if(row["password"]!=null)
				{
					model.password=row["password"].ToString();
				}
				if(row["telcode"]!=null)
				{
					model.telcode=row["telcode"].ToString();
				}
				if(row["user_first_name"]!=null)
				{
					model.user_first_name=row["user_first_name"].ToString();
				}
				if(row["user_last_name"]!=null)
				{
					model.user_last_name=row["user_last_name"].ToString();
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
			strSql.Append("select emailorMbl,password,telcode,user_first_name,user_last_name ");
			strSql.Append(" FROM Users ");
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
			strSql.Append(" emailorMbl,password,telcode,user_first_name,user_last_name ");
			strSql.Append(" FROM Users ");
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
			strSql.Append("select count(1) FROM Users ");
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
				strSql.Append("order by T.emailorMbl desc");
			}
			strSql.Append(")AS Row, T.*  from Users T ");
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
			parameters[0].Value = "Users";
			parameters[1].Value = "emailorMbl";
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

