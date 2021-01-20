using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreacionDocumentoDemo.Inicio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ManejarUsuario();
        }

        private void ManejarUsuario()
        {
            if (
                 Session["USUARIOSW"] != null
                )
            {
                UsuariosSW tipo = (UsuariosSW)Session["USUARIOSW"];
                char userTipo = Convert.ToChar(tipo.Tipo);

                switch (userTipo)
                {
                    case 'S': //Secretaria --> Menu Resoluciones
                        Response.Redirect("../Inicio/index.aspx");
                        break;
                    case 'A': //Admin --> Menu Admin
                        Response.Redirect("../Inicio/admin.aspx");
                        break;
                    case 'C': //Consejo --> Menu Consejo
                        Response.Redirect("../Formulario/Consejo.aspx");
                        break;

                }
            }
        }
        protected void botonLogin_Click(object sender, EventArgs e)
        {
            string usuario = TextBox1.Text;
            string clave = TextBox2.Text;
            if (cbConsejo.Checked)
            {
                ManejoDatos datos = new ManejoDatos();
                ConsejoDir consejo = datos.ObtenerLoginConsejo(usuario, clave);
                if (consejo.Codigo!=null)
                {
                   // Session["USUARIOSW"] = tipo;
                    Session["CONSEJO"] = consejo;
                    Response.Redirect("../Formulario/Consejo.aspx");
                }
                else
                {
                    //no se encontro usuario
                    Label1.Text = "Usuario y/c clave incorrectas";
                }
            }
            else
            {
                
                ManejoDatos datos = new ManejoDatos();
                UsuariosSW tipo = datos.obtenerLogin(usuario, clave);
                if (tipo.Tipo != null)
                {
                    char userTipo = Convert.ToChar(tipo.Tipo);
                    Session["USUARIOSW"] = tipo;//UsuariosSW
                    switch (userTipo)
                    {
                        case 'S': //Secretaria --> Menu Resoluciones

                            Response.Redirect("../Inicio/index.aspx");
                            break;
                        case 'A': //Admin --> Menu Admin
                            Response.Redirect("admin.aspx");
                            break;
                     /*   case 'C': //Consejo --> Menu Consejo
                            Session["CONSEJO"] = TextBox1.Text;
                            Response.Redirect("../Formulario/Consejo.aspx");
                            break;*/

                    }
                }
            }
           
            
           
       
        }

        protected void cbConsejo_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}