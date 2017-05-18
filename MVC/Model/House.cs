using System;
namespace LEANJU.Model
{
	/// <summary>
	/// House:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class House
	{
		public House()
		{}
		#region Model
		private string _hno;
		private string _lno;
		private string _location;
		private decimal _price;
		private string _picture;
		private string _additional;
		private string _title;
		private decimal _total;
		private decimal _pcount;
		private int _max_days;
		private int _count;
		private string _lname= "0";
		/// <summary>
		/// 
		/// </summary>
		public string Hno
		{
			set{ _hno=value;}
			get{return _hno;}
		}
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
		public string Location
		{
			set{ _location=value;}
			get{return _location;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal Price
		{
			set{ _price=value;}
			get{return _price;}
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
		public string Additional
		{
			set{ _additional=value;}
			get{return _additional;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string title
		{
			set{ _title=value;}
			get{return _title;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal total
		{
			set{ _total=value;}
			get{return _total;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal pcount
		{
			set{ _pcount=value;}
			get{return _pcount;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int max_days
		{
			set{ _max_days=value;}
			get{return _max_days;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int count
		{
			set{ _count=value;}
			get{return _count;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Lname
		{
			set{ _lname=value;}
			get{return _lname;}
		}
		#endregion Model

	}
}

