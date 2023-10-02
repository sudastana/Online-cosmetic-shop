using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication3
{
    public partial class _default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Timer1_Init(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1, 5);
            Image2.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
        

        }

        protected void Menu1_MenuItemClick(object sender, System.Web.UI.WebControls.MenuEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}