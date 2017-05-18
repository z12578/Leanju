using System;
namespace LEANJU.Model
{
	/// <summary>
	/// Remark:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Remark
	{
		public Remark()
		{}
		#region Model
		private string _hno;
		private string _emailormbl;
		private int? _pcount;
		private string _remark;
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
		public string emailorMbl
		{
			set{ _emailormbl=value;}
			get{return _emailormbl;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? pcount
		{
			set{ _pcount=value;}
			get{return _pcount;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string remark
		{
			set{ _remark=value;}
			get{return _remark;}
		}
		#endregion Model

	}
}

