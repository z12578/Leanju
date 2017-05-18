using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Data;
public partial class place_Hangzhou :MyPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["action"] == null) return;
            string action = Request.QueryString["action"];
            switch (action)
            {
                case "load":
                    GetList();
                    break;
                

            }


        }

    }

    protected void GetList()
    {

        LEANJU.BLL.House bll = new LEANJU.BLL.House();
        LEANJU.Model.House e = new LEANJU.Model.House();
        List<LEANJU.Model.House> data = new List<LEANJU.Model.House>();
            data = bll.GetModelList("");
         



           JavaScriptSerializer jss = new JavaScriptSerializer();
           String resultObj=jss.Serialize(data);
           WriteMessage("", resultObj);
    }
}