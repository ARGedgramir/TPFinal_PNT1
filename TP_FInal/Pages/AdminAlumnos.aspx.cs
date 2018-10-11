using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Collections;
using System.Web.Configuration;
using System.Web.Security;

namespace TP_FInal.Pages
{
    public partial class AdminAlumnos : System.Web.UI.Page
    {

        protected void Page_adminAlumnos(object sender, EventArgs e)
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
            int dni = Convert.ToInt32(txtdni.Text);

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);

            con.Open();

            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command
            com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
            com.CommandText = "spInsertAlumn"; //Stored Procedure Name

            com.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = firstname;
            com.Parameters.Add("@lastName", SqlDbType.NVarChar).Value = lastname;
            //         com.Parameters.Add("@birthdate", SqlDbType.Date).Value = birthdate;
            com.Parameters.Add("@DNI", SqlDbType.Int).Value = dni;
            com.Parameters.Add("@Email", SqlDbType.NVarChar).Value = email;
            com.Parameters.Add("@telephone", SqlDbType.NVarChar).Value = telephone;
            com.Parameters.Add("@internal_id", SqlDbType.Int).Value = intID;
            try
            {
                com.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                Response.Redirect("AdminAlumnos.aspx"); //Refresco la pagina
                con.Close(); //Cerramos la conexion
            }


        }

        protected void BtnSearch_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                int intID = Convert.ToInt32(txtinternalID.Text);  //convertir el DNI nvarchar a int
        
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
                con.Open();

                SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.Parameters.Add("@internal_id", SqlDbType.Int).Value = intID;
                com.CommandText = "spSearchAlumn"; //Stored Procedure Name

                SqlDataReader reader = com.ExecuteReader();
                
                    if (reader.Read() == true)
                    {
                        txtFirstName.Text = reader["First_Name"].ToString();
                        txtLastName.Text = reader["Last_Name"].ToString();
                        txtemail.Text = reader["email"].ToString();
                        txttelephone.Text = reader["telephone"].ToString();
                        txtinternalID.Text = reader["internal_id"].ToString();  //convertir el DNI nvarchar a int
                        txtdni.Text = reader["dni"].ToString();
                        lblerror.Text = "";

                    con.Close(); //Cerramos la conexion 
                }
                else
                {
                    lblerror.Text = "No existe el alumno deseado";
                }
                
            }
            catch (Exception ex)
            {
            }
            finally
            {
                
                //Response.Redirect("AdminAlumnos.aspx"); //Refresco la pagina

            }
        }
    }
}
    