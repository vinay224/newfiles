using System;
using System.Web;
using System.Web.UI;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Response.Buffer = true;
            Page.Response.ExpiresAbsolute = System.DateTime.Now.Subtract(new TimeSpan(1, 0, 0, 0, 0));
            Page.Response.Expires = 0;
            Page.Response.CacheControl = "no-cache";
            Page.Response.Cache.SetExpires(DateTime.Now);
            Page.Response.Cache.SetCacheability(HttpCacheability.Private);
            Page.MaintainScrollPositionOnPostBack = true;

            if (Request.QueryString.Count > 0 && Request.QueryString["q"] == "true")
            {
                ExportToExcel();
            }

            Label1.Text = DateTime.Now.ToString();
        }

        private void ExportToExcel()
        {
            string fileContent = CreateXls();

            Response.ClearContent();
            Response.ClearHeaders();
            Response.Clear();
            Response.Buffer = true;
            Response.ExpiresAbsolute = System.DateTime.Now.Subtract(new TimeSpan(1, 0, 0, 0, 0));
            Response.Expires = 0;
            Response.AddHeader("content-disposition", "attachment;filename=test.xls");
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("content-length", fileContent.Length.ToString());
            Response.Write(fileContent);
            Response.End();
        }

        private string CreateXls()
        {
            // prepare your data here

            return "";
        }
    }
}