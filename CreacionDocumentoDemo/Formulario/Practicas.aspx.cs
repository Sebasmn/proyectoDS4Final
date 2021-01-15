using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

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

                List<String> dias = new List<string>();
                for (int i = 1; i <= 31; i++)
                {
                    dias.Add(i.ToString());
                }

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


                ddlMes.DataSource = meses;
                ddlMes.DataBind();
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
                TextBox6.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
                TextBox5.Text = "INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS";
            }
           
        }
    }
}