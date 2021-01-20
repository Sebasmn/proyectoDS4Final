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
using CreacionDocumentoDemo.Objetos;

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
                ManejoDatos mysql = new ManejoDatos();
                dropDownCoord.DataSource = mysql.ObtenerCarrerasCoord();
                dropDownCoord.DataBind();

                List<string> modelo = mysql.getCarreras();
                ddlExCarreras.DataSource = modelo;
                ddlExCarreras.DataBind();
                ddlExCarreras0.DataSource = modelo;
                ddlExCarreras0.DataBind();

                List<string> carreas= mysql.getCarreras();
                List<string> carreasMin = new List<string>();
         
                foreach (string  item in carreas)
                {
                    carreasMin.Add(item.ToLower());
                }
                ddlCarreraComsion.DataSource = carreasMin;
                ddlCarreraComsion.DataBind();
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
            ViewState["CEDULA_EST"] = GridView1.SelectedRow.Cells[1].Text;
            if (GridView1.SelectedRow.Cells[10].Text.Equals("SIST"))
            {
                //txtCarrera1.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
              //txtCarrera2.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
              //  txtCarrera3.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
            }
            ViewState["CorreoUTA"] = GridView1.SelectedRow.Cells[6].Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

                List<string> datos = new List<string>();
                List<string> editables = new List<string>();

                editables.Add("<fecha>"); datos.Add(txtFechaHeader.Text);
            editables.Add("<secuencia>"); datos.Add(txtSecuencia.Text);
            editables.Add("<anioReso>"); datos.Add(txtAnio2.Text);

            editables.Add("<coordinador>"); datos.Add(txtCoordinador.Text.ToString()); 
            editables.Add("<carreraCoord>"); datos.Add(dropDownCoord.SelectedValue.ToString());
            editables.Add("<sesion>"); datos.Add(ddlSesion.SelectedValue.ToString());

            editables.Add("<dia>"); datos.Add(ddlDia.SelectedValue.ToString());
            editables.Add("<mes>"); datos.Add(ddlMes.SelectedValue.ToString());
            editables.Add("<anio>"); datos.Add(txtAnio.Text);
            editables.Add("<acuerdo>"); datos.Add(txtAcuerdo.Text);

            editables.Add("<mes1>"); datos.Add(ddlMes0.SelectedValue.ToString());
            editables.Add("<dia1>"); datos.Add(ddlDia0.SelectedValue.ToString());
            editables.Add("<anio1>"); datos.Add(txtAnio0.Text);

            editables.Add("<presidente>"); datos.Add(txtPresidente.Text);
            editables.Add("<nombre>"); datos.Add(txtNombreEstu1.Text);
            editables.Add("<carrera>"); datos.Add(ddlExCarreras.SelectedValue.ToString());

            editables.Add("<horas>"); datos.Add(txtHoras.Text);
            editables.Add("<presidenteSub>"); datos.Add(txtPresiComi.Text.ToString());
            editables.Add("<presiComision>"); datos.Add(txtCarrera4.Text);

            editables.Add("<car1>"); datos.Add(ddlCarreraComsion.SelectedValue.ToString());
            editables.Add("<coorVinculacion>"); datos.Add(txtCarrera5.Text);


            StringBuilder sb1 = new StringBuilder();
            sb1.Append(@"D:\Documentos\Pruebas\");
            StringBuilder sb2 = new StringBuilder();
            sb2.Append("Resolucion");

            sb2.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            StringBuilder codigo = new StringBuilder();
            codigo.Append(txtSecuencia.Text).Append("-P-CD-FISEI-UTA-").Append(txtAnio2.Text);
            sb1.Append(sb2.ToString());
            sb1.Append(".docx");
            string resolucion = codigo.ToString();
            string  ruta = sb1.ToString();
            
            String plantilla = @"D:\Documentos\OficiosPlantilla\Sistemas\practicas.docx";
            //continuar = CreateWordDocument(plantilla, sb1.ToString());
             ManejoDatos mysql = new ManejoDatos();
            Resolucion resol = new Resolucion();
            resol.Ubicacion = ruta;
            resol.Editables = editables;
            resol.Datos = datos;
            resol.Codigo = resolucion;
            resol.Plantilla = plantilla;
            resol.Secretaria = ((UsuariosSW)Session["USUARIOSW"]).Cedula;
            resol.IDConsejo = txtCodigoConsejoDestino.Text;
            resol.Estudiante = ViewState["CEDULA_EST"].ToString();
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

      

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnNumeroResolucion_Click(object sender, EventArgs e)
        {
            generarNumeroResolucion();
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
        private bool CreateWordDocument(object filename, object SaveAs)
        {
            Word.Application wordApp = new Word.Application();
            object missing = Missing.Value;
            Word.Document myWordDoc = null;
            bool guardado = false;
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
                List<string > editables = new List<string>();
             
                this.FindAndReplace(wordApp, "<fecha>", txtFechaHeader.Text);  

                this.FindAndReplace(wordApp, "<secuencia>", txtSecuencia.Text);
               

                this.FindAndReplace(wordApp, "<anioReso>", txtAnio2.Text);

                this.FindAndReplace(wordApp, "<coordinador>", txtCoordinador.Text.ToString());
                //this.FindAndReplace(wordApp, "<coordinador>", ddlCoordinador.SelectedValue.ToString());
                

                this.FindAndReplace(wordApp, "<sesion>", ddlSesion.SelectedValue.ToString());
                

                this.FindAndReplace(wordApp, "<dia>", ddlDia.SelectedValue.ToString());
                

                this.FindAndReplace(wordApp, "<mes>", ddlMes.SelectedValue.ToString());
               


                this.FindAndReplace(wordApp, "<anio>", txtAnio.Text);
                ;
                this.FindAndReplace(wordApp, "<acuerdo>", txtAcuerdo.Text);
                

                this.FindAndReplace(wordApp, "<mes1>", ddlMes0.SelectedValue.ToString());
                


                this.FindAndReplace(wordApp, "<dia1>", ddlDia0.SelectedValue.ToString());
                

                this.FindAndReplace(wordApp, "<anio1>", txtAnio0.Text);
                

                this.FindAndReplace(wordApp, "<presidente>", txtPresidente.Text);
              

                this.FindAndReplace(wordApp, "<nombre>", txtNombreEstu1.Text);
              

               // this.FindAndReplace(wordApp, "<carrera>", txtCarrera1.Text);
                

                this.FindAndReplace(wordApp, "<horas>", txtHoras.Text);
                


                //this.FindAndReplace(wordApp, "<presidenteSub>", ddlPresidente.SelectedValue.ToString());
                

                this.FindAndReplace(wordApp, "<presiComision>", txtCarrera4.Text);
               

                this.FindAndReplace(wordApp, "<coorVinculacion>", txtCarrera5.Text);
                

                guardado = true;

                //this.FindAndReplace(wordApp, "<carrera>", txtAnio.Text);

            }
            else
            {

            }

            //Save as
            myWordDoc.SaveAs(ref SaveAs, ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing,
                            ref missing, ref missing, ref missing);

            myWordDoc.Close();
            wordApp.Quit();
            return guardado;
        }
        private void generarNumeroResolucion()
        {
            ManejoDatos mysql = new ManejoDatos();
            string resolucion= mysql.obtenerSiguienteResolución();
            txtSecuencia.Text = resolucion;
        }

        protected void botonLogin_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../../Inicio/Login.aspx");
        }
    }
}