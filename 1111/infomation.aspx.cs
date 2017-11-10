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

public partial class infomation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
        string SqlStr = "select * from commodity";
        OleDbDataAdapter da = new OleDbDataAdapter(SqlStr,conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
        GridView1.DataSource = dt;
        
        GridView1.DataBind();
        
        conn.Close();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}
