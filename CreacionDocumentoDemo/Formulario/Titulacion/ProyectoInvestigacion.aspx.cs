using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreacionDocumentoDemo.Formulario.Titulacion
{
    public partial class ProyectoInvestigacion : System.Web.UI.Page
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

            //Meses
            List<string> meses = md.ObtenerMeses();

            ddlMes.DataSource = meses;
            ddlMes.DataBind();
            ddlMes0.DataSource = meses;
            ddlMes0.DataBind();


            //Carreras
            ManejoDatos datos = new ManejoDatos();
            List<string> modelo = datos.getCarreras();
            List<string> modeloMin = datos.GetCarrerasMinuscula();
            List<string> modeloCarr = datos.GetCarrerasFooter();
            ddlCarrera.DataSource = modeloMin;
            ddlCarrera.DataBind();
            ddlCarrera0.DataSource = modelo;
            ddlCarrera0.DataBind();
            ddlCarreras.DataSource = modeloCarr;
            ddlCarreras.DataBind();
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
    }
}