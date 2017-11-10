using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (!IsPostBack)
        {
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
            string SqlStr = "select top 1 * from commodity";
            OleDbDataAdapter da = new OleDbDataAdapter(SqlStr, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
        }*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
        string SqlDel = "delete from commodity where sname='"+DropDownList1.Text+"'";
        OleDbCommand DelCom = new OleDbCommand(SqlDel, conn);
        OleDbDataAdapter da = new OleDbDataAdapter();
        conn.Open();
        da.DeleteCommand = DelCom;
        da.DeleteCommand.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script lanuage=javascript>alert('产品已删除成功！！');location='javascript:history.go(-1)'</script>");
    }
}
