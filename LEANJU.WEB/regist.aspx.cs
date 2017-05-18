using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class regist : MyPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            if (Request.QueryString["action"] == null)
                return;
            string action = Request.QueryString["action"];

            switch (action)
            {

                case "check":
                    Check();
                    break;
                case "regist":
                    Regist();
                    break;


            }

        }
    }
    protected void Check()
    {

        LEANJU.BLL.Users bll = new LEANJU.BLL.Users();
        LEANJU.Model.Users ex = new LEANJU.Model.Users();
        string emailorMbl = Request.QueryString["CellphoneNumber"];

        string telcode = Request.QueryString["countryAreaCode"];


        if (bll.GetList(string.Format("emailorMbl='{0}' and telcode='{1}' ", emailorMbl, telcode)).Tables[0].Rows.Count > 0)
        {
           

            WriteMessage("result", "0");

        }
        else
        {
            WriteMessage("result", "1");
        }


    }

    protected void Regist()
    {
       
        LEANJU.BLL.Users bll = new LEANJU.BLL.Users();
        LEANJU.Model.Users model = new LEANJU.Model.Users();
       model.emailorMbl = Request.QueryString["CellphoneNumber"];
       model.password = Request.QueryString["user_password"];
       model.telcode = Request.QueryString["countryAreaCode"];
       model.user_first_name = Request.QueryString["user_first_name"];
       model.user_last_name = Request.QueryString["user_last_name"];
       if (bll.GetList(string.Format("emailorMbl='{0}' ", model.emailorMbl)).Tables[0].Rows.Count > 0)
       {
           WriteMessage("result", "0");
       }
       else if (bll.Add(model))
        {
            WriteMessage("result", "1");

        }
       
       


    }
}