using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreacionDocumentoDemo.Formulario.CAF
{
    public partial class ActualizacionConocimientos : System.Web.UI.Page
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
            txtCedula.MaxLength = 10;
            txtCedula0.MaxLength = 10;
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
            ddlDiaNum.DataSource = numeros;
            ddlDiaNum.DataBind();

            ddlDiaNum0.DataSource = numeros;
            ddlDiaNum0.DataBind();

            ddlDiaNum1  .DataSource = numeros;
            ddlDiaNum1.DataBind();

            ddlDiaNum2.DataSource = numeros;
            ddlDiaNum2.DataBind();

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

            ddlMes1.DataSource = meses;
            ddlMes1.DataBind();
            ddlMes2.DataSource = meses;
            ddlMes2.DataBind();

            //Carreras
            ManejoDatos datos = new ManejoDatos();
            List<string> modelo = datos.getCarreras();
            ddlExCarreras.DataSource = modelo;
            ddlExCarreras.DataBind();
            ddlExCarreras0.DataSource = modelo;
            ddlExCarreras0.DataBind();

            txtCarrerasCoorD.DataSource = datos.ObtenerCarrerasCoord();
            txtCarrerasCoorD.DataBind();
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
        protected void txtNombreEstu1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            /*Editables Y Datos*/
            List<string> editables = new List<string>();
            List<string> datos = new List<string>();

            editables.Add("<fecha>");datos.Add(txtFecha.Text);
            editables.Add("<secuencia>"); datos.Add(txtSecuencia.Text);
            editables.Add("<anio>"); datos.Add(txtAnio.Text);

            editables.Add("<coordinador>"); datos.Add(txtCoordinador.Text);
            editables.Add("<carrerasCoor>"); datos.Add(txtCarrerasCoorD.SelectedValue.ToString());
            editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue.ToString());



            editables.Add("<nombreDia>"); datos.Add(ddlNombreDia.SelectedValue.ToString());
            editables.Add("<numeroDia>"); datos.Add(ddlDiaNum.SelectedValue.ToString());
            editables.Add("<nombreMes>"); datos.Add(ddlMes.SelectedValue.ToString());

            editables.Add("<anio1>"); datos.Add(txtAnio1.Text);
            editables.Add("<acuerdo>"); datos.Add(txtAcuerdo.Text);
            editables.Add("<nombreMes1>"); datos.Add(ddlMes0.SelectedValue.ToString());


            editables.Add("<numeroDia1>"); datos.Add(ddlDiaNum0.SelectedValue.ToString());
            editables.Add("<anio2>"); datos.Add(txtAnio2.Text);
            editables.Add("<presidenteConsejo>"); datos.Add(txtPresiConsejo.Text);

            editables.Add("<estudiante>"); datos.Add(txtNombreEstu1.Text);
            editables.Add("<cedula>"); datos.Add(txtCedula.Text);
            editables.Add("<excarrera>"); datos.Add(ddlExCarreras.SelectedValue.ToString());

            editables.Add("<periodoAcade>"); datos.Add(txtPeriodo.Text);
            editables.Add("<resolucion>"); datos.Add(txtResolucion.Text);
            editables.Add("<nombreMes2>"); datos.Add(ddlMes1.SelectedValue.ToString());

            editables.Add("<numeroDia2>"); datos.Add(ddlDiaNum1.SelectedValue.ToString());
            editables.Add("<anio3>"); datos.Add(txtAnio3.Text);
            editables.Add("<memo>"); datos.Add(txtMemo.Text);

            editables.Add("<numeroDia3>"); datos.Add(ddlDiaNum2.SelectedValue.ToString());
            editables.Add("<nombreMes3>"); datos.Add(ddlMes2.SelectedValue.ToString());
            editables.Add("<anio4>"); datos.Add(txtAnio4.Text);

            editables.Add("<suscriptor>"); datos.Add(txtSuscriptor.Text);
            editables.Add("<cargoSuscriptor>"); datos.Add(txtCargoSuscriptor.Text);
            editables.Add("<presidente>"); datos.Add(txtPresidente.Text);

            /**/
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"C:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio1.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio1.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string ruta = sb1.ToString();

            String plantilla = @"D:\Documentos\OficiosPlantilla\Sistemas\actualizacionConocimientos.docx";
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
          //  resol.IDConsejo = 20;
          //  resol.IDConsejo =Convert.ToInt32( txtCodigoConsejoDestino.Text);
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombreEstu1.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu2.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtCedula.Text = GridView1.SelectedRow.Cells[1].Text;
            txtCedula0.Text = GridView1.SelectedRow.Cells[1].Text;
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
     //       Label1.Text = "Correcto";

            GridView1.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void txtFecha_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlMes1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlDiaNum1_SelectedIndexChanged(object sender, EventArgs e)
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