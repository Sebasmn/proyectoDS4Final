<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bienvenido</title>
    <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
    <link rel="stylesheet" href="../Estilos/inicio.css"  type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div id="tituloIndex">

            <br />

            <asp:Label ID="labelTituloIndex" runat="server" Text="RESOLUCIONES FISEI 2021"></asp:Label>
            <br />
            <br />
            <asp:Label ID="labelResol" runat="server" Text="Resoluciones Disponibles"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Panel ID="panelResoluciones" runat="server" Height="342px">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="resoluciones" 
                    OnClick="LinkButton1_Click" style="height: 19px">&gt; Actualización de Conocimientos</asp:LinkButton>
                &nbsp;<asp:LinkButton 
                    ID="LinkButton2"  runat="server" CssClass="resoluciones" OnClick="LinkButton2_Click">&gt; Aprobación Carta de Compromiso</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton3"
                  
                    runat="server" CssClass="resoluciones" OnClick="LinkButton3_Click">&gt; Reingreso A Carrera</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton4"
                    OnClientClick="target ='_blank';"
                    runat="server" CssClass="resoluciones" OnClick="LinkButton4_Click">&gt; Reconocimiento Cultura Física</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton5" 
                  
                    runat="server" CssClass="resoluciones" OnClick="LinkButton5_Click">&gt; Prácticas Prepofesionales</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton6" 
                    runat="server" 
                 
                    CssClass="resoluciones" OnClick="LinkButton6_Click">&gt;  Homologación </asp:LinkButton>
                <br />
                <br />
                
            
            </asp:Panel>

        </div>
        <div>
        </div>
    </form>
</body>
</html>
