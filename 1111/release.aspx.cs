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

public partial class release : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
        string Val = "''" + TextBox1.Text + "," + TextBox2.Text + TextBox3.Text + "," + TextBox4.Text;
        string SqlIns = "insert into commodity([sname],[category],[introduce],[mon])values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "')";
        OleDbCommand InsConm = new OleDbCommand(SqlIns, conn);
        OleDbDataAdapter da = new OleDbDataAdapter();
        conn.Open();
        da.InsertCommand = InsConm;
        da.InsertCommand.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script lanuage=javascript>alert('发布成功！！');location='javascript:history.go(-1)'</script>");
    }
}
