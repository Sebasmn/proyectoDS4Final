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
    public partial class Reingreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarDatos();
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
            ddlCarreras.DataSource= datos.getCarreras();
            ddlCarreras.DataBind();
            ddlCarreras1.DataSource = datos.getCarreras();
            ddlCarreras1.DataBind();

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
            Label1.Text = "Correcto";

            GridView1.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            /*Campos Editables Y Valores*/
            List<string> editables = new List<string>();
            List<string> datos = new List<string>();

            editables.Add("<fecha>"); datos.Add(txtFecha.Text);
            editables.Add("<secuencia>"); datos.Add(txtSecuencia.Text);
            editables.Add("<anio>"); datos.Add(txtAnio.Text);

            editables.Add("<coordinador>"); datos.Add(txtCoordinador.Text);
            editables.Add("<carreras>"); datos.Add(txtCarrerasCoor.Text);
            editables.Add("<sesion>"); datos.Add(ddlSesion.Text);


            editables.Add("<nombreDia>"); datos.Add(ddlNombreDia.SelectedValue.ToString());
            editables.Add("<numeroDia>"); datos.Add(ddlDiaNum.SelectedValue.ToString());
            editables.Add("<nombreMes>"); datos.Add(ddlMes.SelectedValue.ToString());

            editables.Add("<anio>"); datos.Add(txtAnio.Text);
            editables.Add("<acuerdo>"); datos.Add(txtAcuerdo.Text);
            editables.Add("<nombreMes1>"); datos.Add(ddlMes0.SelectedValue.ToString());

            editables.Add("<numeroDia1>"); datos.Add(ddlDiaNum0.SelectedValue.ToString());
            editables.Add("<anio1>"); datos.Add(txtAnio2.Text);
            editables.Add("<presiCoor>"); datos.Add(txtPresiCoord.Text);

            editables.Add("<estudiante>"); datos.Add(txtNombreEstu1.Text);
            editables.Add("<cedula>"); datos.Add(txtCedula.Text);
            editables.Add("<carreraNueva>"); datos.Add(ddlCarreras.SelectedValue.ToString());

            editables.Add("<periodoAcadem>"); datos.Add(txtPeriodo.Text);
            editables.Add("<presidente>"); datos.Add(txtPresidente.Text);

            /******************/
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

            String plantilla = @"D:\Documentos\OficiosPlantilla\Sistemas\reingreso.docx";
            //continuar = CreateWordDocument(plantilla, sb1.ToString());
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
           // resol.IDConsejo = 20;
            resol.Estudiante = txtCedula.Text;
          //  bool guardado = mysql.guardarResolucion(resol);
            resol.IDConsejo = txtCodigoConsejoDestino.Text;
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

        protected void txtFecha_TextChanged(object sender, EventArgs e)
        {

        }
    }
}