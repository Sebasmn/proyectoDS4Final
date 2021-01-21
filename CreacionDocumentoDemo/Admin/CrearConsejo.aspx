<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearConsejo.aspx.cs" Inherits="CreacionDocumentoDemo.Admin.CrearConsejo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Actualización Conocimientos</title>
       <link rel="stylesheet" href="../Estilos/inicio.css"  type="text/css" />
         
    <style type="text/css">
       
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            height: 52px;
        }
           .botonLogin {
    width: 100px;
    height: 30px;
    border: none;
    background-color: rgba(112, 72, 14,0.8);
    background-color: #7C4F0E;
    color: #DAD4CB;
    font-weight: 700;
    border-radius: 10px;
}
           .auto-style7 {
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
        <div>
        <div id="tituloIndex" class="auto-style3">
            <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png" CssClass="auto-style1"
                    />
            <h1 style="color:#7C4F0E;">
                Crear consejo</h1>
            <p style="color:#7C4F0E;">
                <strong>
                    <asp:Button ID="botonLogin0" 
                runat="server" AutoPostBack="false"
                CssClass="botonLogin"
                Text="Menú Principal"  Font-Size="Medium" Height="35px" Width="160px" OnClick="botonLogin0_Click"  />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCrear0" runat="server" CssClass="botonLogin" Text="Salir" OnClick="btnCrear0_Click" Height="35px"  />
                </strong></p>
            &nbsp;&nbsp;&nbsp;
            <hr />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>
            <asp:Label ID="Label7" runat="server" Font-Italic="True" 
                     Font-Names="Sitka Text" Font-Size="Medium" 
                 ForeColor="#785E37" Text="Tipo Reunión"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <center>
                             <br />
                             <br />
                        </center>
                       
                    </td>
                </tr>
                <tr>
                        <td class="auto-style4">
            <asp:Label ID="Label6" runat="server" Font-Italic="True" 
                Font-Names="Sitka Text" Font-Size="Medium" 
                ForeColor="#785E37" Text="Ingrese la fecha del consejo:"></asp:Label>
                    </td>
                     <td class="auto-style4">
            <asp:TextBox ID="txtFecha" runat="server" textmode="Date" required="true" 
                placeholder="Ejm: 1804156112" CssClass="inputLogin" Height="34px" Width="177px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
            <asp:Label ID="Label3" runat="server"
                Font-Italic="True" Font-Names="Sitka Text" Font-Size="Medium" ForeColor="#785E37" Text="Ingrese cédula de persona encargada:"></asp:Label>
                    </td>
                    <td class="auto-style6">
            <asp:TextBox ID="txtCedula" runat="server"
                required="true" placeholder="Ejm: 1804156112" CssClass="inputLogin" Height="35px" Width="179px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
            <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Names="Sitka Text" Font-Size="Medium" ForeColor="#785E37" Text="Ingrese clave:"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="txtClave" runat="server" required="true" placeholder="*********" CssClass="inputLogin" Height="35px" Width="179px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="btnBuscar" runat="server" CssClass="auto-style7" Text="Crear" OnClick="btnCrear_Click" Font-Size="12pt" Height="40px" Width="131px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <strong>
                &nbsp;&nbsp;&nbsp;
                </strong>
            <br />
            <br />
        </div>
        </div>
    </form>
</body>
</html>
