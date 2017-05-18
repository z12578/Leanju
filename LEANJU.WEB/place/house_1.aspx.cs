using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class place_house_1 : MyPage
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

                case "add":
                    Add();
                    break;
                case "load":
                    GetList();
                    break;




            }

        }
    }
    protected void Add()
    {

        LEANJU.BLL.Orders bll = new LEANJU.BLL.Orders();
        LEANJU.Model.Orders ex = new LEANJU.Model.Orders();
        ex.emailorMbl = Convert.ToString(Session["emailorMbl"]);
        ex.Intime = Convert.ToDateTime(Request.QueryString["Intime"]);
        ex.Outtime = Convert.ToDateTime(Request.QueryString["Outtime"]);
        ex.Ostate = Request.QueryString["Ostate"];
        ex.Lname = Request.QueryString["Landlord"];
        ex.Price = Convert.ToDecimal(Request.QueryString["Price"]);
        ex.Hno = Request.QueryString["Rno"];
        if (bll.Add(ex))
        {
           
            WriteMessage("result", "1");

        }
        else
        {
            WriteMessage("result", "0");
        }


    }


    protected void GetList()
    {
        string Hno = Request.QueryString["Hno"];
        LEANJU.BLL.House bll = new LEANJU.BLL.House();
        LEANJU.Model.House model = new LEANJU.Model.House();
        model = bll.GetModel(Hno);
        JavaScriptSerializer jss = new JavaScriptSerializer();
        String resultObj = jss.Serialize(model);
        WriteMessage("", resultObj);

    }
}