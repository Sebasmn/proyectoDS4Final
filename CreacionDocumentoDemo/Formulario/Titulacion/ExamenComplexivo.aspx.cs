using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreacionDocumentoDemo.Formulario.Titulacion
{
    public partial class ExamenComplexivo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ManejarUsuario();
                cargarDatos();
                controlTextBox();
            }
        }
        private void controlTextBox()
        {
            txtSecuencia.MaxLength = 4;
            txtAnio.MaxLength = 4;
            txtAnio1.MaxLength = 4;
        }
        private void ManejarUsuario()
        {
            if (
                 Session["USUARIOSW"] != null
                )
            {
                UsuariosSW tipo = (UsuariosSW)Session["USUARIOSW"];
                char userTipo = Convert.ToChar(tipo.Tipo);
                if (userTipo != 'S')
                {
                    Response.Redirect("../../Inicio/Login.aspx");
                }
            }
            else
            {
                Response.Redirect("../../Inicio/Login.aspx");
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
            List<string> carrerasF = datos.GetCarrerasFooter();
            ddlCarrera.DataSource = modeloMin;
            ddlCarrera.DataBind();
            ddlCarrera0.DataSource = modelo;
            ddlCarrera0.DataBind();
            ddlCarreras.DataSource = carrerasF;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            panelModalBusquedaEst.Visible = true;
            ModalPopupExtender1.Show();
            //Label1.Text = "Buscando";
            ManejoDatos datos = new ManejoDatos();
            // List<Estudiante> listado =  
            var bs1 = new BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            GridView1.DataSource = bs1; //<-- notes it takes the entire bindingSource
            GridView1.DataBind();
            //  Label1.Text = "Correcto";
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ManejoDatos datos = new ManejoDatos();
            var bs1 = new System.Windows.Forms.BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            GridView1.DataSource = bs1; //<-- notes it takes the entire bindingSource
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            //  Label1.Text = "Correcto";

            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombreEstu.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu0.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu1.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            ViewState["CEDULA_EST"] = GridView1.SelectedRow.Cells[1].Text;
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            /*Editables Y Datos*/
            List<string> editables = new List<string>();
            List<string> datos = new List<string>();

            editables.Add("<fecha>"); datos.Add(txtFecha.Text);
            editables.Add("<secuencia>"); datos.Add(txtSecuencia.Text);
            editables.Add("<anio0>"); datos.Add(txtAnio.Text);

            editables.Add("<presidente>"); datos.Add(txtPresidente.Text);
            editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue.ToString());
            editables.Add("<nombredia>"); datos.Add(ddlNombreDia.SelectedValue.ToString());



            editables.Add("<numerodia>"); datos.Add(ddlNumeroDia.SelectedValue.ToString());
            editables.Add("<nombremes>"); datos.Add(ddlMes.SelectedValue.ToString());
            editables.Add("<anio>"); datos.Add(txtAnio0.Text);

            editables.Add("<acuerdo>"); datos.Add(txtAcuerdo.Text);
            editables.Add("<nombremes1>"); datos.Add(ddlMes0.SelectedValue.ToString());
            editables.Add("<numerodia1>"); datos.Add(ddlNumeroDia0.SelectedValue.ToString());


            editables.Add("<anio1>"); datos.Add(txtAnio1.Text);
            editables.Add("<presidente1>"); datos.Add(txtPresidente0.Text);
            editables.Add("<estudiante>"); datos.Add(txtNombreEstu.Text);

            editables.Add("<carrera>"); datos.Add(ddlCarrera.SelectedValue.ToString());
            editables.Add("<estudiante1>"); datos.Add(txtNombreEstu0.Text);
            editables.Add("<carrera1>"); datos.Add(ddlCarrera0.SelectedValue.ToString());

            editables.Add("<estudiante2>"); datos.Add(txtNombreEstu1.Text);
            editables.Add("<presidenta>"); datos.Add(txtPresidente1.Text);
            editables.Add("<coordinadorcar>"); datos.Add(txtCoordinador.Text);
            editables.Add("<carreras>"); datos.Add(ddlCarreras.SelectedValue.ToString());
            /**/
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"Y:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string ruta = sb1.ToString();

            String plantilla = @"Y:\Documentos\OficiosPlantilla\Sistemas\Titulacion\AprobacionModalidadExamenComplexivo.docx";
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
            resol.IDConsejo = txtCodigoConsejoDestino.Text;
            if (ViewState["CEDULA_EST"]!=null)
            {
                resol.Estudiante = ViewState["CEDULA_EST"].ToString();
            }
         
            resol.Secretaria = ((UsuariosSW)Session["USUARIOSW"]).Cedula;
            bool verificado = mysql.verificarDatos(editables, datos);
            if (verificado && resol.Estudiante!=null)
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
