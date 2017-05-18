using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgetpassword_ForgetPassword : MyPage
{
   public string Password;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            if (Request.QueryString["action"] == null)
                return;
            string action = Request.QueryString["action"];

            switch (action)
            {

                case "forget":
                    FindPassword();

                    break;


            }

        }
    }

    protected void FindPassword()
    {

        LEANJU.BLL.Users bll = new LEANJU.BLL.Users();
        LEANJU.Model.Users ex = new LEANJU.Model.Users();
        string emailorMbl = Request.QueryString["signin_email"];

        


        if (bll.GetList(string.Format("emailorMbl='{0}'  ", emailorMbl)).Tables[0].Rows.Count > 0)
        {
            ex = bll.GetModel(emailorMbl);
            Password = ex.password;//从后台获取的用户密码值，存在变量Password中
           
            // A a = new A();
            //Dictionary<string, string> myDictionary = new Dictionary<string, string>();
            //myDictionary.Add("a","a");
            //myDictionary.Add("b", "b");
            //myDictionary.Add("c", "c");

            //a.myDictionary = myDictionary;
            //JavaScriptSerializer jss = new JavaScriptSerializer();
            //String resultObj=jss.Serialize(a);
            WriteMessage("result", Password);

        }
        else
        {
            WriteMessage("result", "0");
        }


    }
}
//public class A

//{
//    public String pass = "pass";
//    public Dictionary<String, string> myDictionary = null;

//}