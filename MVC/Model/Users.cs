using System;
namespace LEANJU.Model
{
	/// <summary>
	/// 1
	/// </summary>
	[Serializable]
	public partial class Users
	{
		public Users()
		{}
		#region Model
		private string _emailormbl;
		private string _password;
		private string _telcode;
		private string _user_first_name;
		private string _user_last_name;
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
		public string password
		{
			set{ _password=value;}
			get{return _password;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string telcode
		{
			set{ _telcode=value;}
			get{return _telcode;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string user_first_name
		{
			set{ _user_first_name=value;}
			get{return _user_first_name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string user_last_name
		{
			set{ _user_last_name=value;}
			get{return _user_last_name;}
		}
		#endregion Model

	}
}

