<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidacionDatos.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.ValidacionDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 902px;
            height: 426px;
            margin-left: 40px;
        }
    </style>
    <link rel="stylesheet" href="../Estilos/estilos.css"  type="text/css" />
</head>
    
<body>
    <form id="form1" runat="server">
        <div id="container" class="auto-style2">
            <asp:Image ID="Image1"  runat="server" Height="105px" ImageAlign="TextTop" ImageUrl="~/Images/EscudoUTA.png" Width="100px" />
            <br />
            <h1>Facultad de Ingeniería en Sistemas, Electrónica e Industrial</h1>
            <h2>Sistema de Manejo de Archivos Prueba</h2>
            <hr />
            <br />
            <div id="controles">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Nombres"></asp:TextBox>
                <asp:TextBox ID="TextBox1" runat="server"  placeholder="Fecha"  CssClass="auto-style1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar Datos" Width="143px" />
            </div>
            <br />
        </div>
      
    </form>
</body>
</html>
