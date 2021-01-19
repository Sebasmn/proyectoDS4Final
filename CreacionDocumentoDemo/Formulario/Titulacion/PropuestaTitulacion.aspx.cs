using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreacionDocumentoDemo.Formulario.Titulacion
{
    public partial class PropuestaTitulacion1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDatos();
            }
        }

        private void cargarDatos()
        {
            ManejoDatos md = new ManejoDatos();

            //Sesion
            List<string> sesion = new List<string>();
            sesion.Add("Ordinaria");
            sesion.Add("Extraordinaria");
            ddlSesion.DataSource = sesion;
            ddlSesion.DataBind();


            //Nombres de Dias
            List<string> dias = md.ObtenerDiasSemana();
            ddlNombreDia.DataSource = dias;
            ddlNombreDia.DataBind();


            //Dias del mes
            List<string> numerosMes = md.ObtenerDiasMes();
            ddlNumeroDia.DataSource = numerosMes;
            ddlNumeroDia.DataBind();

            ddlNumeroDia0.DataSource = numerosMes;
            ddlNumeroDia0.DataBind();
            ddlNumeroDia1.DataSource = numerosMes;
            ddlNumeroDia1.DataBind();
            ddlNumeroDia2.DataSource = numerosMes;
            ddlNumeroDia2.DataBind();

            //Meses
            List<string> meses = md.ObtenerMeses();

            ddlMes.DataSource = meses;
            ddlMes.DataBind();
            ddlMes0.DataSource = meses;
            ddlMes0.DataBind();
            ddlMes1.DataSource = meses;
            ddlMes1.DataBind();
            ddlMes2.DataSource = meses;
            ddlMes2.DataBind();


            //Carreras
            ManejoDatos datos = new ManejoDatos();
            List<string> modelo = datos.getCarreras();
            List<string> modeloMin = datos.GetCarrerasMinuscula();
            ddlCarrera.DataSource = modeloMin;
            ddlCarrera.DataBind();
            ddlCarrera0.DataSource = modelo;
            ddlCarrera0.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnNumeroResolucion_Click(object sender, EventArgs e)
        {
            generarNumeroResolucion();
        }
        private void generarNumeroResolucion()
        {
            ManejoDatos mysql = new ManejoDatos();
            string resolucion = mysql.obtenerSiguienteResolución();
            txtSecuencia.Text = resolucion;
        }

        protected void txtNombreEstu0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            panelModalBusquedaEst.Visible = true;
            ModalPopupExtender1.Show();
            Label1.Text = "Buscando";
            ManejoDatos datos = new ManejoDatos();
            // List<Estudiante> listado =  
            var bs1 = new BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            GridView1.DataSource = bs1; //<-- notes it takes the entire bindingSource
            GridView1.DataBind();
            Label1.Text = "Correcto";
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtNombreEstu.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu0.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
        }

        protected void GridView1_SelectedIndexChanging2(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ManejoDatos datos = new ManejoDatos();
            var bs1 = new System.Windows.Forms.BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            GridView1.DataSource = bs1; //<-- notes it takes the entire bindingSource
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            Label1.Text = "Correcto";

            GridView1.DataBind();
        }
    }
}