using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CreacionDocumentoDemo.Formulario.TramitesFISEI
{
    public partial class ReconocimientoCultFisica : System.Web.UI.Page
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
           
                List<String> datos = new List<string>();
                datos.Add("lunes");
                datos.Add("martes");
                datos.Add("miércoles");
            datos.Add("jueves");
            datos.Add("viernes");
            datos.Add("sábado");
            datos.Add("domingo");

            ddlNombreDia.DataSource = datos;
            ddlNombreDia.DataBind();

            //ddlPresidente.DataSource = datos;
            // ddlPresidente.DataBind();

            List<String> dias = new List<string>();
                for (int i = 1; i <= 31; i++)
                {
                    dias.Add(i.ToString());
                }

                     ddlNumeroDia.DataSource = dias;
                    ddlNumeroDia.DataBind();
                    ddlNumeroDia0.DataSource = dias;
                    ddlNumeroDia0.DataBind();


                List<String> meses = new List<string>();
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

                List<string> sesion = new List<string>();
                sesion.Add("Ordinaria");
                sesion.Add("Extraordinaria");

                ddlSesion.DataSource = sesion;
                ddlSesion.DataBind();
                ddlMes.DataSource = meses;
                ddlMes.DataBind();
                ddlMes0.DataSource = meses;
                ddlMes0.DataBind();
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            txtNombreEstu1.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu2.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu3.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;


            if (GridView1.SelectedRow.Cells[10].Text.Equals("SIST"))
            {
                txtCarrera1.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
                txtCarrera4.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
              //  txtCarrera3.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
            }
            ViewState["CorreoUTA"] = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            List<string> editables = new List<string>();
            editables.Add("<fecha>");
            editables.Add("<secuencia>");
            editables.Add("<anioReso>");

            editables.Add("<coordinador>");
            editables.Add("<fecha>");
            editables.Add("<fecha>");

            editables.Add("<fecha>");
            editables.Add("<fecha>");
            editables.Add("<fecha>");


            editables.Add("<fecha>");
            editables.Add("<fecha>");
            editables.Add("<fecha>");



        }

        protected void btnNumeroResolucion_Click(object sender, EventArgs e)
        {

        }
    }
}