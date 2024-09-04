using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp3
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnGuardaLoc_Click(object sender, EventArgs e)
        {
            string Localidad = txtLocalidad.Text;
            bool existe = false;

            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (item.Text.Equals(Localidad))
                {
                    existe = true;
                    break;
                }
            }
            if (existe)
            {
                lblGuardadoLocalidad.Text = "Ingrese una localidad no agregada anteriormente";
                txtLocalidad.Text = string.Empty;
            }
            else
            {
                ddlLocalidades.Items.Add(Localidad);
                lblGuardadoLocalidad.Text = string.Empty;
                txtLocalidad.Text = string.Empty;

            }
               
        }

        protected void btnIrA_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void cvCP_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(args.Value.Length == 4)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnGuardarUs_Click(object sender, EventArgs e)
        {
            if(cvCP.IsValid)
            {
                lblMensaje.Text = "Bienvenido/a "+ txtUsuario.Text;
            }
            
        }

       
    }
}