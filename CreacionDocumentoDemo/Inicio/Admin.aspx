<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrador</title>
    <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
    <link rel="stylesheet" href="../Estilos/inicio.css"  type="text/css" />
    <style>
        #opcionesLabel{
            float:left;
            margin-left:10px;
        }
        .labels{
            float:left;
            width:320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1 style="color:#7C4F0E;">
                Crear Usuarios y Consejos&nbsp;&nbsp;&nbsp;
                
            </h1>
            <hr />
        <div id="contenedor">
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="176px" ImageUrl="~/Images/usuario.png" Width="205px" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="176px" ImageUrl="~/Images/consejo.png" Width="205px" OnClick="ImageButton2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="176px" ImageUrl="~/Images/cerrar.png" Width="205px" OnClick="ImageButton3_Click" />
            <br />
            <br />
            <div id="opcionesLabel">
                <asp:Label ID="Label1"       CssClass="labels"   runat="server" Text="Usuarios"></asp:Label>
                <asp:Label ID="Label2" CssClass="labels" runat="server" Text="Crear Consejos"></asp:Label>
                <asp:Label ID="Label3" CssClass="labels" runat="server" Text="Cerrar Sesión"></asp:Label>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
