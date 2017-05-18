using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_home_account_index : MyPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["action"] == null) return;
            string action = Request.QueryString["action"];
            switch (action)
            {
                case "all":
                    GetList();
                    break;
                case "cancel":
                    Cancel();
                    break;
                case "recycle":
                    GetList_Cancel();
                    break;
              
            }


        }
    }

    protected void GetList()
    {

        LEANJU.BLL.Orders bll = new LEANJU.BLL.Orders();
        int pagesize = int.Parse(Request.Form["rows"].ToString().Trim());
        int pageindex = int.Parse(Request.Form["page"].ToString().Trim());
        DataGridData dgd = new DataGridData();
        dgd.total = bll.GetRecordCount("Ostate='待入住'");

        dgd.rows = bll.GetListByPage("Ostate='待入住'", "", (pageindex - 1) * pagesize + 1, pageindex * pagesize);
        WriteMessage("", ToJson.Dataset2Json(dgd.rows, dgd.total));

    }
    protected void GetList_Cancel()
    {

        LEANJU.BLL.Orders bll = new LEANJU.BLL.Orders();
        int pagesize = int.Parse(Request.Form["rows"].ToString().Trim());
        int pageindex = int.Parse(Request.Form["page"].ToString().Trim());
        DataGridData dgd = new DataGridData();
       
        dgd.total = bll.GetRecordCount("Ostate='已取消'" );

        dgd.rows = bll.GetListByPage("Ostate='已取消'", "", (pageindex - 1) * pagesize + 1, pageindex * pagesize);
        WriteMessage("", ToJson.Dataset2Json(dgd.rows, dgd.total));

    }
    protected void Cancel()
    {

        LEANJU.BLL.Orders bll = new LEANJU.BLL.Orders();
        LEANJU.Model.Orders model = new LEANJU.Model.Orders();
        
        string id =Convert.ToString(Request.QueryString["id"]);
        if (bll.GetList(string.Format("Oid='{0}' ",id)).Tables[0].Rows.Count > 0)
        {
           
        
        model = bll.GetModel(id);
        model.Ostate = "已取消";
        bll.Update(model);
         WriteMessage("msg", "1"); 
        }
        else { WriteMessage("msg", "0"); }

    }
}