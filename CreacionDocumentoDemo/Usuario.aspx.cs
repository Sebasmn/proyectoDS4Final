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
            if (!IsPostBack)
            {
                cargarTabla();
                cargarCombo();
            }
            btnActualizar.Visible = false;
            btnEliminar.Visible = false;

            
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
            gvUsuarios.DataSource = ((List<UsuarioEntity>)ViewState["USERS"]) ;
            gvUsuarios.PageIndex = e.NewPageIndex;
            gvUsuarios.DataBind();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {

            modalUsuarios.Show();
            Panel1.Visible = true;
        }

        void cargarTabla()
        {
            ManejoDatos datos = new ManejoDatos();
            List<UsuarioEntity> lista = datos.getUsuarios();
            ViewState["USERS"] = lista;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          
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
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Llenar todos los campos.. !')", true);
               // lblMensaje.Text = "Datos incompletos, porfavor complete todos los campos del formulario";
            }
            else
            {
                if (!txtClave.Text.Equals(txtConfirmacionClave.Text))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Llenar todos los campos.. !')", true);
                   // lblMensaje.Text = "Las contraseñas no coincide";
                }
                else {

                    UsuarioEntity usuar= new UsuarioEntity();
                    usuar.Cedula = txtCedula.Text;
                    usuar.Nombres = (txtNombreUno.Text + " " + txtNombreDos.Text).ToUpper();
                    usuar.Apellidos = (txtApellidoP.Text + " " + txtApellidoM.Text).ToUpper();
                    usuar.Clave = txtClave.Text.ToUpper();
                    usuar.Correo = txtEmail.Text.ToUpper();
                    usuar.Tipo = id.ToString().ToUpper();
                    ManejoDatos mn = new ManejoDatos();
                    bool result=mn.guardarDatosUsuario(usuar);
                    if (result==true)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Usuario insertado.. !')", true);
                     //   lblMensaje.Text = "Usuario insertado con exito";

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
            lblMensaje.Text = "";
            AgragarUsuario();
        }

        protected void ddlRol_SelectedIndexChanged(object sender, EventArgs e)
        {
          //  id =char.Parse(tipos.ElementAt(ddlRol.SelectedIndex));

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

        protected void botonLogin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Inicio/Login.aspx");
        }

        protected void btnGuardar0_Click(object sender, EventArgs e)
        {
         /*   Panel1.Visible = true;
            ModalPopupExtender1.Show();
            ManejoDatos datos = new ManejoDatos();
           // datos.getAllUsers();
            gvUsuarios.DataSource = datos.getUsuarios();
            gvUsuarios.DataBind();
            cargarTabla();*/
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            gvUsuarios.DataSource = ((List<UsuarioEntity>)ViewState["USERS"]).FindAll(usuario 
                => 
            usuario.Cedula.Contains(TextBox1.Text)||
             usuario.Nombres.Contains(TextBox1.Text) ||
              usuario.Ap.Contains(TextBox1.Text) 
            );
            gvUsuarios.DataBind();
          //  updatePanelUsers.Update();
        }

        protected void gvUsuarios_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            foreach (TableCell myCell in e.Row.Cells)
            {
                myCell.Style.Add("word-break", "break-all");
                myCell.Width = 60;
                myCell.Width = 30;
            }
        }

        protected void botonLogin0_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio/Login.aspx");
        }
    }
}