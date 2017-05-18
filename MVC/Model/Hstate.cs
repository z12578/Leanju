using System;
namespace LEANJU.Model
{
	/// <summary>
	/// Hstate:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Hstate
	{
		public Hstate()
		{}
		#region Model
		private string _hno;
		private string _isrent;
		private DateTime? _intime;
		private DateTime? _outtime;
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
		public string isRent
		{
			set{ _isrent=value;}
			get{return _isrent;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? Intime
		{
			set{ _intime=value;}
			get{return _intime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? Outtime
		{
			set{ _outtime=value;}
			get{return _outtime;}
		}
		#endregion Model

	}
}

