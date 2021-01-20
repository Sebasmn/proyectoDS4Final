<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearConsejo.aspx.cs" Inherits="CreacionDocumentoDemo.Admin.CrearConsejo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Actualización Conocimientos</title>
       <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" />
    <style type="text/css">
        .auto-style1 {
            left: -3px;
            top: 0px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 432px;
        }
        .auto-style4 {
            height: 43px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div id="formularioLogin" class="auto-style3">
            <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png" CssClass="auto-style1"
                    />
            <h1>
                Creación de Consejo
                
            </h1>
            <hr />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#785E37" Text="Ingrese código de consejo:"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="TextBox1" runat="server" required="true" placeholder="CD001-2020" CssClass="inputLogin"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <center>
                             <br />
                <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#785E37" Text="Seleccione fecha:"></asp:Label>
                            <br />
                            <br />
                            <asp:Calendar ID="Calendar1" runat="server" Width="377px"></asp:Calendar>
                            <br />
                        </center>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#785E37" Text="Ingrese cédula la persona que crea el consejo:"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:TextBox ID="TextBox3" runat="server" required="true" placeholder="Ejm: 1804156112" CssClass="inputLogin" Height="34px" Width="177px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
            <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#785E37" Text="Ingrese cédula de persona encargada:"></asp:Label>
                    </td>
                    <td class="auto-style6">
            <asp:TextBox ID="TextBox4" runat="server" required="true" placeholder="Ejm: 1804156112" CssClass="inputLogin" Height="35px" Width="179px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#785E37" Text="Ingrese clave:"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox5" runat="server" required="true" placeholder="*********" CssClass="inputLogin" Height="35px" Width="179px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="btnCrear" runat="server" CssClass="btnBuscar" Text="Crear" OnClick="btnCrear_Click" />
            <br />
            <br />
        </div>
        </div>
    </form>
</body>
</html>
