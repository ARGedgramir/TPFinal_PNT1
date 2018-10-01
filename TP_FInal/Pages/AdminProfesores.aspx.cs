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
    public partial class AdminProfesores : System.Web.UI.Page
    {
        protected void Page_adminProfesores(object sender, EventArgs e)
        {
            btnInsMod.Click += new EventHandler(BtnInsMod_Click);
            searchintid.Click += new ImageClickEventHandler(BtnSearch_Click);

        }
        protected void BtnInsMod_Click(object sender, EventArgs e)
        {
            string firstname = txtFirstName.Text;
            string lastname = txtLastName.Text;
     //       Calendar birthdate = calbirthdate;
            string email = txtemail.Text;
            string telephone = txttelephone.Text;
            int intID = Convert.ToInt32(txtinternalID.Text);  //convertir el DNI nvarchar a int
            int antique = Convert.ToInt32(txtantique.Text);
            int dni = Convert.ToInt32(txtdni.Text);


           SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

            con.Open();

            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command
            com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
            com.CommandText = "spInsertProf"; //Stored Procedure Name

            

            com.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = firstname;
            com.Parameters.Add("@lastName", SqlDbType.NVarChar).Value = lastname;
   //         com.Parameters.Add("@birthdate", SqlDbType.Date).Value = birthdate;
            com.Parameters.Add("@DNI", SqlDbType.Int).Value = dni;
            com.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
            com.Parameters.Add("@telephone", SqlDbType.NVarChar).Value = telephone;
            com.Parameters.Add("@internal_id", SqlDbType.Int).Value=intID;
            com.Parameters.Add("@antique", SqlDbType.Int).Value=antique;
            try
            {
                com.ExecuteNonQuery();
            }

            catch (Exception ex)
            {
            }
            finally
            {
                Response.Redirect("AdminProfesores.aspx"); //Refresco la pagina
                con.Close(); //Cerramos la conexion
            }


        }

        protected void BtnSearch_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}