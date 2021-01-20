<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bienvenido</title>
    <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
    <link rel="stylesheet" href="../Estilos/inicio.css"  type="text/css" />
    
    <style type="text/css">
    
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
        .auto-style3 {
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
        <div id="tituloIndex" >
             <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <hr />
            <br />

            <asp:Label ID="labelTituloIndex" runat="server" Text="RESOLUCIONES FISEI 2021"></asp:Label>

             <br />
             <br />
            <asp:Button ID="botonLogin" runat="server" CssClass="auto-style3" Text="Salir" OnClick="botonLogin_Click" Height="39px" Width="112px" />
             <br />
            <br />
            <asp:Label ID="labelResol" runat="server" Text="Resoluciones Disponibles" CssClass="labelResol"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="panelResoluciones" runat="server" Height="227px" CssClass="panelResoluciones" Width="921px">
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
             <br />
            <hr />
             <hr />
            <asp:Label ID="label1" runat="server" Text="Titulación y Vinculación" Font-Size="Large" ForeColor="#804040" CssClass="labelResol"></asp:Label>
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
            
                
            
            </asp:Panel>
            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" 
                TargetControlID="botonLogin" ConfirmText="Terminar sesión"
                runat="server" />
                <br />
                <br />
        </div>
        <div>
        </div>
    </form>
</body>
</html>
