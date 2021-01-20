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
using CreacionDocumentoDemo.Formulario;
using System.Net.Mail;
using System.Net;
using System.Net.Mime;
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

    public UsuariosSW obtenerLogin(string usuario, string clave)
    {
        UsuariosSW user = new UsuariosSW();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT TIPO,CEDULA,CONCAT(NOMBRES,' ',APELLIDOS) AS NOMBRE " +
                          "FROM `USUARIOS_SW`  WHERE CEDULA = @cedula AND CLAVE=@clave";
            MySqlCommand command = new MySqlCommand(sql, conn);
            command.Parameters.AddWithValue("@cedula", usuario);
            command.Parameters.AddWithValue("@clave", clave);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();
             user = new UsuariosSW();
            if (reader.Read())
            {

                user.Cedula = reader["CEDULA"].ToString();
                user.Nombre = reader["NOMBRE"].ToString();
                user.Tipo = reader["TIPO"].ToString();
               
            }
            reader.Close();
            conn.Close();
        }
        catch (Exception)
        {

        }
        return user;
    }

    public bool crearConsejo(string fecha, string cedula, string clave, string creador,string reunion)
    {
        bool guardado = false;
        MySqlConnection myConnection = this.GetConnectionString();
        //myConnection.Open();
        myConnection.Open();
        MySqlTransaction myTrans = myConnection.BeginTransaction();
        try
        {          
            MySqlCommand comando = new MySqlCommand("obtenerConsejo", myConnection, myTrans);
            comando.CommandType = CommandType.StoredProcedure;
            MySqlDataReader reader = comando.ExecuteReader();
            int numero=0;
            if (reader.Read())
            {
                numero= Convert.ToInt32(reader["NUMERO"].ToString());
            }
            reader.Close();
            string salida = String.Format("{0:D4}", numero + 1);
            //Construir codigo
            StringBuilder sb = new StringBuilder();
            sb.Append("CD").Append(salida).Append("2021");
            String codigoNuevo = sb.ToString();

            //
            string Sqlstr = @"INSERT INTO CONSEJO (COD_CONSEJO,FECHA,CED_CREDOR,CEDULA_ENCARGADO,CLAVE,SESION) 
                            values(@COD_CONSEJO,@FECHA,@CED_CREDOR,@CEDULA_ENCARGADO,@CLAVE,@SESION)";
            MySqlCommand insert = new MySqlCommand(Sqlstr, myConnection,myTrans);
            insert.Parameters.AddWithValue("@COD_CONSEJO", codigoNuevo);
            insert.Parameters.AddWithValue("@FECHA", fecha);
            insert.Parameters.AddWithValue("@CED_CREDOR", creador);
            insert.Parameters.AddWithValue("@CEDULA_ENCARGADO", cedula);
            insert.Parameters.AddWithValue("@CLAVE", clave);
            insert.Parameters.AddWithValue("@SESION", reunion);
            int afectadas = insert.ExecuteNonQuery();
            MySqlCommand select = new MySqlCommand("SELECT CORREO FROM USUARIOS_SW WHERE CEDULA=@CEDULA", myConnection, myTrans);
            select.Parameters.AddWithValue("@CEDULA", cedula);
            MySqlDataReader rd = select.ExecuteReader();
            //int numero = 0;
            string mail="";
            if (rd.Read())
            {
                mail = rd["CORREO"].ToString();
            }
            rd.Close();
            if (afectadas>0)
            {

                String update = "INSERT INTO GENERADOR_CONSEJOS VALUES(0)";
                MySqlCommand actualizar = new MySqlCommand(update, myConnection, myTrans);
                int actualizado = actualizar.ExecuteNonQuery();
                if (actualizado>0)
                {
                    bool exito = notificarConsejo(codigoNuevo, clave, mail);
                    if (exito)
                    {
                     
                       
                        myTrans.Commit();
                        myConnection.Close();
                        guardado = true;
                    }
                }
            }
            else
            {
                myTrans.Rollback();
            }

        }
        catch (Exception ex)
        {
            try
            {
                myTrans.Rollback();
            }
            catch(Exception ex2)
            {

            }
        }
        return guardado;
    }

    public ConsejoDir ObtenerLoginConsejo(string usuario, string clave)
    {
        ConsejoDir user = new ConsejoDir();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT COD_CONSEJO,FECHA  " +
                          "FROM `CONSEJO`  WHERE COD_CONSEJO = @COD_CONSEJO AND CLAVE=@CLAVE";
            MySqlCommand command = new MySqlCommand(sql, conn);
            command.Parameters.AddWithValue("@COD_CONSEJO", usuario);
            command.Parameters.AddWithValue("@CLAVE", clave);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();
            user = new ConsejoDir();
            if (reader.Read())
            {

                user.Codigo = reader["COD_CONSEJO"].ToString();
                user.Fecha = reader["FECHA"].ToString();
                //user.Tipo = reader["TIPO"].ToString();

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception)
        {

        }
        return user;
    }

    public List<Resolucion> ObtenerResoluciones(int consejo)
    {

        List<Resolucion> resoluciones = new List<Resolucion>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * " +
                          "FROM `RESOLUCIONES`  WHERE IDCONSEJO = " + consejo;

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Resolucion resol = new Resolucion();
                resol.Ubicacion = reader["UBICACION"].ToString();
                resol.Codigo = reader["CODIGO"].ToString();
                resol.IDConsejo = (reader["IDCONSEJO"].ToString());

                resoluciones.Add(resol);

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception)
        {

        }
        return resoluciones;

    }

    public List<string> ObtenerCarrerasDB()
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
        catch (Exception)
        {

        }
        return estudiante;

    }

    public List<string> ObtenerDiasMes()
    {
        List<string> numeros = new List<string>();
        for (int i = 1; i < 32; i++)
        {
            numeros.Add(i.ToString());
        }
        return numeros;
    }

    public List<string> ObtenerCarrerasCoord()
    {
        List<string> opciones = new List<string>();
        /*
         LAS CARRERAS DE INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE 
LAS CARRERAS DE INGENIERÍA EN ELECTRÓNICA Y COMUNICACIONES Y TELECOMUNICACIONES
LAS CARRERAS DE INGENIERÍA INDUSTRIAL EN PROCESOS DE AUTOMATIZACIÓN E INGENIERÍA INDUSTRIAL
          */
        opciones.Add("INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE");
        opciones.Add("INGENIERÍA EN ELECTRÓNICA Y COMUNICACIONES Y TELECOMUNICACIONES");
        opciones.Add("INGENIERÍA INDUSTRIAL EN PROCESOS DE AUTOMATIZACIÓN E INGENIERÍA INDUSTRIAL");
        return opciones;
    }
    public List<ResolucionVista> ObtenerResolucionesVista(string consejo)
    {

        List<ResolucionVista> resoluciones = new List<ResolucionVista>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * " +
                          "FROM `RESOLUCIONES`  WHERE ESTADO=0 AND IDCONSEJO = '" + consejo+"'";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                ResolucionVista resol = new ResolucionVista();
                resol.Ubicacion = reader["UBICACION"].ToString();
                resol.Codigo = reader["CODIGO"].ToString();
                resol.Consejo = (reader["IDCONSEJO"].ToString());
                resol.Estudiante = (reader["CEDULA_EST"].ToString());
                resoluciones.Add(resol);

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception)
        {

        }
        return resoluciones;

    }
    public List<string> ObtenerSecretarias()
    {
        List<string> opciones = new List<string>();
        /*
         LAS CARRERAS DE INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE 
LAS CARRERAS DE INGENIERÍA EN ELECTRÓNICA Y COMUNICACIONES Y TELECOMUNICACIONES
LAS CARRERAS DE INGENIERÍA INDUSTRIAL EN PROCESOS DE AUTOMATIZACIÓN E INGENIERÍA INDUSTRIAL
          */
        opciones.Add("INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS ");
        opciones.Add("INGENIERÍA EN ELECTRÓNICA Y COMUNICACIONES Y TELECOMUNICACIONES");
        opciones.Add("INGENIERÍA INDUSTRIAL EN PROCESOS DE AUTOMATIZACIÓN E INGENIERÍA INDUSTRIAL");
        return opciones;
    }

    public  List<string> DetallesSecretaria()
    {
        List<string> detalles = new List<string>();

        detalles.Add("INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS");
        detalles.Add("INGENIERÍA INDUSTRIAL EN PROCESOS DE AUTOMATIZACIÓN E INGENIERÍA INDUSTRIAL");
        detalles.Add("INGENIERÍA EN ELECTRÓNICA Y COMUNICACIONES Y TELECOMUNICACIONES");


        return detalles;
    }

    public bool generarActa(List<Aprobada> aprobadas, string consejo)
    {
        bool guardado = false;
        String plantillaActa = @"D:\Documentos\OficiosPlantilla\actaModel.docx";
        List<string> Editables = new List<string>();
        List<string> Datos = new List<string>();
       /* Editables.Add("<encabezado>"); Datos.Add("Encabezado asd");*/
       /* Editables.Add("<ordenDia>"); Datos.Add("Orden Del Dia alasdasdkkasd \n kasdk");*/
        MySqlConnection myConnection = this.GetConnectionString();
        myConnection.Open();
        MySqlTransaction myTrans = myConnection.BeginTransaction();
        try
        {
            foreach (var resolucion in aprobadas)
            {
                MySqlCommand myCommand = new MySqlCommand("aprobarResolucion", myConnection, myTrans);
                myCommand.CommandType = CommandType.StoredProcedure;
                myCommand.Parameters.AddWithValue("CODIGO1", resolucion.Codigo);
               bool notificado = notificarEstudiante(resolucion.Ubicacion,resolucion.Estudiante, myConnection, myTrans);
                int n = myCommand.ExecuteNonQuery();
            }
            String nombre = @"D:\Documentos\Actas\";
            string acta = obtenerSiguienteActa();
            Editables.Add("<acta>"); Datos.Add(acta);
          
            StringBuilder nombreActa = new StringBuilder();
            StringBuilder codigoActa = new StringBuilder();
            codigoActa.Append(acta);
            codigoActa.Append("-UTA-FISEI");
            nombreActa.Append(nombre);
            nombreActa.Append(acta);
            nombreActa.Append("-UTA-FISEI");
            nombreActa.Append(".docx");

            MySqlCommand comando = new MySqlCommand("guardarActa", myConnection, myTrans);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("CODIGO", codigoActa.ToString());
            comando.Parameters.AddWithValue("UBICACION", nombreActa.ToString());
            comando.Parameters.AddWithValue("CONSEJO", consejo);
            int r = comando.ExecuteNonQuery();
            if (r>0)
            {
                contruccionActa(plantillaActa, nombreActa.ToString(), Editables, Datos, aprobadas);
                myTrans.Commit();
                guardado = true;
            }
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
    public bool contruccionActa(object filename, object SaveAs, List<string> editables, List<string> datos,List<Aprobada> resoluciones)
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
            /*List<string> resoluciones = new List<string>();
            resoluciones.Add(@"D:\Documentos\Pruebas\Resolucion0031-P-CD-FISEI-UTA-2021.docx");
            resoluciones.Add(@"D:\Documentos\Pruebas\Resolucion0032-P-CD-FISEI-UTA-2020.docx");
            resoluciones.Add(@"D:\Documentos\Pruebas\Resolucion0033-P-CD-FISEI-UTA-2021.docx");*/
            foreach (var item in resoluciones)
            {
                myWordDoc.Content.InsertParagraphAfter();
                myWordDoc.Content.InsertAfter("RESOLUCION " + item.Codigo);
                myWordDoc.Content.InsertParagraphAfter();
                //myWordDoc.Content.Ins
                StringBuilder sb = new StringBuilder(ReadFileContent2(item.Ubicacion, "De mi consideración", "Atentamente"));
                //sb.Append("\n");
                myWordDoc.Content.InsertAfter(sb.ToString());
                myWordDoc.Range().Find.ClearFormatting();
            }
            myWordDoc.Range().Find.ClearFormatting();

            guardado = true;
        }
        else
        {

        }
        myWordDoc.SaveAs(ref SaveAs, ref missing, ref missing, ref missing,
                        ref missing, ref missing, ref missing,
                        ref missing, ref missing, ref missing,
                        ref missing, ref missing, ref missing,
                        ref missing, ref missing, ref missing);

        myWordDoc.Close();
        wordApp.Quit();

        return guardado;
    }
        private string ReadFileContent2(string path, string inicio, string fin)

    {

        int i = 0;

        StringBuilder sb = new StringBuilder();

        Word.Application wordApp = new Word.Application();

        object file = path;

        object nullobj = System.Reflection.Missing.Value;
       // wordApp.Documents.Ope
        Microsoft.Office.Interop.Word.Document doc = wordApp.Documents.Open

                                                (ref file, ref nullobj,  true,

                                                ref nullobj, ref nullobj, ref nullobj,

                                                ref nullobj, ref nullobj, ref nullobj,

                                                ref nullobj, ref nullobj, ref nullobj);

        Microsoft.Office.Interop.Word.Paragraphs DocPar = doc.Paragraphs;

        // Count number of paragraphs in the file

        long parCount = DocPar.Count;

        // Step through the paragraphs
        int parrafo1 = 0;
        int parrafo2 = 0;
        for (int j = 1; j < parCount; j++)
        {
            if (DocPar[j].Range.Text.Contains(inicio))
            {
                parrafo1 = j;
            }
            if (DocPar[j].Range.Text.Contains(fin))
            {
                parrafo2 = j;
            }
        }

        for (int a = parrafo1 + 1; a < parrafo2; a++)
        {
            sb.Append(DocPar[a].Range.Text);
        }


        doc.Close(ref nullobj, ref nullobj, ref nullobj);

        wordApp.Quit(ref nullobj, ref nullobj, ref nullobj);

        return (sb.ToString());

    }
    public List<string> ObtenerMeses()
    {
        //Meses
        List<string> meses = new List<string>();
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
        return meses;
    }

    public List<string> ObtenerTipoSesion()
    {
        List<string> sesion = new List<string>();
        sesion.Add("Ordinaria");
        sesion.Add("Extraordinaria");
        return sesion;
    }
    public List<string> ObtenerDiasSemana()
    {
        //Nombres de Dias
        List<string> dias = new List<string>();
        dias.Add("lunes");
        dias.Add("martes");
        dias.Add("miércoles");
        dias.Add("jueves");
        dias.Add("viernes");
        dias.Add("sábado");
        dias.Add("domingo");
        return dias;


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
    public string obtenerSiguienteResolución()
    {
        int NUMERO = 0;
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
        catch (Exception)
        {

        }

        string salida = String.Format("{0:D4}", NUMERO + 1);
        return salida;
    }
    public  string obtenerSiguienteActa()
    {
        int NUMERO=0;
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            
            MySqlCommand command = new MySqlCommand("obtenerActa", conn);
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
            myCommand.Parameters.AddWithValue("ESTUDIANTE", resolucion.Estudiante);
            myCommand.Parameters.AddWithValue("SECRETARIA", resolucion.Secretaria);
            int n = myCommand.ExecuteNonQuery();
            //Guardar en generador
            myCommand.CommandText = "guardarGenerador";
            myCommand.Parameters.Clear();
            myCommand.ExecuteNonQuery();
            CreateWordDocument(resolucion.Plantilla, resolucion.Ubicacion, resolucion.Editables, resolucion.Datos);
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

    public bool verificarDatos(List<string> editables,List<string> datos)
    {
        bool verificado = false;
        if (editables.Count==datos.Count)
        {
            foreach (var item in datos)
            {
                if (item.Equals(""))
                {
                    return false;
                }
                
            }
            return true;
        }

        return verificado;
    }
    public bool notificarEstudiante(string ubicacion,string cedula, MySqlConnection myConnection, MySqlTransaction trans)
    {
        bool notificado = false;
        try
        {
            
            string sql = "SELECT CORREOUTA  " +
                          "FROM  `Estudiantes`  WHERE CEDULA = @CEDULA ";

            MySqlCommand command = new MySqlCommand(sql, myConnection,trans);
            command.Parameters.AddWithValue("@CEDULA", cedula);
           // conn.Open();
            MySqlDataReader reader = command.ExecuteReader();
            Estudiante encontrado = new Estudiante();
            if (reader.Read())
            {
                encontrado.CorreoUTA = reader["CORREOUTA"].ToString();
               /* encontrado.Nombres = reader["NOMBRES"].ToString();
                encontrado.Apellidos = reader["APELLIDOS"].ToString();*/
            }
            reader.Close();
            //conn.Close();
            if (encontrado.CorreoUTA!=null)
            {
                notificado = enviarCorreo(encontrado.CorreoUTA,ubicacion);
            }
        }
        catch (Exception ex)
        {

        }
        return notificado;
    }

    private bool enviarCorreo(string correoUTA, string ubicacion)
    {
        bool enviado = false;
        if (File.Exists((string)ubicacion))
        {
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("francisclquishpe@hotmail.com");
                message.To.Add(new MailAddress(correoUTA));
                message.Subject = "Test";
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = "Aprobación de Resolución";
                smtp.Port = 587;
                smtp.Host = "smtp.live.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("francisclquishpe@hotmail.com", "2420541");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                var attachmentFilename = ubicacion;
                //

                Attachment attachment = new Attachment(attachmentFilename, MediaTypeNames.Application.Octet);
                ContentDisposition disposition = attachment.ContentDisposition;
                disposition.CreationDate = File.GetCreationTime(attachmentFilename);
                disposition.ModificationDate = File.GetLastWriteTime(attachmentFilename);
                disposition.ReadDate = File.GetLastAccessTime(attachmentFilename);
                disposition.FileName = Path.GetFileName(attachmentFilename);
                disposition.Size = new FileInfo(attachmentFilename).Length;
                disposition.DispositionType = DispositionTypeNames.Attachment;
                message.Attachments.Add(attachment);

                //
                smtp.Send(message);
                enviado = true;
            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.Message);
            }
          
        }
        return enviado;
    }
    private bool notificarConsejo(string Codigo, string clave , string mail)
    {
        bool enviado = false;
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("francisclquishpe@hotmail.com");
                message.To.Add(new MailAddress(mail));
                message.Subject = "Test";
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = "Se le ha asignado para un consejo: \n Código: "+Codigo + " \n Clave de Acceso: "+clave;
                smtp.Port = 587;
                smtp.Host = "smtp.live.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("francisclquishpe@hotmail.com", "2420541");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
                enviado = true;
            }
            catch (Exception ex)
            {
                // MessageBox.Show(ex.Message);
            }
        return enviado;
        
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

    public List<string> GetCarrerasMinuscula()
    {
        List<string> carreras = new List<string>();
        try
        {
            carreras.Add("Ingeniería en Sistemas Computacionales e Informáticos");
            carreras.Add("Ingeniería Electrónica y Comunicaciones");
            carreras.Add("Ingeniería Industrial en Procesos de Automatización");
            carreras.Add("Tecnologías de la Información");
            carreras.Add("Telecomunicaciones");
            carreras.Add("Software");
            carreras.Add("Ingeniería Industrial");
        }
        catch (Exception e)
        {

            throw;
        }
        return carreras;
    }

    public List<string> GetCarrerasFooter()
    {
        List<string> carreras = new List<string>();
        try
        {
            carreras.Add("Ingeniería en Sistemas Computacionales e Informáticos, Tecnologías de la Información y Software");
            carreras.Add("Ingeniería en Electrónica y Comunicaciones y Telecomunicaciones");
            carreras.Add("Ingeniería Industrial en Procesos de Automatización e Ingeniería Industrial");
        }
        catch (Exception e)
        {

            throw;
        }
        return carreras;
    }

    public List<string> GetCarrerasBanner()
    {
        List<string> carreras = new List<string>();
        try
        {
            carreras.Add("INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE");
            carreras.Add("INGENIERÍA EN ELECTRÓNICA Y COMUNICACIONES Y TELECOMUNICACIONES");
            carreras.Add("INGENIERÍA INDUSTRIAL EN PROCESOS DE AUTOMATIZACIÓN E INGENIERÍA INDUSTRIAL");
        }
        catch (Exception e)
        {

            throw;
        }
        return carreras;
    }
    public void GuardarEstudiantes(Estudiante estudiante, string celular,string fecha)
    {
        int cnt = 0;
        MySqlConnection con = this.GetConnectionString();
        if (buscarEstudiantesPorCedula(estudiante.Cedula) == 1)
        {
            string Sqlstr = @"INSERT INTO Estudiantes (CEDULA,APELLIDOS,NOMBRES,TELEFONO,CELULAR,CORREO,CORREOUTA,FECHA_NACIMIENTO,MATRICULA,FOLIO,CARRERA) 
                            values(@cedula,@apellidos,@nombres,@telefono,@celular,@correo,@correoU,@fechaN,@matricula,@folio,@carrera)";
            MySqlCommand cmd = new MySqlCommand(Sqlstr, con);
            con.Open();
            cmd.Parameters.AddWithValue("cedula", estudiante.Cedula);

            cmd.Parameters.AddWithValue("nombres", estudiante.Nombres);
            cmd.Parameters.AddWithValue("apellidos", estudiante.Apellidos);
            cmd.Parameters.AddWithValue("carrera", estudiante.Carrera);
            cmd.Parameters.AddWithValue("correo", estudiante.Correo);
            cmd.Parameters.AddWithValue("correoU", estudiante.CorreoUTA);
            cmd.Parameters.AddWithValue("folio", estudiante.Folio);
            cmd.Parameters.AddWithValue("matricula", estudiante.Matricula);
            cmd.Parameters.AddWithValue("telefono", estudiante.Telefono);
            cmd.Parameters.AddWithValue("fechaN", fecha);
            cmd.Parameters.AddWithValue("celular", celular);

            int i = cmd.ExecuteNonQuery();

            con.Close();
            if (i > 0)
            {
                cnt++;

            }
        }



    }

    private int buscarEstudiantesPorCedula(string cedula)
    {


        try
        {
            int resultado = 0;
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT COUNT(*) FROM `Estudiantes` WHERE CEDULA ='" + cedula + "'";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            if (Convert.ToInt32(command.ExecuteScalar()) == 0)
            {
                resultado = 1;
            }
            else
            {
                resultado = 0;
            }


            conn.Close();
            return resultado;

        }
        catch (Exception)
        {
            return 2;
        }


    }

    public List<UsuarioEntity> getUsuariosBusqueda(string cedula)
    {
        List<UsuarioEntity> usuarios = new List<UsuarioEntity>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * FROM `USUARIOS_SW` WHERE CEDULA LIKE '%" + cedula + "%'";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                UsuarioEntity usuario1 = new UsuarioEntity();
                usuario1.Nombres = reader["Nombres"].ToString();
                usuario1.Apellidos = reader["Apellidos"].ToString();
                usuario1.Cedula = reader["Cedula"].ToString();
                usuario1.Correo = reader["Correo"].ToString();
                usuario1.Tipo = reader["Tipo"].ToString();
                usuario1.Clave = reader["Clave"].ToString();
                usuario1.Correo = reader["Correo"].ToString();
                usuarios.Add(usuario1);

            }
            reader.Close();
            conn.Close();
        }
        catch (Exception)
        {

        }
        return usuarios;
    }
    public List<UsuarioEntity> getUsuarios()
    {
        List<UsuarioEntity> usuarios = new List<UsuarioEntity>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * " +
                          "FROM `Usuarios_SW` ";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                UsuarioEntity usuario1 = new UsuarioEntity();
                usuario1.Nombres = reader["Nombres"].ToString();
                usuario1.Apellidos = reader["Apellidos"].ToString();
                usuario1.Cedula = reader["Cedula"].ToString();
                usuario1.Correo = reader["Correo"].ToString();
                usuario1.Tipo = reader["Tipo"].ToString();
                usuario1.Clave = reader["Clave"].ToString();
                usuario1.Correo = reader["Correo"].ToString();
                usuarios.Add(usuario1);


            }
            reader.Close();
            conn.Close();
        }
        catch (Exception)
        {

        }
        return usuarios;
    }

    public bool guardarDatosUsuario(UsuarioEntity usuario)
    {
        bool guardado = false;
        MySqlConnection myConnection = this.GetConnectionString();
        myConnection.Open();
        MySqlTransaction myTrans = myConnection.BeginTransaction();
        try
        {
            string sql = "INSERT INTO USUARIOS_SW (CEDULA,NOMBRES,APELLIDOS,TIPO,CLAVE,CORREO) VALUES (@cedula,@nombres,@apellidos,@tipo,@clave,@correo)";
            MySqlCommand myCommand = new MySqlCommand(sql, myConnection, myTrans);
            myCommand.CommandType = CommandType.Text;
            myCommand.Parameters.AddWithValue("cedula", usuario.Cedula);
            myCommand.Parameters.AddWithValue("nombres", usuario.Nombres);
            myCommand.Parameters.AddWithValue("apellidos", usuario.Apellidos);
            myCommand.Parameters.AddWithValue("tipo", usuario.Tipo);
            myCommand.Parameters.AddWithValue("clave", usuario.Clave);
            myCommand.Parameters.AddWithValue("correo", usuario.Correo);

            int n = myCommand.ExecuteNonQuery();
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
    public bool actualizarDatosUsuario(UsuarioEntity usuario)
    {
        bool guardado = false;
        MySqlConnection myConnection = this.GetConnectionString();
        myConnection.Open();
        MySqlTransaction myTrans = myConnection.BeginTransaction();
        try
        {
            string sql = "UPDATE USUARIOS_SW SET NOMBRES=@nombres, APELLIDOS=@apellido,TIPO=@tipo,CLAVE=@clave,CORREO=@correo WHERE CEDULA=@cedula";
            MySqlCommand myCommand = new MySqlCommand(sql, myConnection, myTrans);
            myCommand.CommandType = CommandType.Text;
            myCommand.Parameters.AddWithValue("cedula", usuario.Cedula);
            myCommand.Parameters.AddWithValue("nombres", usuario.Nombres);
            myCommand.Parameters.AddWithValue("apellidos", usuario.Apellidos);
            myCommand.Parameters.AddWithValue("tipo", usuario.Tipo);
            myCommand.Parameters.AddWithValue("clave", usuario.Clave);
            myCommand.Parameters.AddWithValue("correo", usuario.Correo);

            int n = myCommand.ExecuteNonQuery();
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

    public bool eliminarUsuario(string cedula)
    {
        bool guardado = false;
        MySqlConnection myConnection = this.GetConnectionString();
        myConnection.Open();
        MySqlTransaction myTrans = myConnection.BeginTransaction();
        try
        {
            string sql = "DELETE FROM USUARIOS_SW WHERE CEDULA=@cedula";
            MySqlCommand myCommand = new MySqlCommand(sql, myConnection, myTrans);
            myCommand.CommandType = CommandType.Text;
            myCommand.Parameters.AddWithValue("cedula", cedula);


            int n = myCommand.ExecuteNonQuery();
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
    public List<Roles> getTiposUsuarios()
    {
        List<Roles> rol = new List<Roles>();
        try
        {
            MySqlConnection conn = this.GetConnectionString();
            string sql = "SELECT * FROM `TIPOS_USUARIO`";

            MySqlCommand command = new MySqlCommand(sql, conn);
            //command.Parameters.AddWithValue("@CEDULA", cedula);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                Roles rol1 = new Roles();
                rol1.ID = reader["ID"].ToString();
                rol1.Descripcion = reader["NOMBRE"].ToString();

                rol.Add(rol1);


            }
            reader.Close();
            conn.Close();
            return rol;
        }
        catch (Exception)
        {
            return null;
        }

    }
}