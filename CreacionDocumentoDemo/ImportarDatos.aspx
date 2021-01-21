<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImportarDatos.aspx.cs" Inherits="CreacionDocumentoDemo.ImportarDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" />
    <style type="text/css">
        .auto-style1 {
            left: -3px;
            top: 0px;
            width: 110px;
            height: 101px;
        }
        .auto-style7 {
            width: 1632px;
            margin-left: 0px;
        }
        .auto-style9 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <br />
        <div class="auto-style7" >
            <br />
            <table class="auto-style9">
                <tr>
                    <td>
                        <br />
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png" CssClass="auto-style1" Height="120px" Width="120px"
                    />
            <h1>
                Importar datos 
                
            </h1>
                <asp:Button ID="botonLogin" runat="server" CssClass="btnBuscar" Height="39px" OnClick="botonLogin_Click" Text="Salir" Width="112px" />
                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin" />
                
                        <br />
                        <br />
                        <br />
                        <br />
            <asp:Label ID="lblUploadFile" runat="server" BackColor="#FFF3EE"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:FileUpload ID="userFileUpload" runat="server" BorderStyle="Double" Height="59px" Width="342px" BackColor="#FFF2E6" />
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Button ID="UploadButton"  CssClass="btnBuscar" runat="server" Text="Leer Datos" OnClick="UploadButton_Click" />
          
            <asp:Button ID="SaveData" runat="server" Text="Importar" CssClass="btnBuscar" OnClick="SaveData_Click" />
                    </td>
                </tr>
            </table>
            <br />
        <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
