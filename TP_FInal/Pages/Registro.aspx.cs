using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TP_FInal.Pages
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_load(object sender, EventArgs e)
        {
            btnSubmit.Click += new EventHandler(BtnSubmit_Click);

        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string firstname = txtFirstName.Text;
            string lastname = TextLastName.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            string ConfirmPassword = txtConfirmPassword.Text;
            
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

                con.Open();

                SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "spInsertUser"; //Stored Procedure Name

                com.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = firstname;
                com.Parameters.Add("@lastName", SqlDbType.NVarChar).Value = lastname;
                com.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
                com.Parameters.Add("@Password", SqlDbType.NVarChar).Value = password;
                try
                {
                    com.ExecuteNonQuery();                
                } 

                catch (Exception ex)
                {
                }
                finally
                {
                Response.Redirect("Registro.aspx"); //Refresco la pagina
                con.Close(); //Cerramos la conexion
                }

            
        } 
    }
}
