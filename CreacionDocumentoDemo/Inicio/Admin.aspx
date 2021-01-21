<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrador</title>
    <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
    <link rel="stylesheet" href="../Estilos/inicio.css"  type="text/css" />



    <style>
        body{
            text-align:center;
            margin:auto;
        }
        #opcionesLabel{
            float:left;
            margin-left:10px;
        }
        .labels{
            text-align:center;
            font-size:30px;
            color:#7D4307;
        }
        #tablaOpcionesAdmin{
            width:100%;
        }
        .auto-style1 {
            background-color: rgba(112, 72, 14,0.8);
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #7C4F0E;
            color: #DAD4CB;
            font-weight: 700;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1 style="color:#7C4F0E;">
                Crear Usuarios y Consejos</h1>
                <h1 style="color:#7C4F0E;">
            <asp:Button ID="botonLogin" 
                runat="server" 
                CssClass="auto-style1"
                Text="Salir" OnClick="botonLogin_Click" Font-Size="Medium" Height="44px" Width="148px"  />
                    &nbsp;&nbsp;&nbsp;
                
            </h1>
            <hr />
        <div id="contenedor">
            <br />
            <br />
            <br />

            <table id="tablaOpcionesAdmin">
                <tr>
                    <td>    <asp:ImageButton ID="ImageButton1" 
                runat="server" Height="176px" ImageUrl="~/Images/usuario.png" Width="205px" OnClick="ImageButton1_Click" /></td>
                      <td> <asp:ImageButton ID="ImageButton2"
                runat="server" Height="176px"
                ImageUrl="~/Images/consejo.png" Width="205px" OnClick="ImageButton2_Click" /></td>
                      <td> <asp:ImageButton ID="ImageButton3" 
            runat="server" Height="176px" ImageUrl="~/Images/data.png" Width="205px" OnClick="ImageButton3_Click" /></td>
                </tr>
                <tr>
                    <td> <asp:Label ID="Label1"       CssClass="labels"   runat="server" Text="Usuarios"></asp:Label></td>
                     <td> <asp:Label ID="Label2" CssClass="labels" runat="server" Text="Crear Consejos"></asp:Label></td>
                     <td> <asp:Label ID="Label3" CssClass="labels" runat="server" Text="Cerrar Sesión"></asp:Label></td>
                </tr>
            </table>
         
        </div>
    </form>
</body>
</html>
