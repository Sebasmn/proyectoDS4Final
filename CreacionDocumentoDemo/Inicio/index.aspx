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
        <div id="tituloIndex" class="auto-style4" >
             <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <hr  style="border-color:#643A0F"/>
            <asp:Label ID="labelTituloIndex" runat="server" Text="RESOLUCIONES DISPONIBLES FISEI 2021"></asp:Label>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Button ID="botonLogin" 
                runat="server" 
                CssClass="auto-style1"
                Text="Salir" OnClick="botonLogin_Click" Font-Size="Medium" Height="44px" Width="148px"  />
             <br />
             <br />
             <br />
            &nbsp;&nbsp;&nbsp;
            
            <br />
               <table  style="width: 100%; border:none;"     border="0"   >
            <tr>
                <td >
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="resoluciones" 
                    OnClick="LinkButton1_Click" >&gt; Actualización de Conocimientos</asp:LinkButton>
                </td>
                <td>
                <asp:LinkButton ID="LinkButton8" runat="server" CssClass="resoluciones" 
                    OnClick="LinkButton8_Click" >&gt; Art. Académico</asp:LinkButton>
                </td>
                <td>
                <asp:LinkButton ID="LinkButton7" runat="server" 
                    CssClass="resoluciones" OnClick="LinkButton2_Click">&gt; Aprobación Carta de Compromiso</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td >
                <asp:LinkButton ID="LinkButton11"
                  
                    runat="server" CssClass="resoluciones" OnClick="LinkButton11_Click"
                    >&gt; Examen Complexivo</asp:LinkButton>
                </td>
                <td><asp:LinkButton ID="LinkButton6" 
                    runat="server" 
                 
                    CssClass="resoluciones" OnClick="LinkButton6_Click">&gt;  Homologación </asp:LinkButton>
                
            
                </td>
                <td><asp:LinkButton 
                    ID="LinkButton2"  runat="server" CssClass="resoluciones" OnClick="LinkButton2_Click1" >&gt; Tercera Matrícula</asp:LinkButton>
                
            
                </td>
            </tr>
            <tr>
                <td ><asp:LinkButton 
                    ID="LinkButton10"  runat="server" CssClass="resoluciones" OnClick="LinkButton10_Click" >&gt; Proyecto Investigación</asp:LinkButton>
                </td>
                <td>
                <asp:LinkButton ID="LinkButton13" 
                  
                    runat="server" CssClass="resoluciones" OnClick="LinkButton13_Click" >&gt; Propuesta Titulación</asp:LinkButton>
                </td>
                <td>
                <asp:LinkButton ID="LinkButton9" runat="server"
                    CssClass="resoluciones" OnClick="LinkButton9_Click" >&gt; Prop. Titulación Prorroga</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="resoluciones" OnClick="LinkButton5_Click">&gt; Prácticas Prepofesionales</asp:LinkButton>

                </td>
                    <td>

                        <asp:LinkButton ID="LinkButton4"
                    runat="server" CssClass="resoluciones" OnClick="LinkButton4_Click">&gt; Reconocimiento Cultura Física</asp:LinkButton>

                </td>
                    <td>

                        <asp:LinkButton ID="LinkButton12"
                    runat="server" CssClass="resoluciones" OnClick="LinkButton12_Click" >&gt; Prórroga Gratuita</asp:LinkButton>

                </td>
            </tr>
            <tr>
                <table style="width: 100%;">
                    <tr>
                        <td ><asp:LinkButton ID="LinkButton3" runat="server" CssClass="resoluciones" OnClick="LinkButton3_Click">&gt; Reingreso A Carrera</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton14" 
                    runat="server" 
                 
                    CssClass="resoluciones" OnClick="LinkButton14_Click" >&gt; Prórroga Pagada </asp:LinkButton>

            
                        </td>
                    </tr>
                  
                </table>
               
            </tr>
        </table>
            </div>
    </form>
</body>
</html>
