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

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script lanuage=javascript>alert('搜索的内容不能为空！！');location='javascript:history.go(-1)'</script>");
            return;
        }
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
        conn.Open();
        string SqlSelect = "select * from commodity where sname='"+TextBox1.Text+"'";
        OleDbCommand Com = new OleDbCommand(SqlSelect, conn);
        OleDbDataAdapter da = new OleDbDataAdapter(SqlSelect, conn);
        OleDbDataReader dr = Com.ExecuteReader();
        if (!dr.Read())
        {
            Response.Write("<script lanuage=javascript>alert('搜索的内容不存在！！');location='javascript:history.go(-1)'</script>");
            dr.Close();
            return;
        }

        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        dr.Close();

    }
}
