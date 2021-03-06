﻿using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Word = Microsoft.Office.Interop.Word;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Diagnostics;
using System.IO;
using System.Reflection;

namespace CreacionDocumentoDemo.Formulario
{
    public partial class Consejo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           // Session["CONSEJO"] = "CD-CF2020";
          //  cargarResoluciones();

            if (!IsPostBack)
            {
                   ManejarUsuario();
                cargarResoluciones();
                //   ManejarUsuario();
                if (Session["ResolucionesAprobadas"] != null)
                {
                    actualizarAprobadas();
                }
            }
            

           
            
        }
        private void ManejarUsuario()
        {
            if (
                 Session["CONSEJO"] != null
                )
            {
                ConsejoDir consejo = (ConsejoDir)Session["CONSEJO"];
                //char userTipo = Convert.ToChar(tipo.Tipo);
                if (consejo.Codigo==null)
                {
                    Response.Redirect("../Inicio/Login.aspx");
                }
                else
                {
                    Label3.Text = "Bienvenido \n  Consejo:  " + consejo.Codigo + " del " +consejo.Fecha;
                }
                if(consejo.Completado.Equals("1"))
                {
                    botonLogin.Enabled = false;
                }
            }
            else
            {
                Response.Redirect("../Inicio/Login.aspx");
            }
        }
        private void cargarResoluciones()
        {
            ManejoDatos datos = new ManejoDatos();
            //   string idConsejo = Session["CONSEJO"].ToString();
            string idConsejo = ((ConsejoDir)Session["CONSEJO"]).Codigo;
            
            List<ResolucionVista> resoluciones =datos.ObtenerResolucionesVista(idConsejo);
            ViewState["RESOLUCIONES"] = resoluciones;
            var bs1 = new BindingSource();
            bs1.DataSource = resoluciones;
            gvResoluciones.DataSource = bs1; //<-- notes it takes the entire bindingSource
            gvResoluciones.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
      //    var  plantilla = @"D:\Documentos\Pruebas\Resolucion0009-P-CD-FISEI-UTA-sd.docx";
          abrirDocumento(gvResoluciones.SelectedRow.Cells[2].Text);
          //  abrirDocumento(plantilla);
        }

        private void abrirDocumento(object text)
        {
            try
            {
                Word.Application wordApp = new Word.Application();
                object missing = Missing.Value;
                Word.Document myWordDoc = null;
                if (
                    true
                //File.Exists(text.ToString())

                    )
                {
                    // Button1.Text = "ECONTRADO;";
                    object readOnly = false;
                    object isVisible = true;
                    wordApp.Visible = true;

                    myWordDoc = wordApp.Documents.Open(ref text, ref missing, ref readOnly,
                                            ref missing, ref missing, ref missing,
                                            ref missing, ref missing, ref missing,
                                            ref missing, ref missing, ref missing,
                                            ref missing, ref missing, ref missing, ref missing);

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No se encuentra el archivo !')", true);
                }
            }
            catch (Exception exx)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+exx.Message+" !')", true);
            }
              
            
          
           
            }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Aprobar")
            {
                //first find the button that got clicked
                var clickedButton = e.CommandSource as System.Web.UI.WebControls.Button;
                //find the row of the button
                var clickedRow = clickedButton.NamingContainer as GridViewRow;
                //now as the UserName is in the BoundField, access it using the cell index.
                var clickedUserName = clickedRow.Cells[3].Text;
                Aprobada aprobada = new Aprobada(clickedRow.Cells[3].Text, clickedRow.Cells[2].Text,
                    clickedRow.Cells[5].Text
                    );
                // 3 ES EL CODIGO
                //Button3.Text = clickedUserName.ToString();
                if (Session["ResolucionesAprobadas"]==null)
                {
                    List<Aprobada> aprobadas = new List<Aprobada>();
                   
                    Session["ResolucionesAprobadas"] = aprobadas;
                    string codigo = clickedRow.Cells[3].Text;
                    ((List<Aprobada>)Session["ResolucionesAprobadas"]).Add(aprobada);
                    actualizarAprobadas();
                }
                else
                {
                    string nuevo = clickedRow.Cells[3].Text;
                    if (
                        ((List<Aprobada>)Session["ResolucionesAprobadas"]).Find(resolucion => resolucion.Codigo.Equals(clickedRow.Cells[3].Text))== null
                        )
                        {
                        ((List<Aprobada>)Session["ResolucionesAprobadas"]).Add(aprobada);
                        actualizarAprobadas();
                    }
                }
            }
        }

        private void actualizarAprobadas()
        {
            if (Session["ResolucionesAprobadas"]!=null)
            {
                var bs1 = new BindingSource();
                bs1.DataSource = ((List<Aprobada>)Session["ResolucionesAprobadas"]);
                gvAprobadas.DataSource = bs1; //<-- notes it takes the entire bindingSource
                gvAprobadas.DataBind();
            }
    
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["ResolucionesAprobadas"]!=null)
            {
                var x = gvAprobadas.SelectedRow.Cells[1].Text;
                ((List<Aprobada>)Session["ResolucionesAprobadas"]).RemoveAll(x1 => x1.Codigo.Equals(x));
                actualizarAprobadas();
            
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         
        }

        protected void botonLogin_Click(object sender, EventArgs e)
        {
            if (Session["ResolucionesAprobadas"] != null)
            {
                if (
                     ((List<Aprobada>)Session["ResolucionesAprobadas"]).Count > 0
                    )
                {
                    List<Aprobada> aprobadas = ((List<Aprobada>)Session["ResolucionesAprobadas"]);
                    ManejoDatos datos = new ManejoDatos();
               //     bool guardado = datos.generarActa(aprobadas, ((ConsejoDir)Session["CONSEJO"]).Codigo);
                    Resultado guardado = datos.generarActa1(aprobadas, ((ConsejoDir)Session["CONSEJO"]).Codigo);
                    
                    if (guardado.Completo)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Resolucion creada !')", true);
                        ((ConsejoDir)Session["CONSEJO"]).Completado = "1";
                        ManejarUsuario();
                        cargarResoluciones();
                        abrirDocumento(guardado.Ruta);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+guardado.Error+"  !')", true);

                    }
                }
            }
        }

        protected void botonLogin0_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../Inicio/Login.aspx");
        }

        protected void gvResoluciones_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (ViewState["RESOLUCIONES"]!=null)
            {
                var bs1 = new BindingSource();
                bs1.DataSource = (List<ResolucionVista>)ViewState["RESOLUCIONES"];
                gvResoluciones.DataSource = bs1; //<-- notes it takes the entire bindingSource
                gvResoluciones.DataBind();
            }
          
        
        }
    }

    public class Aprobada
    {
        public string Codigo { get; set; }
        public string Ubicacion { get; set; }
        public string Estudiante { get; set; }
        public Aprobada(string codigo,string path,string cedulaEstudiante)
        {
            this.Codigo = codigo;
            this.Ubicacion = path;
            this.Estudiante = cedulaEstudiante;
        }
    }
}