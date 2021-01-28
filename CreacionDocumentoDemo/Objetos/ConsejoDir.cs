using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CreacionDocumentoDemo.Objetos
{
    
    public class ConsejoDir
    {
        public string Codigo { get; set; }
        public string Fecha { get; set; }
        public string Completado { get; set; }
        public string Sesion { get;  set; }

        public ConsejoDir() { 
        }
        public ConsejoDir(string Cod, string Fecha)
        {
            this.Fecha = Fecha;
            this.Codigo = Cod;
        }
    }
}