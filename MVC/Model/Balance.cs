using System;
namespace LEANJU.Model
{
	/// <summary>
	/// Balance:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Balance
	{
		public Balance()
		{}
		#region Model
		private string _id;
		private string _password;
		private decimal? _balance;
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
		public string password
		{
			set{ _password=value;}
			get{return _password;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? balance
		{
			set{ _balance=value;}
			get{return _balance;}
		}
		#endregion Model

	}
}

