using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void generarNumeroResolucion()
        {
            ManejoDatos mysql = new ManejoDatos();
            string resolucion = mysql.obtenerSiguienteResolución();
            txtSecuencia.Text = resolucion;
        }
    }
}