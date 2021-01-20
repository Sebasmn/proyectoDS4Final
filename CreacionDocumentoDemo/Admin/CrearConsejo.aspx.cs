﻿using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreacionDocumentoDemo.Admin
{
    public partial class CrearConsejo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ManejarUsuario();
                cargarDatos();
            }
        }

        private void cargarDatos()
        {
            List<string> tipos = new List<string>();
            tipos.Add("Ordinaria");
            tipos.Add("Extraordinaria");
            DropDownList1.DataSource = tipos;
            DropDownList1.DataBind();
        }

        private void ManejarUsuario()
        {
            if (
                 Session["USUARIOSW"] != null
                )
            {
                UsuariosSW tipo = (UsuariosSW)Session["USUARIOSW"];
                char userTipo = Convert.ToChar(tipo.Tipo);
                if (userTipo!='A')
                {
                    Response.Redirect("../Inicio/Login.aspx");
                }
              
            }
        }
        protected void btnCrear_Click(object sender, EventArgs e)
        {
            if (
                !txtFecha.Text.Equals("")  &&
                  !txtCedula.Text.Equals("") &&
                    !txtClave.Text.Equals("")
                )
            {
                string reunion = "";
                if (DropDownList1.SelectedIndex==0)
                {
                     reunion = "O";
                }
                else
                {
                    reunion = "E";
                }


                UsuariosSW admin = ((UsuariosSW)Session["USUARIOSW"]) ;//UsuariosSW
                string cedulaUser = admin.Cedula;
                ManejoDatos datos = new ManejoDatos();
                bool guardado = datos.crearConsejo(
                    txtFecha.Text, txtCedula.Text, txtClave.Text
                    , cedulaUser, reunion
                    );
                if (guardado)
                {
                    ScriptManager.RegisterClientScriptBlock(this,
                    this.GetType(), "alertMessage", "alert('Consejo creado !')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this,
                   this.GetType(), "alertMessage", "alert('Error en los datos !')", true);
                }

                
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, 
                    this.GetType(), "alertMessage", "alert('Llenar TODOS los campos correctamente')", true);
            }
        }

        protected void btnCrear0_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../Inicio/Login.aspx");
        }
    }
}