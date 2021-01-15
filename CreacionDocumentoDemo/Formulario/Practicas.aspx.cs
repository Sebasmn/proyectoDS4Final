using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using Word = Microsoft.Office.Interop.Word;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Reflection;
using System.IO;

namespace CreacionDocumentoDemo.Formulario
{
    public partial class Practicas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*  List<Estudiante> listado = new List<Estudiante>();
              ManejoDatos datos = new ManejoDatos();
              listado= datos.getAllEstudiantes();
              Session["Estudiantes"] = listado;*/
            if (ViewState["nombre"]!=null)
            {
                txtNombreEstu1.Text = ViewState["nombre"].ToString();
                txtNombreEstu1.Text = ViewState["nombre"].ToString();
            }
            if (!IsPostBack)
            {
                List<String> datos = new List<string>();
                datos.Add("Clay Aldaz");
                datos.Add("Pedrito");
                datos.Add("Maria Chavez");

                ddlCoordinador.DataSource = datos;
                ddlCoordinador.DataBind();

                ddlPresidente.DataSource = datos;
                ddlPresidente.DataBind();

                List<String> dias = new List<string>();
                for (int i = 1; i <= 31; i++)
                {
                    dias.Add(i.ToString());
                }

                ddlDia.DataSource = dias;
                ddlDia.DataBind();
                ddlDia0.DataSource = dias;
                ddlDia0.DataBind();


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
            if (GridView1.SelectedRow.Cells[10].Text.Equals("SIST"))
            {
                txtCarrera1.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
                txtCarrera2.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
                txtCarrera3.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
            }
            ViewState["CorreoUTA"] = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"D:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            //  sb2.Append(textBox_Nombre.Text);
            sb2.Append("Practicas001");
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            CreateWordDocument(@"D:\Documentos\OficiosPlantilla\Sistemas\PracticasPrepofesionales.docx", sb1.ToString());
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
                this.FindAndReplace(wordApp, "<coordinador>", ddlCoordinador.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<sesion>", ddlSesion.SelectedValue.ToString());

                this.FindAndReplace(wordApp, "<nombre>", txtNombreEstu1.Text);
                this.FindAndReplace(wordApp, "<carrera>", txtCarrera1.Text);

                this.FindAndReplace(wordApp, "<dia>", ddlDia.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<mes>", ddlMes.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<anio>", txtAnio.Text);


                this.FindAndReplace(wordApp, "<dia1>", ddlDia0.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<mes1>", ddlMes0.SelectedValue.ToString());
                this.FindAndReplace(wordApp, "<anio1>", txtAnio0.Text);

                this.FindAndReplace(wordApp, "<presidente>", txtPresidente.Text);
                this.FindAndReplace(wordApp, "<horas>", txtHoras.Text);
                //this.FindAndReplace(wordApp, "<carrera>", txtAnio.Text);
       
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