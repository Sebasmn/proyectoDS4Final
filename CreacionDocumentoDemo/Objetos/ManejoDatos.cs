using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Word = Microsoft.Office.Interop.Word;
using System.Linq;
using System.Text;
using System.Web;
using MySqlConnector;
using System.Reflection;
using System.IO;
using CreacionDocumentoDemo.Objetos;
/// <summary>
/// Descripción breve de ManejoDatos
/// </summary>
public class ManejoDatos
{
    public ManejoDatos()
    {
    }
    private MySqlConnection GetConnectionString()
    {
        MySqlConnection connection;
        string server = "bvnt82fpdk2x6l6idnds-mysql.services.clever-cloud.com";
        string database = "bvnt82fpdk2x6l6idnds";
        string uid = "uonan3vxxpvmsrwl";
        string password = "2ReA8lKlWNEYEHFYZbEU";
        string connectionString;
        connectionString = "SERVER=" + server + ";" + "DATABASE=" +
        database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";
        connection = new MySqlConnection(connectionString);
        return connection;
    }
    public List<Estudiante> getEstudiantesBusqueda(string cedula)
    {
       List< Estudiante> estudiante = new List<Estudiante>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * " +
                          "FROM `Estudiantes` WHERE CEDULA LIKE '%" + cedula+"%'";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while(reader.Read())
            {
                Estudiante estudiante1 = new Estudiante();
                estudiante1.Nombres = reader["Nombres"].ToString();
                estudiante1.Apellidos = reader["Apellidos"].ToString();
                estudiante1.Cedula = reader["Cedula"].ToString();

                estudiante1.Telefono = reader["Telefono"].ToString();
                estudiante1.Correo = reader["Correo"].ToString();
                estudiante1.CorreoUTA = reader["CorreoUTA"].ToString();

                estudiante1.Matricula = reader["Matricula"].ToString();
                estudiante1.Folio = reader["Folio"].ToString();
                estudiante1.Carrera = reader["Carrera"].ToString();
                estudiante.Add(estudiante1);

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception )
        {

        }
        return estudiante;
    }
    public Estudiante getEstudiante(string cedula)
    {
        Estudiante estudiante = new Estudiante();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * " +
                          "FROM Estudiantes WHERE CEDULA = @CEDULA ";

            MySqlCommand command = new MySqlCommand(sql, conn);
            command.Parameters.AddWithValue("@CEDULA",cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {

                estudiante.Nombres = reader["Nombres"].ToString();
                estudiante.Apellidos = reader["Apellidos"].ToString();
                estudiante.Cedula = reader["Cedula"].ToString();

                estudiante.Telefono = reader["Telefono"].ToString();
                estudiante.Correo = reader["Correo"].ToString();
                estudiante.CorreoUTA = reader["CorreoUTA"].ToString();

                estudiante.Matricula = reader["Matricula"].ToString();
                estudiante.Folio = reader["Folio"].ToString();
                estudiante.Carrera = reader["Carrera"].ToString();


            }
            reader.Close();
            conn.Close();
        }
        catch (Exception  )
        {

        }
        return estudiante;
    }
    public List<Estudiante> getAllEstudiantes()
    {
        List<Estudiante> estudiante = new List<Estudiante>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * " +
                          "FROM `Estudiantes` ";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Estudiante estudiante1 = new Estudiante();
                estudiante1.Nombres = reader["Nombres"].ToString();
                estudiante1.Apellidos = reader["Apellidos"].ToString();
                estudiante1.Cedula = reader["Cedula"].ToString();

                estudiante1.Correo = reader["Correo"].ToString();
                estudiante1.Matricula = reader["Matricula"].ToString();
                estudiante1.Folio = reader["Folio"].ToString();

                estudiante1.Carrera = reader["Carrera"].ToString();
                estudiante.Add(estudiante1);

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception e)
        {

        }
        return estudiante;
    }

    public  string obtenerSiguienteResolución()
    {
        int NUMERO=0;
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            
            MySqlCommand command = new MySqlCommand("obtenerResolucion", conn);
            command.CommandType = CommandType.StoredProcedure;
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                NUMERO = Convert.ToInt32(reader["NUMERO"]);

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception )
        {
            
        }

        string salida = String.Format("{0:D4}", NUMERO+1);
        return salida;
    }

    public  bool guardarResolucion(Resolucion resolucion)
    {
        bool guardado = false;
        MySqlConnection myConnection = this.GetConnectionString();
        myConnection.Open();
        MySqlTransaction myTrans = myConnection.BeginTransaction();
        try
        {
            MySqlCommand myCommand = new MySqlCommand("guardarResolucion", myConnection, myTrans);
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.Parameters.AddWithValue("CODIGO", resolucion.Codigo);
            myCommand.Parameters.AddWithValue("UBICACION", resolucion.Ubicacion);
            myCommand.Parameters.AddWithValue("IDCONSEJO", resolucion.IDConsejo);

            int n = myCommand.ExecuteNonQuery();
            //Guardar en generador
            myCommand.CommandText = "guardarGenerador";
            myCommand.Parameters.Clear();
            myCommand.ExecuteNonQuery();
            CreateWordDocument(resolucion.Plantilla, resolucion.Ubicacion,resolucion.Editables,resolucion.Datos);
            myTrans.Commit();
            guardado = true;
        }
        catch (Exception e)
        {
            try
            {
                myTrans.Rollback();
            }
            catch (SqlException ex)
            {
            }
        }
        return guardado;
    }
    public  bool CreateWordDocument(object filename, object SaveAs,List<string> editables, List<string> datos)
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


            for (int i = 0; i < datos.Count; i++)
            {
                this.FindAndReplace(wordApp, editables.ElementAt(i), datos.ElementAt(i));

            }
         
            guardado = true;
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

    public List<string> getCarreras()
    {
        List<string> estudiante = new List<string>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * " +
                          "FROM `Carreras` ";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
             
                estudiante.Add(reader["NombreCarrera"].ToString());

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception e)
        {

        }
        return estudiante;
    }
}