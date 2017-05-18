using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace LEANJU.DAL
{
	/// <summary>
	/// 数据访问类:House
	/// </summary>
	public partial class House
	{
		public House()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string Hno)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from House");
			strSql.Append(" where Hno=@Hno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Hno", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Hno;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(LEANJU.Model.House model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into House(");
			strSql.Append("Hno,Lno,Location,Price,picture,Additional,title,total,pcount,max_days,count,Lname)");
			strSql.Append(" values (");
			strSql.Append("@Hno,@Lno,@Location,@Price,@picture,@Additional,@title,@total,@pcount,@max_days,@count,@Lname)");
			SqlParameter[] parameters = {
					new SqlParameter("@Hno", SqlDbType.NVarChar,20),
					new SqlParameter("@Lno", SqlDbType.NVarChar,20),
					new SqlParameter("@Location", SqlDbType.NVarChar,50),
					new SqlParameter("@Price", SqlDbType.Decimal,5),
					new SqlParameter("@picture", SqlDbType.NVarChar,50),
					new SqlParameter("@Additional", SqlDbType.NVarChar,50),
					new SqlParameter("@title", SqlDbType.NVarChar,50),
					new SqlParameter("@total", SqlDbType.Decimal,5),
					new SqlParameter("@pcount", SqlDbType.Decimal,5),
					new SqlParameter("@max_days", SqlDbType.Int,4),
					new SqlParameter("@count", SqlDbType.Int,4),
					new SqlParameter("@Lname", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.Hno;
			parameters[1].Value = model.Lno;
			parameters[2].Value = model.Location;
			parameters[3].Value = model.Price;
			parameters[4].Value = model.picture;
			parameters[5].Value = model.Additional;
			parameters[6].Value = model.title;
			parameters[7].Value = model.total;
			parameters[8].Value = model.pcount;
			parameters[9].Value = model.max_days;
			parameters[10].Value = model.count;
			parameters[11].Value = model.Lname;

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
		public bool Update(LEANJU.Model.House model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update House set ");
			strSql.Append("Lno=@Lno,");
			strSql.Append("Location=@Location,");
			strSql.Append("Price=@Price,");
			strSql.Append("picture=@picture,");
			strSql.Append("Additional=@Additional,");
			strSql.Append("title=@title,");
			strSql.Append("total=@total,");
			strSql.Append("pcount=@pcount,");
			strSql.Append("max_days=@max_days,");
			strSql.Append("count=@count,");
			strSql.Append("Lname=@Lname");
			strSql.Append(" where Hno=@Hno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Lno", SqlDbType.NVarChar,20),
					new SqlParameter("@Location", SqlDbType.NVarChar,50),
					new SqlParameter("@Price", SqlDbType.Decimal,5),
					new SqlParameter("@picture", SqlDbType.NVarChar,50),
					new SqlParameter("@Additional", SqlDbType.NVarChar,50),
					new SqlParameter("@title", SqlDbType.NVarChar,50),
					new SqlParameter("@total", SqlDbType.Decimal,5),
					new SqlParameter("@pcount", SqlDbType.Decimal,5),
					new SqlParameter("@max_days", SqlDbType.Int,4),
					new SqlParameter("@count", SqlDbType.Int,4),
					new SqlParameter("@Lname", SqlDbType.NVarChar,20),
					new SqlParameter("@Hno", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.Lno;
			parameters[1].Value = model.Location;
			parameters[2].Value = model.Price;
			parameters[3].Value = model.picture;
			parameters[4].Value = model.Additional;
			parameters[5].Value = model.title;
			parameters[6].Value = model.total;
			parameters[7].Value = model.pcount;
			parameters[8].Value = model.max_days;
			parameters[9].Value = model.count;
			parameters[10].Value = model.Lname;
			parameters[11].Value = model.Hno;

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
		public bool Delete(string Hno)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from House ");
			strSql.Append(" where Hno=@Hno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Hno", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Hno;

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
		public bool DeleteList(string Hnolist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from House ");
			strSql.Append(" where Hno in ("+Hnolist + ")  ");
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
		public LEANJU.Model.House GetModel(string Hno)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 Hno,Lno,Location,Price,picture,Additional,title,total,pcount,max_days,count,Lname from House ");
			strSql.Append(" where Hno=@Hno ");
			SqlParameter[] parameters = {
					new SqlParameter("@Hno", SqlDbType.NVarChar,20)			};
			parameters[0].Value = Hno;

			LEANJU.Model.House model=new LEANJU.Model.House();
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
		public LEANJU.Model.House DataRowToModel(DataRow row)
		{
			LEANJU.Model.House model=new LEANJU.Model.House();
			if (row != null)
			{
				if(row["Hno"]!=null)
				{
					model.Hno=row["Hno"].ToString();
				}
				if(row["Lno"]!=null)
				{
					model.Lno=row["Lno"].ToString();
				}
				if(row["Location"]!=null)
				{
					model.Location=row["Location"].ToString();
				}
				if(row["Price"]!=null && row["Price"].ToString()!="")
				{
					model.Price=decimal.Parse(row["Price"].ToString());
				}
				if(row["picture"]!=null)
				{
					model.picture=row["picture"].ToString();
				}
				if(row["Additional"]!=null)
				{
					model.Additional=row["Additional"].ToString();
				}
				if(row["title"]!=null)
				{
					model.title=row["title"].ToString();
				}
				if(row["total"]!=null && row["total"].ToString()!="")
				{
					model.total=decimal.Parse(row["total"].ToString());
				}
				if(row["pcount"]!=null && row["pcount"].ToString()!="")
				{
					model.pcount=decimal.Parse(row["pcount"].ToString());
				}
				if(row["max_days"]!=null && row["max_days"].ToString()!="")
				{
					model.max_days=int.Parse(row["max_days"].ToString());
				}
				if(row["count"]!=null && row["count"].ToString()!="")
				{
					model.count=int.Parse(row["count"].ToString());
				}
				if(row["Lname"]!=null)
				{
					model.Lname=row["Lname"].ToString();
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
			strSql.Append("select Hno,Lno,Location,Price,picture,Additional,title,total,pcount,max_days,count,Lname ");
			strSql.Append(" FROM House ");
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
			strSql.Append(" Hno,Lno,Location,Price,picture,Additional,title,total,pcount,max_days,count,Lname ");
			strSql.Append(" FROM House ");
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
			strSql.Append("select count(1) FROM House ");
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
				strSql.Append("order by T.Hno desc");
			}
			strSql.Append(")AS Row, T.*  from House T ");
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
			parameters[0].Value = "House";
			parameters[1].Value = "Hno";
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

