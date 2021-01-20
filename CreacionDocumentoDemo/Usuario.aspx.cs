using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreacionDocumentoDemo
{
    public partial class Usuario : System.Web.UI.Page
    {
        List<string> tipos = new List<string>();
        char id= ' ';
        protected void Page_Load(object sender, EventArgs e)
        {
            
            btnActualizar.Visible = false;
            btnEliminar.Visible = false;

            cargarCombo();
        }

        protected void gvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCedula.Text = gvUsuarios.SelectedRow.Cells[1].Text;
            string[] dd = gvUsuarios.SelectedRow.Cells[2].Text.Split(' ');
            txtNombreUno.Text = dd[0];
            txtNombreDos.Text = dd[1];
            string[] apellidos = gvUsuarios.SelectedRow.Cells[3].Text.Split(' ');
            txtApellidoP.Text = apellidos[0];
            txtApellidoM.Text = apellidos[1];
            txtClave.Text= gvUsuarios.SelectedRow.Cells[4].Text;
            txtEmail.Text = gvUsuarios.SelectedRow.Cells[5].Text;
            txtCedula.Enabled = false;
            btnEliminar.Visible = true;
            btnActualizar.Visible = true;
        }

        protected void gvUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ManejoDatos datos = new ManejoDatos();
            // List<Estudiante> listado =  
            var bs1 = new BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            gvUsuarios.DataSource = bs1; //<-- notes it takes the entire bindingSource
            gvUsuarios.PageIndex = e.NewPageIndex;
            gvUsuarios.DataBind();
            //Label1.Text = "Correcto";

            gvUsuarios.DataBind();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            
           
        }

        void cargarTabla()
        {
            ManejoDatos datos = new ManejoDatos();
            
            gvUsuarios.DataSource = datos.getUsuarios();
            gvUsuarios.DataBind();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Panel1.Visible = true;
            ModalPopupExtender1.Show();
            
            cargarTabla();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            ActualizarUsuario();
            btnActualizar.Visible = false;
            btnEliminar.Visible = false;
            txtCedula.Enabled = true;
            limpiarCampos();
        }
        void AgragarUsuario()
        {
            if (txtNombreUno.Text.Length==0 || txtCedula.Text.Length==0 || txtNombreDos.Text.Length==0 || 
                txtApellidoM.Text.Length==0 || txtApellidoP.Text.Length==0 || txtClave.Text.Length==0 || 
                txtConfirmacionClave.Text.Length==0 || txtEmail.Text.Length==0 || ddlRol.SelectedIndex==-1)
            {
                lblMensaje.Text = "Datos incompletos, porfavor complete todos los campos del formulario";
            }
            else
            {
                if (!txtClave.Text.Equals(txtConfirmacionClave.Text))
                {
                    lblMensaje.Text = "Las contraseñas no coincide";
                }
                else {

                    UsuarioEntity usuar= new UsuarioEntity();
                    usuar.Cedula = txtCedula.Text;
                    usuar.Nombres = txtNombreUno.Text + " " + txtNombreDos.Text;
                    usuar.Apellidos = txtApellidoP.Text + " " + txtApellidoM.Text;
                    usuar.Clave = txtClave.Text;
                    usuar.Correo = txtEmail.Text;
                    usuar.Tipo = id.ToString();
                    ManejoDatos mn = new ManejoDatos();
                    bool result=mn.guardarDatosUsuario(usuar);
                    if (result==true)
                    {
                        lblMensaje.Text = "Usuario insertado con exito";

                    }
                    else
                    {
                        lblMensaje.Text = "No se pudeo insertar el usuario";
                    }
                }
            }
        }
        void ActualizarUsuario()
        {
            if (txtNombreUno.Text.Length == 0 || txtCedula.Text.Length == 0 || txtNombreDos.Text.Length == 0 ||
                txtApellidoM.Text.Length == 0 || txtApellidoP.Text.Length == 0 || txtClave.Text.Length == 0 ||
                txtConfirmacionClave.Text.Length == 0 || txtEmail.Text.Length == 0 || ddlRol.SelectedIndex == -1)
            {
                lblMensaje.Text = "Datos incompletos, porfavor complete todos los campos del formulario";
            }
            else
            {
                if (!txtClave.Text.Equals(txtConfirmacionClave.Text))
                {
                    lblMensaje.Text = "Las contraseñas no coincide";
                }
                else
                {

                    UsuarioEntity usuar = new UsuarioEntity();
                    usuar.Cedula = txtCedula.Text;
                    usuar.Nombres = txtNombreUno.Text + " " + txtNombreDos.Text;
                    usuar.Apellidos = txtApellidoP.Text + " " + txtApellidoM.Text;
                    usuar.Clave = txtClave.Text;
                    usuar.Correo = txtEmail.Text;
                    usuar.Tipo = id.ToString();
                    ManejoDatos mn = new ManejoDatos();
                   bool res= mn.actualizarDatosUsuario(usuar);
                    if (res==true)
                    {
                        lblMensaje.Text = "Usuario actualizado con exito";
                    }
                    else
                    {
                        lblMensaje.Text = "No se pudo actualizar al usuario";
                    }
                }
            }
        }
        void cargarCombo()
        {
            
            ManejoDatos manejo = new ManejoDatos();
            foreach (var item in manejo.getTiposUsuarios())
            {
                ddlRol.Items.Add(item.Descripcion);
                tipos.Add(item.ID);
            }
        }
        void limpiarCampos()
        {
            txtCedula.Text = "";
            txtNombreDos.Text = "";
            txtNombreUno.Text = "";
            txtApellidoM.Text = "";
            txtApellidoP.Text = "";
            txtClave.Text = "";
            txtEmail.Text = "";
            txtConfirmacionClave.Text = "";
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            AgragarUsuario();
        }

        protected void ddlRol_SelectedIndexChanged(object sender, EventArgs e)
        {
            id =char.Parse(tipos.ElementAt(ddlRol.SelectedIndex));

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ManejoDatos manejoDatos = new ManejoDatos();
            bool result=manejoDatos.eliminarUsuario(txtCedula.Text);
            if (result==true)
            {
                lblMensaje.Text = "usuario eliminado";
            }
            else
            {
                lblMensaje.Text = "no se pudo eliminar el usuario";
            }
        }
    }
}