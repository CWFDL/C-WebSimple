using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    public string strConnection;
    OleDbConnection myConn;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strConnection = "Provider=Microsoft.Jet.OleDb.4.0;" + "Data Source=" + Server.MapPath("db/shoppingonlinec2015110250.mdb");
        //"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + "G:\\git\\C-WebSimple\\1111\\db\\shoppingonlinec2015110250.mdb";
        myConn = new OleDbConnection(strConnection);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string username,pwdee;
        username = TextBox1.Text;
        pwdee = TextBox2.Text;


        string mySel = "select count(*)as iCount from [admin] where username='" + username + "'and pwd='" + pwdee + "'";

        OleDbCommand myCmd = new OleDbCommand(mySel, myConn);
        myCmd.Connection.Open();
        OleDbDataReader Dr;
        Dr = myCmd.ExecuteReader();
        Dr.Read();
        string Count = Dr["iCount"].ToString(); ;
        Dr.Close();
        if (Count != "0")
        {
            Session["username"] = username;
            Response.Redirect("centre.aspx");
        }
        else
            Response.Write("<script lanuage=javascript>alert('用户名或密码错误！');location='javascript:history.go(-1)'</script>");

        return;
    }
}
