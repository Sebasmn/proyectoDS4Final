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
                List<String> datos = new List<string>();
                datos.Add("Clay Aldaz");
                datos.Add("Pedrito");
                datos.Add("Maria Chavez");

                ddlCoordinador.DataSource = datos;
                ddlCoordinador.DataBind();

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
            Label1.Text = "Correcto";

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

            editables.Add("<coordinador>"); datos.Add(ddlCoordinador.SelectedValue.ToString());
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
            sb1.Append(@"D:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtAnio1.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtAnio1.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string ruta = sb1.ToString();

            String plantilla = @"D:\Documentos\OficiosPlantilla\Sistemas\aprobacioncdc.docx";
            //continuar = CreateWordDocument(plantilla, sb1.ToString());
            ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
            resol.IDConsejo = 20;

            bool guardado = mysql.guardarResolucion(resol);

            if (guardado)
            {
                Label2.Text = "Documento Generado y Guardado";
            }
        }

        private void CreateWordDocument(object filename, object SaveAs)
        {
            Word.Application wordApp = new Word.Application();
            object missing = Missing.Value;
            Word.Document myWordDoc = null;

            if (File.Exists((string)filename))
            {
                object readOnly = false;
                object isVisible = false;
                wordApp.Visible = false;

                myWordDoc = wordApp.Documents.Open(ref filename, ref missing, ref readOnly,
                                        ref missing, ref missing, ref missing,
                                        ref missing, ref missing, ref missing,
                                        ref missing, ref missing, ref missing,
                                        ref missing, ref missing, ref missing, ref missing);
                myWordDoc.Activate();

                //find and replace
                List<string> datos = new List<string>();
                List<string> editables = new List<string>();
               
                this.FindAndReplace(wordApp, "<fecha>", txtFechaHeader.Text); editables.Add("<fecha>"); datos.Add(txtFechaHeader.Text);
                this.FindAndReplace(wordApp, "<secuencia>", txtAnio1.Text); editables.Add("<secuencia>"); datos.Add(txtAnio1.Text);
                this.FindAndReplace(wordApp, "<anioReso>", txtAnio2.Text); editables.Add("<anioReso>"); datos.Add(txtAnio2.Text);


                this.FindAndReplace(wordApp, "<coordinador>", ddlCoordinador.SelectedValue.ToString());         editables.Add("<coordinador>"); datos.Add(ddlCoordinador.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<sesion>", ddlSesion.SelectedValue.ToString());                   editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<nombreDia>", ddlDia2.SelectedValue.ToString());          editables.Add("<nombreDia>"); datos.Add(ddlDia2.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<numeroDia>", ddlDia.SelectedValue.ToString());            editables.Add("<numeroDia>"); datos.Add(ddlDia.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<nombreMes>", ddlMes.SelectedValue.ToString());       editables.Add("<nombreMes>"); datos.Add(ddlMes.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<anio>", txtAnio0.Text);                                                  editables.Add("<anio>");  datos.Add(txtAnio0.Text);

                this.FindAndReplace(wordApp, "<memo>", txtMemo.Text.ToString());                            editables.Add("<memo>"); datos.Add(txtMemo.Text);
                this.FindAndReplace(wordApp, "<diaMemo>", ddlDia0.SelectedValue.ToString());            editables.Add("<diaMemo>"); datos.Add(ddlDia0.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<numDiaMemo>", ddlDia1.SelectedValue.ToString());         editables.Add("<numDiaMemo>"); datos.Add(ddlDia1.SelectedValue.ToString());

                this.FindAndReplace(wordApp, "<nombreMesMemo>", ddlMes0.SelectedValue.ToString()); editables.Add("<nombreMesMemo>"); datos.Add(ddlMes0.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<anioMemo>", txtAnio0.Text.ToString());                       editables.Add("<anioMemo>"); datos.Add(txtAnio0.Text);


                this.FindAndReplace(wordApp, "<ejemplares>", txtNumeroEjemp.Text);          editables.Add("<ejemplares>"); datos.Add(txtNumeroEjemp.Text);
                this.FindAndReplace(wordApp, "<tutor>", txtDirector.Text);                              editables.Add("<tutor>"); datos.Add(txtDirector.Text);
                this.FindAndReplace(wordApp, "<nombre>", txtNombreEstu1.Text);                  editables.Add("<nombre>"); datos.Add(txtNombreEstu1.Text);
                this.FindAndReplace(wordApp, "<cedula>", txtCedula.Text);                           editables.Add("<cedula>"); datos.Add(txtCedula.Text);

                this.FindAndReplace(wordApp, "<decano>", txtDecana.Text);                   editables.Add("<decano>"); datos.Add(txtDecana.Text);
                this.FindAndReplace(wordApp, "<presidente >", txtPresidente.Text);                  editables.Add("<presidente>"); datos.Add(txtPresidente.Text);
            }
            else
            {
                //MessageBox.Show("File not Found!");
            }

            //Save as
            myWordDoc.SaveAs(ref SaveAs, ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing);

            myWordDoc.Close();
            wordApp.Quit();

        }
        private void FindAndReplace(Word.Application wordApp, object ToFindText, object replaceWithText)
        {
            object matchCase = true;
            object matchWholeWord = true;
            object matchWildCards = false;
            object matchSoundLike = false;
            object nmatchAllforms = false;
            object forward = true;
            object format = false;
            object matchKashida = false;
            object matchDiactitics = false;
            object matchAlefHamza = false;
            object matchControl = false;
            object read_only = false;
            object visible = true;
            object replace = 2;
            object wrap = 1;

            wordApp.Selection.Find.Execute(ref ToFindText,
                ref matchCase, ref matchWholeWord,
                ref matchWildCards, ref matchSoundLike,
                ref nmatchAllforms, ref forward,
                ref wrap, ref format, ref replaceWithText,
                ref replace, ref matchKashida,
                ref matchDiactitics, ref matchAlefHamza,
                ref matchControl);
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
    }
}