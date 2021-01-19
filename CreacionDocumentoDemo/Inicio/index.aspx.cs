using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreacionDocumentoDemo.Inicio
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ManejarUsuario();
            }
           
          }
        private void ManejarUsuario()
        {
            if (
                 Session["USUARIOSW"] != null
                )
            {
                UsuariosSW tipo = (UsuariosSW)Session["USUARIOSW"];
                char userTipo = Convert.ToChar(tipo.Tipo);
                if (userTipo!='S')
                {
                    Response.Redirect("Login.aspx");
                }
            }
            else 
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
                   this.GetType(),
                   "OpenWindow", "window.open('../Formulario/CAF/ActualizacionConocimientos.aspx','_newtab');", true);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
                   this.GetType(),
                   "OpenWindow", "window.open('../Formulario/TramitesFISEI/Reingreso.aspx','_newtab');", true);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
             this.GetType(),
             "OpenWindow", "window.open('../Formulario/TramitesFISEI/AprobacionCdc.aspx','_newtab');", true);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
            this.GetType(),
            "OpenWindow", "window.open('../Formulario/TramitesFISEI/ReconocimientoCultFisica.aspx','_newtab');", true);
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
          this.GetType(),
          "OpenWindow", "window.open('../Formulario/Practicas.aspx','_newtab');", true);
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(
     this.GetType(),
     "OpenWindow", "window.open('../Formulario/CAF/Homologacion.aspx','_newtab');", true);
        }
    }
}