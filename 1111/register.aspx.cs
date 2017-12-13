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

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Response.Write("<script lanuage=javascript>alert('帐号或者密码不能为空！！');</script>");
        }
        else
        {
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
            string Val = "''" + TextBox1.Text + "," + TextBox2.Text;
            string SqlIns = "insert into admin([username],[pwd])values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            OleDbCommand InsConm = new OleDbCommand(SqlIns, conn);
            OleDbDataAdapter da = new OleDbDataAdapter();
            conn.Open();
            da.InsertCommand = InsConm;
            da.InsertCommand.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script lanuage=javascript>alert('注册成功！！');location='javascript:history.go(-1)'</script>");
        }
        
    }
}
