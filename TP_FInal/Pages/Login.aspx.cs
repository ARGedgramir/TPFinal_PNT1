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
using System.Web.Security;

namespace TP_FInal.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_load(object sender, EventArgs e)
        {
            btnlogin.Click += new EventHandler(Btnlogin_Click);

        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            if (Login.Autenticar(txtuserid, txtpassword))//Login1.UserName, Login1.Password
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                lblMensaje.Text = "Usuario incorrecto.";
                //Response.Redirect("Login.aspx"); //Refresco la pagina
            };
        }

        protected static bool Autenticar(TextBox txtuserid, TextBox txtpassword)
        {
            string email = txtuserid.Text;
            string password = txtpassword.Text;
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

            //cadena conexion
            con.Open();

            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command
            com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
            com.CommandText = "spchecklogin"; //Stored Procedure Name

            com.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            com.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;

            
            int cont = Convert.ToInt32(com.ExecuteScalar());

            if (cont == 1)
            {
                return true;
            }
            else
            {
                return false;
            };
        
    }

    public void btnlosspass_Click(object sender, EventArgs e)
    {

    }
    }
}
