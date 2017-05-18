using System;
namespace LEANJU.Model
{
	/// <summary>
	/// Admin:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Admin
	{
		public Admin()
		{}
		#region Model
		private string _admin;
		private string _password;
		/// <summary>
		/// 
		/// </summary>
		public string admin
		{
			set{ _admin=value;}
			get{return _admin;}
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

