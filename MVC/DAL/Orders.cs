using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace LEANJU.DAL
{
	/// <summary>
	/// 数据访问类:Orders
	/// </summary>
	public partial class Orders
	{
		public Orders()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string Oid)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from Orders");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Oid;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.Orders model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Orders(");
			strSql.Append("emailorMbl,Hno,Oid,Intime,Outtime,Price,Lname,Ostate,total_days,total_people,num,pay_method)");
			strSql.Append(" values (");
			strSql.Append("@emailorMbl,@Hno,@Oid,@Intime,@Outtime,@Price,@Lname,@Ostate,@total_days,@total_people,@num,@pay_method)");
			SqlParameter[] parameters = {
					new SqlParameter("@emailorMbl", SqlDbType.NVarChar,20),
					new SqlParameter("@Hno", SqlDbType.NVarChar,20),
					new SqlParameter("@Oid", SqlDbType.NVarChar,20),
					new SqlParameter("@Intime", SqlDbType.DateTime),
					new SqlParameter("@Outtime", SqlDbType.DateTime),
					new SqlParameter("@Price", SqlDbType.Decimal,9),
					new SqlParameter("@Lname", SqlDbType.NVarChar,10),
					new SqlParameter("@Ostate", SqlDbType.NVarChar,10),
					new SqlParameter("@total_days", SqlDbType.Int,4),
					new SqlParameter("@total_people", SqlDbType.Int,4),
					new SqlParameter("@num", SqlDbType.Int,4),
					new SqlParameter("@pay_method", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.emailorMbl;
			parameters[1].Value = model.Hno;
			parameters[2].Value = model.Oid;
			parameters[3].Value = model.Intime;
			parameters[4].Value = model.Outtime;
			parameters[5].Value = model.Price;
			parameters[6].Value = model.Lname;
			parameters[7].Value = model.Ostate;
			parameters[8].Value = model.total_days;
			parameters[9].Value = model.total_people;
			parameters[10].Value = model.num;
			parameters[11].Value = model.pay_method;

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
		public bool Update(LEANJU.Model.Orders model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Orders set ");
			strSql.Append("emailorMbl=@emailorMbl,");
			strSql.Append("Hno=@Hno,");
			strSql.Append("Intime=@Intime,");
			strSql.Append("Outtime=@Outtime,");
			strSql.Append("Price=@Price,");
			strSql.Append("Lname=@Lname,");
			strSql.Append("Ostate=@Ostate,");
			strSql.Append("total_days=@total_days,");
			strSql.Append("total_people=@total_people,");
			strSql.Append("num=@num,");
			strSql.Append("pay_method=@pay_method");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@emailorMbl", SqlDbType.NVarChar,20),
					new SqlParameter("@Hno", SqlDbType.NVarChar,20),
					new SqlParameter("@Intime", SqlDbType.DateTime),
					new SqlParameter("@Outtime", SqlDbType.DateTime),
					new SqlParameter("@Price", SqlDbType.Decimal,9),
					new SqlParameter("@Lname", SqlDbType.NVarChar,10),
					new SqlParameter("@Ostate", SqlDbType.NVarChar,10),
					new SqlParameter("@total_days", SqlDbType.Int,4),
					new SqlParameter("@total_people", SqlDbType.Int,4),
					new SqlParameter("@num", SqlDbType.Int,4),
					new SqlParameter("@pay_method", SqlDbType.NVarChar,20),
					new SqlParameter("@Oid", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.emailorMbl;
			parameters[1].Value = model.Hno;
			parameters[2].Value = model.Intime;
			parameters[3].Value = model.Outtime;
			parameters[4].Value = model.Price;
			parameters[5].Value = model.Lname;
			parameters[6].Value = model.Ostate;
			parameters[7].Value = model.total_days;
			parameters[8].Value = model.total_people;
			parameters[9].Value = model.num;
			parameters[10].Value = model.pay_method;
			parameters[11].Value = model.Oid;

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
		public bool Delete(string Oid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Orders ");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Oid;

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
		public bool DeleteList(string Oidlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Orders ");
			strSql.Append(" where Oid in ("+Oidlist + ")  ");
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
		public LEANJU.Model.Orders GetModel(string Oid)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 emailorMbl,Hno,Oid,Intime,Outtime,Price,Lname,Ostate,total_days,total_people,num,pay_method from Orders ");
			strSql.Append(" where Oid=@Oid ");
			SqlParameter[] parameters = {
					new SqlParameter("@Oid", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Oid;

			LEANJU.Model.Orders model=new LEANJU.Model.Orders();
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
		public LEANJU.Model.Orders DataRowToModel(DataRow row)
		{
			LEANJU.Model.Orders model=new LEANJU.Model.Orders();
			if (row != null)
			{
				if(row["emailorMbl"]!=null)
				{
					model.emailorMbl=row["emailorMbl"].ToString();
				}
				if(row["Hno"]!=null)
				{
					model.Hno=row["Hno"].ToString();
				}
				if(row["Oid"]!=null)
				{
					model.Oid=row["Oid"].ToString();
				}
				if(row["Intime"]!=null && row["Intime"].ToString()!="")
				{
					model.Intime=DateTime.Parse(row["Intime"].ToString());
				}
				if(row["Outtime"]!=null && row["Outtime"].ToString()!="")
				{
					model.Outtime=DateTime.Parse(row["Outtime"].ToString());
				}
				if(row["Price"]!=null && row["Price"].ToString()!="")
				{
					model.Price=decimal.Parse(row["Price"].ToString());
				}
				if(row["Lname"]!=null)
				{
					model.Lname=row["Lname"].ToString();
				}
				if(row["Ostate"]!=null)
				{
					model.Ostate=row["Ostate"].ToString();
				}
				if(row["total_days"]!=null && row["total_days"].ToString()!="")
				{
					model.total_days=int.Parse(row["total_days"].ToString());
				}
				if(row["total_people"]!=null && row["total_people"].ToString()!="")
				{
					model.total_people=int.Parse(row["total_people"].ToString());
				}
				if(row["num"]!=null && row["num"].ToString()!="")
				{
					model.num=int.Parse(row["num"].ToString());
				}
				if(row["pay_method"]!=null)
				{
					model.pay_method=row["pay_method"].ToString();
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
			strSql.Append("select emailorMbl,Hno,Oid,Intime,Outtime,Price,Lname,Ostate,total_days,total_people,num,pay_method ");
			strSql.Append(" FROM Orders ");
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
			strSql.Append(" emailorMbl,Hno,Oid,Intime,Outtime,Price,Lname,Ostate,total_days,total_people,num,pay_method ");
			strSql.Append(" FROM Orders ");
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
			strSql.Append("select count(1) FROM Orders ");
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
				strSql.Append("order by T.Oid desc");
			}
			strSql.Append(")AS Row, T.*  from Orders T ");
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
			parameters[0].Value = "Orders";
			parameters[1].Value = "Oid";
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

