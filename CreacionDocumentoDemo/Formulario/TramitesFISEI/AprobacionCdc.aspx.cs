using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace CreacionDocumentoDemo.Formulario.TramitesFISEI
{
    public partial class AprobacionCdc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        }
    }
}