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
    public partial class ProrrogaPagada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ManejarUsuario();
                cargarDatos();
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
            ddlCarreras.DataSource = X;
            ddlCarreras.DataBind();
            ddlCarreras0.DataSource = X;
            ddlCarreras0.DataBind();

            //Dias
            ddlNombreDia.DataSource = datos.ObtenerDiasSemana() ;
            ddlNombreDia.DataBind();


            //Dias del mes
          
            ddlDiaNum.DataSource = datos.ObtenerDiasMes();
            ddlDiaNum.DataBind();

            ddlDiaNum0.DataSource = datos.ObtenerDiasMes();
            ddlDiaNum0.DataBind();


            ddlCarrerasCoor.DataSource = datos.ObtenerCarrerasCoord();
            ddlCarrerasCoor.DataBind();
            ddlOpcionesSecre.DataSource = datos.DetallesSecretaria();
            ddlOpcionesSecre.DataBind();


            
            /*ddlDiaNum1.DataSource = numeros;
            ddlDiaNum1.DataBind();

            ddlDiaNum2.DataSource = numeros;
            ddlDiaNum2.DataBind();*/

           

            ddlMes.DataSource = datos.ObtenerMeses();
            ddlMes.DataBind();
            ddlMes0.DataSource = datos.ObtenerMeses();
            ddlMes0.DataBind();

            List<string> nivel = new List<string>();
            nivel.Add("DECIMO");
            nivel.Add("NOVENO");
            nivel.Add("OCTAVO");
            ddlNivel.DataSource = nivel;
            ddlNivel.DataBind();
           // ddlSecretarias.DataSource = datos.DetallesSecretaria();

        }

        protected void txtPresidente_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtFecha_TextChanged(object sender, EventArgs e)
        {

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
        protected void Button4_Click(object sender, EventArgs e)
        {
            /*Editables Y Datos*/
            List<string> editables = new List<string>();
            List<string> datos = new List<string>();

            editables.Add("<fecha>"); datos.Add(txtFecha.Text);
            editables.Add("<secuencia>"); datos.Add(txtSecuencia.Text);
            editables.Add("<anio>"); datos.Add(txtAnio.Text);

            editables.Add("<coordinador>"); datos.Add(txtCoordinador.Text);
            editables.Add("<carrerasCoor>"); datos.Add(ddlCarrerasCoor.SelectedValue.ToString());
            editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue.ToString());



            editables.Add("<nombreDia>"); datos.Add(ddlNombreDia.SelectedValue.ToString());
            editables.Add("<numeroDia>"); datos.Add(ddlDiaNum.SelectedValue.ToString());
            editables.Add("<nombreMes>"); datos.Add(ddlMes.SelectedValue.ToString());

            editables.Add("<anio1>"); datos.Add(txtAnio1.Text);
            editables.Add("<acuerdo>"); datos.Add(txtAcuerdo.Text);
            editables.Add("<nombreMes1>"); datos.Add(ddlMes0.SelectedValue.ToString());


            editables.Add("<numeroDia1>"); datos.Add(ddlDiaNum0.SelectedValue.ToString());
            editables.Add("<anio2>"); datos.Add(txtAnio2.Text);
            editables.Add("<presiUnidad>"); datos.Add(txtPresiConsejo.Text);

            editables.Add("<estudiante>"); datos.Add(txtNombreEstu1.Text);
           // editables.Add("<cedula>"); datos.Add(txtCedula.Text);
            editables.Add("<carrera>"); datos.Add(ddlCarreras.SelectedValue.ToString());

            editables.Add("<periodo>"); datos.Add(txtPeriodo.Text);
            editables.Add("<periodo2>"); datos.Add(txtPeriodo2.Text);
            editables.Add("<trabajoTitulacion>"); datos.Add(txtTrabajo.Text);
            editables.Add("<tutor>"); datos.Add(txtTutor.Text);
            editables.Add("<nivel>"); datos.Add(ddlNivel.SelectedValue.ToString());
            editables.Add("<secretarias>"); datos.Add(ddlOpcionesSecre.SelectedValue.ToString());
          
            editables.Add("<presidente>"); datos.Add(txtPresidente.Text);
            editables.Add("<presiTitula>"); datos.Add(txtPresiTitula.Text);
            /**/
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"D:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio1.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio1.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string ruta = sb1.ToString();

            String plantilla = @"D:\Documentos\OficiosPlantilla\Sistemas\ProrrogaPagada.docx";
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
            resol.IDConsejo = txtCodigoConsejoDestino.Text;
            resol.Estudiante = ViewState["CEDULA_EST"].ToString();

            bool guardado = mysql.guardarResolucion(resol);

            if (guardado)
            {
                labelEstado.Text = "Documento Generado y Guardado";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
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

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombreEstu1.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu2.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            ViewState["CEDULA_EST"] = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ManejoDatos datos = new ManejoDatos();
            // List<Estudiante> listado =  
            var bs1 = new System.Windows.Forms.BindingSource();
            bs1.DataSource = datos.getEstudiantesBusqueda(TextBox1.Text);
            GridView1.DataSource = bs1; //<-- notes it takes the entire bindingSource
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            Label1.Text = "Correcto";

            GridView1.DataBind();
        }

        protected void txtCodigoConsejoDestino_TextChanged(object sender, EventArgs e)
        {

        }
    }
}