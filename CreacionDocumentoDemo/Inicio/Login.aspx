<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FISEI</title>
    <link rel="stylesheet" href="../Estilos/estilos.css"  type="text/css" />


</head>
<body id="bodyLogin">
    <form id="form1" runat="server">
        <div id="formularioLogin">
            <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1>
                Ingreso de Usuario
                
            </h1>
            <hr />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#785E37" Text="Digite su cédula y clave"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" required="true" placeholder="Ejm: 1804156112" CssClass="inputLogin"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" required="true" placeholder="*********" CssClass="inputLogin" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="botonLogin" runat="server" CssClass="botonLogin" Text="Ingresar" OnClick="botonLogin_Click" />
        </div>
    </form>
</body>
</html>
