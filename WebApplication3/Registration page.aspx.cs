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
    public partial class Registration_page : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)   
    {
 

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\HP\documents\visual studio 2010\Projects\WebApplication3\WebApplication3\App_Data\Database1.mdf;Integrated Security=True;User Instance=True");
    con.Open();
    SqlCommand cmd = new SqlCommand("insert into Register" + "(Fname,Lname,Email,Gender,Address,Phone,Password) values (@Fname,@Lname,@Email,@Gender,@Address,@Phone,@Password)",con);
    cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
    cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
    cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
    cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
    cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
    cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);
    cmd.Parameters.AddWithValue("@Password", TextBox6.Text);

    cmd.ExecuteNonQuery(); 
   
    Label1.Text = "Registered Successfully!"; 
        con.Close();
    }

        
    }
}