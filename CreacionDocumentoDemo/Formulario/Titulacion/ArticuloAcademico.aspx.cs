using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreacionDocumentoDemo.Formulario.Titulacion
{
    public partial class ArticuloAcademico : System.Web.UI.Page
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
            List<string> sesion = new List<string>();
            sesion.Add("Ordinaria");
            sesion.Add("Extraordinaria");
            ddlSesion.DataSource = sesion;
            ddlSesion.DataBind();


            //Nombres de Dias
            List<string> dias = new List<string>();
            dias.Add("lunes");
            dias.Add("martes");
            dias.Add("miércoles");
            dias.Add("jueves");
            dias.Add("viernes");
            dias.Add("sábado");
            dias.Add("domingo");
            ddlNombreDia.DataSource = dias;
            ddlNombreDia.DataBind();


            //Dias del mes
            List<int> numeros = new List<int>();
            for (int i = 1; i < 32; i++)
            {
                numeros.Add(i);
            }
            ddlNumeroDia.DataSource = numeros;
            ddlNumeroDia.DataBind();

            ddlNumeroDia0.DataSource = numeros;
            ddlNumeroDia0.DataBind();

            //Meses
            List<string> meses = new List<string>();
            meses.Add("enero");
            meses.Add("febrero");
            meses.Add("marzo");
            meses.Add("abril");
            meses.Add("mayo");
            meses.Add("junio");
            meses.Add("julio");
            meses.Add("agosto");
            meses.Add("septiembre");
            meses.Add("octubre");
            meses.Add("noviembre");
            meses.Add("diciembre");

            ddlMes.DataSource = meses;
            ddlMes.DataBind();
            ddlMes0.DataSource = meses;
            ddlMes0.DataBind();

            //Carreras
            ManejoDatos datos = new ManejoDatos();
            List<string> modelo = datos.getCarreras();
            ddlCarrera.DataSource = modelo;
            ddlCarrera.DataBind();
            
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnNumeroResolucion_Click(object sender, EventArgs e)
        {

        }
    }
}