using System;
namespace LEANJU.Model
{
	/// <summary>
	/// Orders:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Orders
	{
		public Orders()
		{}
		#region Model
		private string _emailormbl;
		private string _hno;
		private string _oid;
		private DateTime _intime;
		private DateTime _outtime;
		private decimal _price;
		private string _lname;
		private string _ostate;
		private int _total_days;
		private int _total_people;
		private int _num;
		private string _pay_method;
		/// <summary>
		/// 
		/// </summary>
		public string emailorMbl
		{
			set{ _emailormbl=value;}
			get{return _emailormbl;}
		}
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
		public string Oid
		{
			set{ _oid=value;}
			get{return _oid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime Intime
		{
			set{ _intime=value;}
			get{return _intime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime Outtime
		{
			set{ _outtime=value;}
			get{return _outtime;}
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
		public string Lname
		{
			set{ _lname=value;}
			get{return _lname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Ostate
		{
			set{ _ostate=value;}
			get{return _ostate;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int total_days
		{
			set{ _total_days=value;}
			get{return _total_days;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int total_people
		{
			set{ _total_people=value;}
			get{return _total_people;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int num
		{
			set{ _num=value;}
			get{return _num;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string pay_method
		{
			set{ _pay_method=value;}
			get{return _pay_method;}
		}
		#endregion Model

	}
}

