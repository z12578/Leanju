using System;
namespace LEANJU.Model
{
	/// <summary>
	/// 1
	/// </summary>
	[Serializable]
	public partial class Transcation
	{
		public Transcation()
		{}
		#region Model
		private string _id;
		private DateTime _date;
		private decimal? _income;
		private decimal? _expenditure;
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
		public DateTime date
		{
			set{ _date=value;}
			get{return _date;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? income
		{
			set{ _income=value;}
			get{return _income;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? expenditure
		{
			set{ _expenditure=value;}
			get{return _expenditure;}
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

