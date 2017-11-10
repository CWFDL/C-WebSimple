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

public partial class modification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList1.AutoPostBack = true;

            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
            string sqlStr = "select * from admin";
            OleDbDataAdapter da = new OleDbDataAdapter(sqlStr, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataRow MyRow = dt.Rows[0];
            
            TextBox1.Text = MyRow["pwd"].ToString();
          
            conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");

        string sqlStr = "select * from admin where [username]='" + DropDownList1.Text + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(sqlStr, conn);
        DataTable dt = new DataTable();
        OleDbCommandBuilder builer = new OleDbCommandBuilder(da);
        da.Fill(dt);
        DataRow MyRow = dt.Rows[0];
        MyRow[2] = TextBox2.Text;
        da.Update(dt);
        Response.Write("<script lanuage=javascript>alert('修改成功！！');location='javascript:history.go(-1)'</script>");

        conn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");

        string sqlStr = "select * from admin where username='" + DropDownList1.Text + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(sqlStr, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataRow MyRow = dt.Rows[0];
        TextBox1.Text = MyRow["pwd"].ToString();
        conn.Close();
    }
}
