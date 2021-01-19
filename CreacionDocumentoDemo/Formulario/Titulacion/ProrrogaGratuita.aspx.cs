using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreacionDocumentoDemo.Formulario.Titulacion
{
    public partial class ProrrogaGratuita : System.Web.UI.Page
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
            //Sesion
            ManejoDatos datos = new ManejoDatos();
            ddlSesion.DataSource = datos.ObtenerTipoSesion();
            ddlSesion.DataBind();

            //Carreras
            var X = datos.ObtenerCarrerasDB();
            List<string> carrerasC = datos.GetCarrerasBanner();
            var y = datos.GetCarrerasMinuscula();
            ddlCarrerasCoor.DataSource = carrerasC;
            ddlCarrerasCoor.DataBind();
            ddlCarreras.DataSource = y;
            ddlCarreras.DataBind();
            ddlCarreras0.DataSource = X;
            ddlCarreras0.DataBind();

            //Dias
            ddlNombreDia.DataSource = datos.ObtenerDiasSemana();
            ddlNombreDia.DataBind();


            //Dias del mes

            ddlDiaNum.DataSource = datos.ObtenerDiasMes();
            ddlDiaNum.DataBind();

            ddlDiaNum0.DataSource = datos.ObtenerDiasMes();
            ddlDiaNum0.DataBind();

            ddlDiaNum1.DataSource = datos.ObtenerDiasMes();
            ddlDiaNum1.DataBind();
            ddlDiaNum2.DataSource = datos.ObtenerDiasMes();
            ddlDiaNum2.DataBind();
            ddlDiaNum3.DataSource = datos.ObtenerDiasMes();
            ddlDiaNum3.DataBind();


            ddlCarrerasCoor.DataSource = datos.ObtenerCarrerasCoord();
            ddlCarrerasCoor.DataBind();

            //Mes
            ddlMes.DataSource = datos.ObtenerMeses();
            ddlMes.DataBind();
            ddlMes0.DataSource = datos.ObtenerMeses();
            ddlMes0.DataBind();
            ddlMes1.DataSource = datos.ObtenerMeses();
            ddlMes1.DataBind();
            ddlMes2.DataSource = datos.ObtenerMeses();
            ddlMes2.DataBind();
            ddlMes3.DataSource = datos.ObtenerMeses();
            ddlMes3.DataBind();
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnNumeroResolucion_Click(object sender, EventArgs e)
        {
            generarNumeroResolucion();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombreEstu1.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu2.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu3.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            ViewState["CEDULA_EST"] = GridView1.SelectedRow.Cells[1].Text;
        }
        private void generarNumeroResolucion()
        {
            ManejoDatos mysql = new ManejoDatos();
            string resolucion = mysql.obtenerSiguienteResolución();
            txtSecuencia.Text = resolucion;
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