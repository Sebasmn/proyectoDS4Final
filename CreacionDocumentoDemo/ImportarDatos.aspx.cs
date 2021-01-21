
using CreacionDocumentoDemo.Objetos;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;


namespace CreacionDocumentoDemo
{
    public partial class ImportarDatos : System.Web.UI.Page
    {
       
        ManejoDatos mn = new ManejoDatos();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ManejarUsuario();
            }
        }


        private void ManejarUsuario()
        {
          

            if (  Session["USUARIOSW"] != null)
            {
                UsuariosSW tipo = (UsuariosSW)Session["USUARIOSW"];
                if (tipo.Tipo !="A")
                {
                    Response.Redirect("../Inicio/Login.aspx");
                }
            }
            else
            {
                Response.Redirect("../Inicio/Login.aspx");
            }
          
        }
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            string file_name = Path.GetFileName(userFileUpload.PostedFile.FileName);
            if (file_name == "")
            {
                lblUploadFile.Text = "Por favor seleccione un archivo excel";
                lblUploadFile.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string fileExtension = Path.GetExtension(userFileUpload.FileName);
                if (fileExtension == ".xls" || fileExtension == ".xlsx")
                {
                    // Excel File Upload
                    System.IO.FileInfo file = new System.IO.FileInfo(userFileUpload.PostedFile.FileName);
                    string fname = file.Name.Remove((file.Name.Length - file.Extension.Length));
                    fname = fname + System.DateTime.Now.ToString("_ddMMyyhhmmss") + file.Extension;
                    if (fname.Length > 0)
                    {
                        userFileUpload.SaveAs(Server.MapPath("~/UserUploadedExcelFiles/" + "\\" + fname));
                        Session["name"] = fname;

                        lblUploadFile.Text = "Archivo subido exitosamente";
                        lblUploadFile.ForeColor = System.Drawing.Color.Green;
                        SaveData.Visible = true;
                        UploadButton.Visible = false;
                    }
                    else
                    {
                        lblUploadFile.Text = "Por favor seleccione un archivo excel";
                        lblUploadFile.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lblUploadFile.Text = "Por favor seleccione un archivo excel";
                    lblUploadFile.ForeColor = System.Drawing.Color.Red;
                }

            }
        }

        protected void SaveData_Click(object sender, EventArgs e)
        {
            if (Session["name"]!=null)
            {
                leerExcel();
            }
         
        }
        
        void leerExcel()
        {
            lblUploadFile.Text = "";
            string myfile_name = Session["name"].ToString();
            string Excel_path = Server.MapPath("~/UserUploadedExcelFiles/" + "\\" + myfile_name);
            Excel.Application xlApp = new Excel.Application();
            Excel.Workbook xlWorkbook = xlApp.Workbooks.Open(Excel_path);
            Excel.Worksheet xlWorksheet = xlWorkbook.Sheets[1];
            Excel.Range range = xlWorksheet.UsedRange;
            int filas = range.Rows.Count;
            int colum = range.Columns.Count;
            Estudiante estudiante;
            ManejoDatos mn = new ManejoDatos();
            for (int i=2; i<=filas;i++)
            {
                estudiante = new Estudiante();
                estudiante.Cedula= range.Cells[i, 1].Value2.ToString();
                estudiante.Apellidos= range.Cells[i, 2].Value2.ToString();
                estudiante.Nombres = range.Cells[i, 3].Value2.ToString();
                estudiante.Telefono = range.Cells[i, 8].Value2.ToString();
                if (estudiante.Telefono.Length == 0)
                {
                    estudiante.Telefono= "S/N";
                }
                string celular = range.Cells[i, 9].Value2.ToString();
                 if (celular.Length==0)
                {
                    celular = "S/N";
                }
               
                estudiante.Correo = range.Cells[i, 10].Value2.ToString();
                estudiante.CorreoUTA = range.Cells[i, 11].Value2.ToString();
                string fecha= range.Cells[i, 12].Value2.ToString();
                estudiante.Matricula = range.Cells[i, 18].Value2.ToString();
                estudiante.Folio = range.Cells[i, 19].Value2.ToString();
                estudiante.Carrera = range.Cells[i, 24].Value2.ToString();
                if (estudiante.Carrera == "Tecnologías de la Información")
                {
                    estudiante.Carrera = "TI";

                }
                else if (estudiante.Carrera == "ING. EN SISTEMAS COMPUTAC.E INFORMATICOS")
                {
                    estudiante.Carrera = "SIST";
                }
                mn.GuardarEstudiantes(estudiante,celular,fecha);
               }

            xlWorkbook.Close();
            xlApp.Quit();
        }

        protected void botonLogin_Click(object sender, EventArgs e)
        {

        }
    }
}