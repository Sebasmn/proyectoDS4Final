using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySqlConnector;
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
        catch (Exception e)
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
        catch (Exception e )
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

}