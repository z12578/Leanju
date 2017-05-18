using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Login : MyPage
{
    protected string loginState = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loginState = Request.QueryString["loginState"] == null ? "" : Request.QueryString["loginState"];
            if (Request.QueryString["action"] == null)
                return;
            string action = Request.QueryString["action"];

            switch (action)
            {
               
                case "login":
                    if (loginState == "1")
                        login();
                    else login_overseas();
                    
                    break;


            }

        }
    }

    protected void login()
    {

        LEANJU.BLL.Users bll = new LEANJU.BLL.Users();
        LEANJU.Model.Users ex = new LEANJU.Model.Users();
        string emailorMbl = Request.QueryString["signin_email"];

        string password = Request.QueryString["signin_password"];
      

        if (bll.GetList(string.Format("emailorMbl='{0}' and password='{1}' ", emailorMbl, password)).Tables[0].Rows.Count > 0)
        {
            //string id = bll.GetList(string.Format("emailorMbl='{0}' and password='{1}'", emailorMbl, password)).Tables[0].Rows[0]["emailorMbl"].ToString();
            ex = bll.GetModel(emailorMbl);
            Session["user_first_name"] = ex.user_first_name;
            Session["user_last_name"] = ex.user_last_name;
            Session["emailorMbl"] = ex.emailorMbl;
            WriteMessage("result", "1");

        }
        else { WriteMessage("result", "0");
        }


    }
    protected void login_overseas()
    {

        LEANJU.BLL.Users bll = new LEANJU.BLL.Users();
        LEANJU.Model.Users ex = new LEANJU.Model.Users();
        string emailorMbl = Request.QueryString["signin_email"];

        string password = Request.QueryString["signin_password"];
        string remember_me = Request.QueryString["remember_me"];

        string telcode = Request.QueryString["telcode"];


        if (bll.GetList(string.Format("emailorMbl='{0}' and password='{1}' and telcode='{2}'", emailorMbl, password, telcode)).Tables[0].Rows.Count > 0)
        {
            //string id = bll.GetList(string.Format("ID='{0}' and Password='{1}'", ID, Password)).Tables[0].Rows[0]["ID"].ToString();

            //Session["ID"] = id;

            WriteMessage("result", "1");

        }
        else
        {
            WriteMessage("result", "0");
        }


    }
}