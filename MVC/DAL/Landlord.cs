using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace LEANJU.DAL
{
	/// <summary>
	/// 数据访问类:Landlord
	/// </summary>
	public partial class Landlord
	{
		public Landlord()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string Lno)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from Landlord");
			strSql.Append(" where Lno=@Lno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Lno", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Lno;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.Landlord model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Landlord(");
			strSql.Append("Lno,Lname,Lphone,password)");
			strSql.Append(" values (");
			strSql.Append("@Lno,@Lname,@Lphone,@password)");
			SqlParameter[] parameters = {
					new SqlParameter("@Lno", SqlDbType.NVarChar,20),
					new SqlParameter("@Lname", SqlDbType.NVarChar,20),
					new SqlParameter("@Lphone", SqlDbType.NVarChar,11),
					new SqlParameter("@password", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.Lno;
			parameters[1].Value = model.Lname;
			parameters[2].Value = model.Lphone;
			parameters[3].Value = model.password;

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
		public bool Update(LEANJU.Model.Landlord model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Landlord set ");
			strSql.Append("Lname=@Lname,");
			strSql.Append("Lphone=@Lphone,");
			strSql.Append("password=@password");
			strSql.Append(" where Lno=@Lno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Lname", SqlDbType.NVarChar,20),
					new SqlParameter("@Lphone", SqlDbType.NVarChar,11),
					new SqlParameter("@password", SqlDbType.NVarChar,20),
					new SqlParameter("@Lno", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.Lname;
			parameters[1].Value = model.Lphone;
			parameters[2].Value = model.password;
			parameters[3].Value = model.Lno;

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
		public bool Delete(string Lno)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Landlord ");
			strSql.Append(" where Lno=@Lno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Lno", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Lno;

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
		public bool DeleteList(string Lnolist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Landlord ");
			strSql.Append(" where Lno in ("+Lnolist + ")  ");
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
		public LEANJU.Model.Landlord GetModel(string Lno)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 Lno,Lname,Lphone,password from Landlord ");
			strSql.Append(" where Lno=@Lno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Lno", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Lno;

			LEANJU.Model.Landlord model=new LEANJU.Model.Landlord();
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
		public LEANJU.Model.Landlord DataRowToModel(DataRow row)
		{
			LEANJU.Model.Landlord model=new LEANJU.Model.Landlord();
			if (row != null)
			{
				if(row["Lno"]!=null)
				{
					model.Lno=row["Lno"].ToString();
				}
				if(row["Lname"]!=null)
				{
					model.Lname=row["Lname"].ToString();
				}
				if(row["Lphone"]!=null)
				{
					model.Lphone=row["Lphone"].ToString();
				}
				if(row["password"]!=null)
				{
					model.password=row["password"].ToString();
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
			strSql.Append("select Lno,Lname,Lphone,password ");
			strSql.Append(" FROM Landlord ");
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
			strSql.Append(" Lno,Lname,Lphone,password ");
			strSql.Append(" FROM Landlord ");
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
			strSql.Append("select count(1) FROM Landlord ");
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
				strSql.Append("order by T.Lno desc");
			}
			strSql.Append(")AS Row, T.*  from Landlord T ");
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
			parameters[0].Value = "Landlord";
			parameters[1].Value = "Lno";
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

