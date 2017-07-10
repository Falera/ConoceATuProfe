using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ConoceaTuProfe
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet1TableAdapters.AlumnoTableAdapter obj = new DataSet1TableAdapters.AlumnoTableAdapter();
                Object nombre = obj.login(txtUsuario.Text, txtContra.Text);
                if(nombre!=null)
                {
                    /*Session["nombre"] = nombre;*/
                    if (nombre.ToString() == "Admin")
                    {
                        Response.Redirect("Administrador.aspx");
                    }
                    else
                    {
                        Response.Redirect("ListadeBuscados.aspx?n=" + nombre);

                    }
                }
                else
                { Label1.Text = "Usuario o Contraseña incorrecta"; }
                
            }
            catch
            {
                Label1.Text = "Usuario o Contraseña incorrecta";
            }
        }
    }
}