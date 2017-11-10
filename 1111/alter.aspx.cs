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

public partial class alter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Focus();
        DropDownList1.AutoPostBack = true;
        if (!IsPostBack)
        {
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
            string sqlStr = "select * from commodity";
            OleDbDataAdapter da = new OleDbDataAdapter(sqlStr, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataRow MyRow = dt.Rows[0];
            TextBox2.Text = MyRow["sname"].ToString();
            TextBox3.Text = MyRow["category"].ToString();
            TextBox4.Text = MyRow["mon"].ToString();
            TextBox5.Text = MyRow["introduce"].ToString();
            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");

        string sqlStr = "select * from commodity where sname='" + DropDownList1.Text + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(sqlStr, conn);
        DataTable dt = new DataTable();
        OleDbCommandBuilder builer = new OleDbCommandBuilder(da);
        da.Fill(dt);
        DataRow MyRow = dt.Rows[0];
        MyRow[1] = TextBox2.Text;
        MyRow[2] = TextBox3.Text;
        MyRow[4] = int.Parse(TextBox4.Text);
        MyRow[3] = TextBox5.Text;
        
        da.Update(dt);
        Response.Write("<script lanuage=javascript>alert('修改成功！！');location='javascript:history.go(-1)'</script>");

        conn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        OleDbConnection conn = new OleDbConnection();
        conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");

        string sqlStr = "select * from commodity where sname='" + DropDownList1.Text + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(sqlStr, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataRow MyRow = dt.Rows[0];
        TextBox2.Text = MyRow["sname"].ToString();
        TextBox3.Text = MyRow["category"].ToString();
        TextBox4.Text = MyRow["mon"].ToString();
        TextBox5.Text = MyRow["introduce"].ToString();
        conn.Close();
    }
}
