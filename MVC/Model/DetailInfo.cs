using System;
namespace LEANJU.Model
{
	/// <summary>
	/// DetailInfo:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class DetailInfo
	{
		public DetailInfo()
		{}
		#region Model
		private string _id;
		private string _picture;
		private string _sex;
		private string _year;
		private string _month;
		private string _day;
		private string _school;
		private string _country;
		private string _address;
		private string _job;
		/// <summary>
		/// 
		/// </summary>
		public string id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string picture
		{
			set{ _picture=value;}
			get{return _picture;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string sex
		{
			set{ _sex=value;}
			get{return _sex;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string year
		{
			set{ _year=value;}
			get{return _year;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string month
		{
			set{ _month=value;}
			get{return _month;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string day
		{
			set{ _day=value;}
			get{return _day;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string school
		{
			set{ _school=value;}
			get{return _school;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string country
		{
			set{ _country=value;}
			get{return _country;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string address
		{
			set{ _address=value;}
			get{return _address;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string job
		{
			set{ _job=value;}
			get{return _job;}
		}
		#endregion Model

	}
}

