using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Word = Microsoft.Office.Interop.Word;

namespace CreacionDocumentoDemo.Formulario.TramitesFISEI
{
    public partial class AprobacionCdc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ManejarUsuario();
             

                List<String> nombresDias = new List<string>();
                nombresDias.Add("lunes");
                nombresDias.Add("martes");
                nombresDias.Add("miercoles");
                nombresDias.Add("jueves");
                nombresDias.Add("viernes");
                nombresDias.Add("sabado");
                nombresDias.Add("domingo");

                ddlDia2.DataSource = nombresDias;
                ddlDia2.DataBind();
                ddlDia0.DataSource = nombresDias;
                ddlDia0.DataBind();

                List<String> dias = new List<string>();
                for (int i = 1; i <= 31; i++)
                {
                    dias.Add(i.ToString());
                }

                ddlDia1.DataSource = dias;
                ddlDia1.DataBind();
                ddlDia.DataSource = dias;
                ddlDia.DataBind();

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
                ddlMes0.DataSource = meses;
                ddlMes0.DataBind();
                ddlMes.DataSource = meses;
                ddlMes.DataBind();
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
        protected void Button3_Click(object sender, EventArgs e)
        {

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
           // Label1.Text = "Correcto";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombreEstu1.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtNombreEstu2.Text = GridView1.SelectedRow.Cells[3].Text + " " + GridView1.SelectedRow.Cells[2].Text;
            txtCedula0.Text = GridView1.SelectedRow.Cells[1].Text;
            txtCedula.Text = GridView1.SelectedRow.Cells[1].Text;
            // ViewState["CorreoUTA"] = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

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
            //Label1.Text = "Correcto";

            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            //
            List<string> datos = new List<string>();
            List<string> editables = new List<string>();

            editables.Add("<fecha>"); datos.Add(txtFechaHeader.Text);
            editables.Add("<secuencia>"); datos.Add(txtAnio1.Text);
            editables.Add("<anioReso>"); datos.Add(txtAnio2.Text);

            editables.Add("<coordinador>"); datos.Add(txtCoordinador0.Text.ToString());
            editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue.ToString());
            editables.Add("<nombreDia>"); datos.Add(ddlDia2.SelectedValue.ToString());


            editables.Add("<numeroDia>"); datos.Add(ddlDia.SelectedValue.ToString());
            editables.Add("<nombreMes>"); datos.Add(ddlMes.SelectedValue.ToString());
            editables.Add("<anio>"); datos.Add(txtAnio0.Text);



            editables.Add("<memo>"); datos.Add(txtMemo.Text);
            editables.Add("<diaMemo>"); datos.Add(ddlDia0.SelectedValue.ToString());
            editables.Add("<numDiaMemo>"); datos.Add(ddlDia1.SelectedValue.ToString());

            editables.Add("<nombreMesMemo>"); datos.Add(ddlMes0.SelectedValue.ToString());
            editables.Add("<anioMemo>"); datos.Add(txtAnio0.Text);
            editables.Add("<ejemplares>"); datos.Add(txtNumeroEjemp.Text);

            editables.Add("<tutor>"); datos.Add(txtDirector.Text);
            editables.Add("<nombre>"); datos.Add(txtNombreEstu1.Text);
            editables.Add("<cedula>"); datos.Add(txtCedula.Text);


            editables.Add("<decano>"); datos.Add(txtDecana.Text);
            editables.Add("<presidente>"); datos.Add(txtPresidente.Text);
            //
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"Y:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtAnio1.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtAnio1.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string ruta = sb1.ToString();

            String plantilla = @"Y:\Documentos\OficiosPlantilla\Sistemas\aprobacioncdc.docx";
            //continuar = CreateWordDocument(plantilla, sb1.ToString());
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
           // resol.IDConsejo = 20;
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
            txtAnio1.Text = resolucion;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void botonLogin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../../Inicio/Login.aspx");
        }
    }
}