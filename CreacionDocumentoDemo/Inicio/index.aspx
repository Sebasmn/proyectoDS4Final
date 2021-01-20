<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bienvenido</title>
    <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
    <link rel="stylesheet" href="../Estilos/inicio.css"  type="text/css" />
    
    <style type="text/css">
    
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div id="tituloIndex" >
             <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <hr />
            <br />

            <asp:Label ID="labelTituloIndex" runat="server" Text="RESOLUCIONES FISEI 2021"></asp:Label>

            <br />
            <br />
            <asp:Label ID="labelResol" runat="server" Text="Resoluciones Disponibles" CssClass="labelResol"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Panel ID="panelResoluciones" runat="server" Height="259px" CssClass="panelResoluciones">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="resoluciones" 
                    OnClick="LinkButton1_Click" style="height: 19px">&gt; Actualización de Conocimientos</asp:LinkButton>
                <asp:LinkButton ID="LinkButton7" runat="server" CssClass="resoluciones" OnClick="LinkButton2_Click">&gt; Aprobación Carta de Compromiso</asp:LinkButton>
                &nbsp;<asp:LinkButton 
                    ID="LinkButton2"  runat="server" CssClass="resoluciones" OnClick="LinkButton2_Click1" >&gt; Tercera Matrícula</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton3"
                  
                    runat="server" CssClass="resoluciones" OnClick="LinkButton3_Click">&gt; Reingreso A Carrera</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton4"
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
                <br />
                <br />
                
            
            </asp:Panel>
            <asp:Label ID="label1" runat="server" Text="Titulación y Vinculación" Font-Size="Large" ForeColor="#804040"></asp:Label>
            <br />
            <br />

            <asp:Panel ID="panel1" runat="server" >
                <asp:LinkButton ID="LinkButton8" runat="server" CssClass="resoluciones" 
                    OnClick="LinkButton8_Click">&gt; Artículo Académico</asp:LinkButton>
                <asp:LinkButton ID="LinkButton9" runat="server"
                    CssClass="resoluciones" OnClick="LinkButton9_Click" >&gt; Prop. Titulación Prorroga</asp:LinkButton>
                &nbsp;<asp:LinkButton 
                    ID="LinkButton10"  runat="server" CssClass="resoluciones" OnClick="LinkButton10_Click" >&gt; Proyecto Investigación</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton11"
                  
                    runat="server" CssClass="resoluciones" OnClick="LinkButton11_Click"
                    >&gt; Examen Complexivo</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton12"
                    runat="server" CssClass="resoluciones" OnClick="LinkButton12_Click" >&gt; Prórroga Gratuita</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton13" 
                  
                    runat="server" CssClass="resoluciones" OnClick="LinkButton13_Click" >&gt; Propuesta Titulación</asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton14" 
                    runat="server" 
                 
                    CssClass="resoluciones" OnClick="LinkButton14_Click" >&gt; Prórroga Pagada </asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" ImageUrl="~/Images/salir.png" Width="68px" OnClick="ImageButton1_Click" />
                <br />
                Cerrar Sesión<br />
                <br />
                
            
            </asp:Panel>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
