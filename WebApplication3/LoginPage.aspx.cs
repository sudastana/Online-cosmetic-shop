using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\HP\documents\visual studio 2010\Projects\WebApplication3\WebApplication3\App_Data\Database1.mdf;Integrated Security=True;User Instance=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Reg where Email='" + TextBox1.Text + "'and password='" + TextBox2 + "'",con);
            DataTable dt=new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count ==1)
            {
                Label1.Text="Login Successfull!";
                Label1.ForeColor=System.Drawing.Color.Green;
                Response.Redirect("default.aspx");
             
            }
            else
            {
                Label1.Text="Login Unsuccessfull!";
                Label1.ForeColor=System.Drawing.Color.Red;
            }
        }
    }
}