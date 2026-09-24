using System;

namespace StudentMarksheet
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            string enroll = txtEnroll.Text;
            string name = txtName.Text;

            int s1 = Convert.ToInt32(txtSub1.Text);
            int s2 = Convert.ToInt32(txtSub2.Text);
            int s3 = Convert.ToInt32(txtSub3.Text);
            int s4 = Convert.ToInt32(txtSub4.Text);
            int s5 = Convert.ToInt32(txtSub5.Text);

            int total = s1 + s2 + s3 + s4 + s5;

            float percentage = total / 5.0f;

            string grade = "";

            if (percentage >= 90)
                grade = "A+";
            else if (percentage >= 80)
                grade = "A";
            else if (percentage >= 70)
                grade = "B";
            else if (percentage >= 60)
                grade = "C";
            else if (percentage >= 50)
                grade = "D";
            else
                grade = "Fail";

            lblResult.Text =
                "Enrollment : " + enroll +
                "<br/>Name : " + name +
                "<br/>Total : " + total +
                "<br/>Percentage : " + percentage + "%" +
                "<br/>Grade : " + grade;
        }
    }
}