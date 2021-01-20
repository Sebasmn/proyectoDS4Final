<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrador</title>
    <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
    <link rel="stylesheet" href="../Estilos/inicio.css"  type="text/css" />
     
</head>
<body>
    <form id="form1" runat="server">
                <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1>
                Administrador de Sitio&nbsp;&nbsp;&nbsp;
                
            </h1>
            <hr />
        <div id="contenedor">
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="176px" ImageUrl="~/Images/usuario.png" Width="205px" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="176px" ImageUrl="~/Images/consejo.png" Width="205px" OnClick="ImageButton2_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
