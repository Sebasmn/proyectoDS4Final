using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CreacionDocumentoDemo.Objetos
{
    public class Resolucion
    {
        public string  Ubicacion { get; set; }
        public string Codigo { get; set; }
        public string Plantilla { get; set; }
        public int IDConsejo { get; set; }
        public string Estudiante { get; set; }
        public List<string> Editables { get; set; }
        public List<string> Datos { get; set; }
        public Resolucion()
        {

        }
    }
}