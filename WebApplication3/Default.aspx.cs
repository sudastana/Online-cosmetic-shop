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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
            Label4.Text = "You have Logged out Successfully....";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
        
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddtoCart1")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownlist1"));
                Response.Redirect("AddtoCart1.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString()); 
            }
        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

    }
}