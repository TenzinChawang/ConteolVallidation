using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // compulsory for ado.net
using System.Data.SqlClient; // compulsory for ado.net

namespace ConteolVallidation
{
    public partial class val : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=hp;Initial Catalog=zaidi; Integrated Security = True");
            SqlCommand cmd;
            SqlDataReader dr;
            con.Open();

            string s = "insert into student (names, age, pass, cpass, email) values ( '" + txtNames.Text + "','+ txtAge_TextChanged + ','" + pasword.Text+ "','" + Cpass.Text + "','" + email.Text + "' ) ";
           
            cmd = new SqlCommand(s, con);
            cmd.CommandType = CommandType.Text;
            try
            {
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    Label6.Text = "Student Details Has Saved..!!";
                }
                else
                {
                    Label6.Text = "Failed To Save Student Details ..!!";
                }
            }
            catch (SqlException ex)
            {
                Label6.Text = ex.Message;
              
            }
            finally
            {
                con.Close();
            }
            txtNames.Text = "";
            txtAge.Text = "";
            pasword.Text = "";
            Cpass.Text = "";
            email.Text = "";
        }

        protected void txtAge_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtNames_TextChanged(object sender, EventArgs e)
        {

        }
    }

  
     
    }
