


using System;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder skills = new StringBuilder();

            foreach (ListItem item in cblSkills.Items)
            {
                if (item.Selected)
                {
                    skills.Append(item.Text + ", ");
                }
            }

            lblResult.Text =
                "<b>Registration Successful</b><br/><br/>" +
                "Name : " + txtName.Text + "<br/>" +
                "Email : " + txtEmail.Text + "<br/>" +
                "Contact : " + txtContact.Text + "<br/>" +
                "College : " + txtCollege.Text + "<br/>" +
                "Department : " + rblDepartment.SelectedItem.Text + "<br/>" +
                "Event : " + ddlEvent.SelectedItem.Text + "<br/>" +
                "Gender : " + rblGender.SelectedItem.Text + "<br/>" +
                "Skills : " + skills.ToString() + "<br/>" +
                "Address : " + txtAddress.Text;
        }
    }
}
