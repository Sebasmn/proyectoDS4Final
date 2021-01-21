using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CreacionDocumentoDemo.Objetos
{
   [Serializable]
    public class UsuarioEntity
    {
        public string Cedula { get; set; }

        public string Apellidos { get; set; }
        public string Nombres { get; set; }
        public string Tipo { get; set; }
        public string Clave { get; set; }
        public string Correo { get; set; }

        public UsuarioEntity()
        {

        }
    }
}