using System;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        public enum AmountDetailType
        {
            LastDepositAmount
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient("DocAgent");
            string strText = "System.Web.HttpUnhandledException (0x80004005): Exception of type ''System.Web.HttpUnhandledException'' was thrown. ---> System.Web.HttpException (0x80004005): A field or property with the name ''LoggedInuser'' was not found on the selected data source. at System.Web.UI.WebControls.BoundColumn.OnDataBindColumn(Object sender, EventArgs e) at System.Web.UI.Control.OnDataBinding(EventArgs e) at System.Web.UI.Control.DataBind(Boolean raiseOnDataBinding) at System.Web.UI.Control.DataBind() at System.Web.UI.Control.DataBindChildren() at";
            if (strText.Contains("was not found on the selected data source"))
            {

            }

            string s = "010203";
            string sss = s.Substring(0, 2) + ":" + s.Substring(2, 2) + ":" + s.Substring(4, 2);


            var res3 = Regex.Split(s, @"(?<=\G.{2})");
            string d = ""; ;
            foreach (var i in res3)
            {
                if (!string.IsNullOrEmpty(i.Trim()))
                {
                    d += i + ":";
                }
            }

            d = d.Trim(':');

            DateTime dtresult;
            bool isTime = false;
            string strDate = "12/22/2017 01:47:12";
            if (DateTime.TryParse(strDate, new CultureInfo("en-US"), DateTimeStyles.None, out dtresult))
            {
                if (isTime)
                    strDate = dtresult.ToString("MM/dd/yyyy HH:mm:ss");
                else
                    strDate = dtresult.ToString("MM/dd/yyyy");
            }


            string val = "18,80";
            if (Array.IndexOf(val.Split(','), "8") != -1)
            {

            }

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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string FileName = "";
            string newFilePathWithFileName = "";
            string oldFilePathWithFileName = @"E:\WebApplication1_Indexing\WebApplication1\APINVOICES____2017-03-17_THEFINLEYGROUPI_THE FINLEY GROUP INC_2017-3_200.00_03-01-2017_ _ _______________________00129714_Batch HF-ID69594_APINVOICE_InvoiceEI-BCL_00129714 .pdf";
            // string newFilePathWithFileName = @"D:\DDI_AppData\MDemo\Reports\" + FileName;

            for (int i = 100000; i < 200000; i++)
            {

                FileName = "APINVOICES____2018-01-01_THEFINLEYGROUPI_THE FINLEY GROUP INC_2017-3_" + i + "_03-01-2018_ _ _______________________00129714_Batch HF-ID69594_APINVOICE_InvoiceEI-BCL_00129714.pdf";

                newFilePathWithFileName = @"Z:\PBP\Reports\" + FileName;
                File.Copy(oldFilePathWithFileName, newFilePathWithFileName);
            }

        }
    }
}