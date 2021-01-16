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

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"D:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            //  sb2.Append(textBox_Nombre.Text);
            sb2.Append("Aprobacion001FJ");
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            CreateWordDocument(@"D:\Documentos\OficiosPlantilla\Sistemas\aprobacioncdc.docx", sb1.ToString());
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
                this.FindAndReplace(wordApp, "<fecha>", txtFechaHeader.Text);
                this.FindAndReplace(wordApp, "<secuencia>", txtAnio1.Text);
                this.FindAndReplace(wordApp, "<anioReso>", txtAnio2.Text);


                this.FindAndReplace(wordApp, "<coordinador>", ddlCoordinador.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<sesion>", ddlSesion.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<nombreDia>", ddlDia2.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<numeroDia>", ddlDia.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<nombreMes>", ddlMes.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<anio>", txtAnio0.Text);

                this.FindAndReplace(wordApp, "<memo>", txtMemo.Text.ToString());
                this.FindAndReplace(wordApp, "<diaMemo>", ddlDia0.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<numDiaMemo>", ddlDia1.SelectedValue.ToString());

                this.FindAndReplace(wordApp, "<nombreMesMemo>", ddlMes0.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<anioMemo>", txtAnio0.Text.ToString());


                this.FindAndReplace(wordApp, "<ejemplares>", txtNumeroEjemp.Text);
                this.FindAndReplace(wordApp, "<tutor>", txtDirector.Text);
                this.FindAndReplace(wordApp, "<nombre>", txtNombreEstu1.Text);
                this.FindAndReplace(wordApp, "<cedula>", txtCedula.Text);

                this.FindAndReplace(wordApp, "<decano>", txtDecana.Text);
                this.FindAndReplace(wordApp, "<presidente >", txtPresidente.Text);
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
    }
}