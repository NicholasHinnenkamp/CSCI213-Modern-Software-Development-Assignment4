using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject2
{
    public partial class personnel : System.Web.UI.Page
    {
        personnelDataContext dbcon = new personnelDataContext();

        private void ShowAll() 
        {
            var result = from x in dbcon.Employees
                         select x;
            // add data to the GridView
            GridView1.DataSource = result;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ShowAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var result = from x in dbcon.Employees
                         orderby x.hourly_pay_rate
                         select x;
            // add data to the GridView
            GridView1.DataSource = result;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var result = from x in dbcon.Employees
                         orderby x.hourly_pay_rate descending
                         select x;
            // add data to the GridView
            GridView1.DataSource = result;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Find for ID
            int id = int.Parse(TextBox4.Text);
            Employee idEm = (from x in dbcon.Employees
                             where x.employeeID == id
                             select x).First();
            // delete Row from the Table
            dbcon.Employees.DeleteOnSubmit(idEm);
            dbcon.SubmitChanges();
            // show ALL
            ShowAll();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Employee myEmployee = new Employee();
            myEmployee.name = TextBox1.Text;
            myEmployee.position = TextBox2.Text;
            myEmployee.hourly_pay_rate = decimal.Parse(TextBox3.Text);
            // add new row to the Table
            dbcon.Employees.InsertOnSubmit(myEmployee);
            dbcon.SubmitChanges();

            ShowAll();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var result = from x in dbcon.Employees
                         where x.name.Contains(TextBox5.Text)
                         select x;
            GridView1.DataSource = result;
            GridView1.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            var result = from x in dbcon.Employees
                         select x.hourly_pay_rate;
            Label1.Text = "Highest Hourly pay rate is " + result.Max() + " dollars";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

            var result = from x in dbcon.Employees
                         select x.hourly_pay_rate;
            Label1.Text = "Lowest Hourly pay rate is " + result.Min() + " dollars";
        }
    }
}