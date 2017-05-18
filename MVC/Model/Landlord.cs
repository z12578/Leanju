using System;
namespace LEANJU.Model
{
	/// <summary>
	/// Landlord:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Landlord
	{
		public Landlord()
		{}
		#region Model
		private string _lno;
		private string _lname;
		private string _lphone;
		private string _password;
		/// <summary>
		/// 
		/// </summary>
		public string Lno
		{
			set{ _lno=value;}
			get{return _lno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Lname
		{
			set{ _lname=value;}
			get{return _lname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Lphone
		{
			set{ _lphone=value;}
			get{return _lphone;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string password
		{
			set{ _password=value;}
			get{return _password;}
		}
		#endregion Model

	}
}

