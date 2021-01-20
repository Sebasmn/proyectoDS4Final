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
    public partial class ProrrogaGratuita : System.Web.UI.Page
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
            txtAnio2.MaxLength = 4;
            txtAnio3.MaxLength = 4;
            txtAnio4.MaxLength = 4;
            txtAnio5.MaxLength = 4;
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
            /*Editables Y Datos*/
            List<string> editables = new List<string>();
            List<string> datos = new List<string>();

            editables.Add("<fecha>"); datos.Add(txtFecha.Text);
            editables.Add("<secuencia>"); datos.Add(txtSecuencia.Text);
            editables.Add("<anio0>"); datos.Add(txtAnio.Text);

            editables.Add("<coordinador>"); datos.Add(txtCoordinador.Text);
            editables.Add("<carreras>"); datos.Add(ddlCarrerasCoor.SelectedValue.ToString());
            editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue.ToString());
            editables.Add("<nombredia>"); datos.Add(ddlNombreDia.SelectedValue.ToString());


            editables.Add("<numerodia>"); datos.Add(ddlDiaNum.SelectedValue.ToString());
            editables.Add("<nombremes>"); datos.Add(ddlMes.SelectedValue.ToString());
            editables.Add("<anio>"); datos.Add(txtAnio1.Text);

            editables.Add("<acuerdo>"); datos.Add(txtAcuerdo.Text);
            editables.Add("<nombremes1>"); datos.Add(ddlMes0.SelectedValue.ToString());
            editables.Add("<numerodia1>"); datos.Add(ddlDiaNum0.SelectedValue.ToString());


            editables.Add("<anio1>"); datos.Add(txtAnio2.Text);
            editables.Add("<presidente>"); datos.Add(txtPresiConsejo.Text);
            editables.Add("<estudiante>"); datos.Add(txtNombreEstu1.Text);

            editables.Add("<carrera>"); datos.Add(ddlCarreras.SelectedValue.ToString());
            editables.Add("<periodoacademico>"); datos.Add(txtPeriodo.Text);
            editables.Add("<estudiante1>"); datos.Add(txtNombreEstu2.Text);
            editables.Add("<periodoacademico1>"); datos.Add(txtPeriodo0.Text);
            editables.Add("<carrera1>"); datos.Add(ddlCarreras0.SelectedValue.ToString());

            editables.Add("<tematitulacion>"); datos.Add(txtTema.Text);
            editables.Add("<resolucion>"); datos.Add(txtResolucion.Text);
            editables.Add("<nombremes2>"); datos.Add(ddlMes1.SelectedValue.ToString());
            editables.Add("<numerodia2>"); datos.Add(ddlDiaNum1.SelectedValue.ToString());
            editables.Add("<anio2>"); datos.Add(txtAnio3.Text);
            editables.Add("<memorando>"); datos.Add(txtMemorando.Text);
            editables.Add("<numerodia3>"); datos.Add(ddlDiaNum3.Text);
            editables.Add("<nombremes3>"); datos.Add(ddlMes3.SelectedValue.ToString());
            editables.Add("<anio3>"); datos.Add(txtAnio5.Text);
            editables.Add("<ingeniero>"); datos.Add(txtTutor.Text);
            editables.Add("<estudiante2>"); datos.Add(txtNombreEstu3.Text);
            editables.Add("<resolucion1>"); datos.Add(txtResolucion0.Text);
            editables.Add("<nombremes4>"); datos.Add(ddlMes2.Text);
            editables.Add("<numerodia4>"); datos.Add(ddlDiaNum2.Text);
            editables.Add("<anio4>"); datos.Add(txtAnio4.Text);
            editables.Add("<presidenta>"); datos.Add(txtPresidente.Text);
            editables.Add("<presidente1>"); datos.Add(txtPresidente0.Text);
            editables.Add("<tutor>"); datos.Add(txtTutor0.Text);
            /**/
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"D:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string ruta = sb1.ToString();

            String plantilla = @"D:\Documentos\OficiosPlantilla\Sistemas\Titulacion\ProrrogaGratuita.docx";
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
            resol.IDConsejo = txtCodigoConsejoDestino.Text;
            resol.Estudiante = ViewState["CEDULA_EST"].ToString();
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