using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Word = Microsoft.Office.Interop.Word;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Diagnostics;

namespace CreacionDocumentoDemo.Formulario
{
    public partial class Consejo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                ManejarUsuario();
                if (Session["ResolucionesAprobadas"] != null)
                {
                    actualizarAprobadas();
                }
            }
            

            if (!IsPostBack)
            {
                cargarResoluciones();
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
                if (userTipo != 'C')
                {
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        private void cargarResoluciones()
        {
            ManejoDatos datos = new ManejoDatos();
            List<ResolucionVista> resoluciones =datos.ObtenerResolucionesVista("30");
            var bs1 = new BindingSource();
            bs1.DataSource = resoluciones;
            gvResoluciones.DataSource = bs1; //<-- notes it takes the entire bindingSource
            gvResoluciones.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            abrirDocumento(gvResoluciones.SelectedRow.Cells[2].Text);

        }

        private void abrirDocumento(object text)
        {
            try
            {
                Process.Start(text.ToString());
            }
            catch (Exception ex)
            {
                //No se ha podido abrir el archivo
            }
            

           /* Word.Application wordApp = new Word.Application();
            Word.Document myWordDoc = null;
            myWordDoc = wordApp.Documents.Open(ref text);*/

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
                Aprobada aprobada = new Aprobada(clickedRow.Cells[3].Text, clickedRow.Cells[2].Text);
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
          
            var bs1 = new BindingSource();
            bs1.DataSource = ((List<Aprobada>)Session["ResolucionesAprobadas"]);
            gvAprobadas.DataSource = bs1; //<-- notes it takes the entire bindingSource
            gvAprobadas.DataBind();
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
            if (Session["ResolucionesAprobadas"]!=null)
            {
                if (
                     ((List<Aprobada>)Session["ResolucionesAprobadas"]).Count>0
                    )
                {
                     List<Aprobada> aprobadas = ((List<Aprobada>)Session["ResolucionesAprobadas"]);
                    ManejoDatos datos = new ManejoDatos();
                     datos.generarActa(aprobadas);
                }
            }
        }
    }

    public class Aprobada
    {
        public string Codigo { get; set; }
        public string Ubicacion { get; set; }
        public Aprobada(string codigo,string path)
        {
            this.Codigo = codigo;
            this.Ubicacion = path;
        }
    }
}