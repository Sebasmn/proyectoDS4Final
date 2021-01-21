using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

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
            List<string> carreras = new ManejoDatos().getCarreras();
            ddlCarreras.DataSource = carreras;
            ddlCarreras.DataBind();
            ddlCarreras0.DataSource = carreras;
            ddlCarreras0.DataBind();
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
            txtCedula.Text = GridView1.SelectedRow.Cells[1].Text;
            txtCedula0.Text = GridView1.SelectedRow.Cells[1].Text;
            txtCedula1.Text = GridView1.SelectedRow.Cells[1].Text;

            if (GridView1.SelectedRow.Cells[10].Text.Equals("SIST"))
            {
            //    txtCarrera1.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
               // txtCarrera4.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
              //  txtCarrera3.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
             
            }
            ViewState["CorreoUTA"] = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ManejoDatos datos = new ManejoDatos();
            // List<Estudiante> listado =  
            var bs1 = new BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            GridView1.DataSource = bs1; //<-- notes it takes the entire bindingSource
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
         //   Label1.Text = "Correcto";

            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            panelModalBusquedaEst.Visible = true;
            ModalPopupExtender1.Show();
          //  Label1.Text = "Buscando";
            ManejoDatos datos = new ManejoDatos();
            // List<Estudiante> listado =  
            var bs1 = new BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            GridView1.DataSource = bs1; //<-- notes it takes the entire bindingSource
            GridView1.DataBind();
          //  Label1.Text = "Correcto";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            List<string> editables = new List<string>();
            List<string> datos = new List<string>();
            editables.Add("<fecha>"); datos.Add(txtFechaHeader.Text);
            editables.Add("<secuencia>"); datos.Add(txtSecuencia.Text);
            editables.Add("<anioReso>"); datos.Add(txtAnio2.Text);

            editables.Add("<coordinador>"); datos.Add(txtCoordinador.Text);
            editables.Add("<carreraCoor>"); datos.Add(ddlCarreras.SelectedValue);
            editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue);

            editables.Add("<nombreDia>"); datos.Add(ddlNombreDia.SelectedValue);
            editables.Add("<numeroDia>"); datos.Add(ddlNumeroDia.SelectedValue);
            editables.Add("<nombreMes>"); datos.Add(ddlMes.SelectedValue);


            editables.Add("<anioSesion>"); datos.Add(txtAnio.Text);
            editables.Add("<acuerdo>"); datos.Add(txtAcuerdo.Text);
            editables.Add("<nombreMes1>"); datos.Add(ddlMes0.SelectedValue);

            editables.Add("<numeroDia1>"); datos.Add(ddlNumeroDia0.SelectedValue);
            editables.Add("<anioAcuerdo>"); datos.Add(txtAnio3.Text);
            editables.Add("<presidenteConsejo>"); datos.Add(txtPresidente.Text);


            editables.Add("<estudiante>"); datos.Add(txtNombreEstu1.Text);
            editables.Add("<cedula>"); datos.Add(txtCedula.Text);
            editables.Add("<carrera>"); datos.Add(ddlCarreras1.SelectedValue.ToString());

            editables.Add("<carreraGuardado>"); datos.Add(ddlCarreras0.SelectedValue.ToString());

            editables.Add("<carrera1>"); datos.Add(txtCarrera2.Text);
            editables.Add("<facultad>"); datos.Add(txtFacultad.Text);
            editables.Add("<presidente1>"); datos.Add(txtPresidente1.Text);

            //
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"Y:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string ruta = sb1.ToString();
            //

            String plantilla = @"Y:\Documentos\OficiosPlantilla\Sistemas\CulturaFisica.docx";
            //continuar = CreateWordDocument(plantilla, sb1.ToString());
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
           // resol.IDConsejo = 30;
            resol.IDConsejo = txtCodigoConsejoDestino.Text;
            resol.Estudiante = txtCedula.Text;
            resol.Secretaria = ((UsuariosSW)Session["USUARIOSW"]).Cedula;
            bool verificado = mysql.verificarDatos(editables, datos);
            if (verificado)
            {
                bool guardado = mysql.guardarResolucion(resol);
                if (guardado)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Resolucion creada !')", true);
                    // Label2.Text = "Documento Generado y Guardado";
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Se ha producido un error en los datos')", true);
                    // Label2.Text = "Ha ocurrido un error en los datos";
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Llenar TODOS los campos correctamente')", true);
            }

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
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void botonLogin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../../Inicio/Login.aspx");
        }

        protected void botonLogin0_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../Inicio/Login.aspx");
        }
    }
}