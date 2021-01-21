<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProyectoInvestigacion.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Titulacion.ProyectoInvestigacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Proyecto Investigacion</title>
     <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" />

    </head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Image ID="escudoLogin" runat="server" ImageUrl="~/Images/EscudoUTA.png" />
            <h1>Resolución para Proyecto de Investigación</h1>
            <p>
                <asp:Button ID="botonLogin1" runat="server" CssClass="btnBuscar" Height="39px" OnClick="botonLogin0_Click" Text="MENU PRINCIPAL" Width="145px" />
                &nbsp;&nbsp;
                <ajaxToolkit:ConfirmButtonExtender ID="botonLogin1_ConfirmButtonExtender" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin1" />
                <asp:Button ID="botonLogin0" runat="server" CssClass="btnBuscar" Height="39px" OnClick="botonLogin_Click" Text="Salir" Width="112px" />
                <ajaxToolkit:ConfirmButtonExtender ID="botonLogin0_ConfirmButtonExtender" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin0" />
            </p>
            <hr />
            <asp:Button ID="btnBuscar" runat="server" CssClass="btnBuscar" OnClick="btnBuscar_Click" Text="Buscar Estudiante" />
            &nbsp;<asp:Button ID="btnNumeroResolucion" runat="server" CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click" Text="Generar Número Resolución" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Consejo Destino:"></asp:Label>
            <asp:TextBox ID="txtCodigoConsejoDestino" runat="server"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div id="documento">
                    <p class="MsoNormal" style="text-align:justify">
                        <asp:TextBox ID="txtFecha" runat="server" CssClass="auto-style6" Height="16px" placeholder="Ambato,15 de Enero del 2021" Width="191px"></asp:TextBox>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:
text1">Resolución <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                        </span></span></span></span></span></span></span></span>&nbsp;-P-CD-FISEI-UTA-<span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                        </span></span></span></span></span></span></span></span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">Ingeniero, Mg.<p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" Height="16px" placeholder="Carlos Sánchez" Width="233px"></asp:TextBox>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <b style="mso-bidi-font-weight:
normal"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">PRESIDENTE DE LA UNIDAD DE TITULACIÓN
                        <p></p>
                        </span></b>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">FACULTAD DE </span><span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:
text1">INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL</span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">Presente<p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">De mi consideración:<p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:
text1">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlSesion" runat="server">
                        </asp:DropDownList>
                        </span></span></span>&nbsp;del día <a name="_Hlk61802674"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlNombreDia" runat="server">
                        </asp:DropDownList>
                        </span></span></span></span></a>&nbsp;<span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia" runat="server">
                        </asp:DropDownList>
                        </span></span></span><span style="mso-bookmark:_Hlk61627263"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">&nbsp;</span></span></span>de <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlMes" runat="server">
                        </asp:DropDownList>
                        </span></span></span>&nbsp;del <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio0" runat="server" CssClass="auto-style6" Height="16px" placeholder="2020" Width="58px"></asp:TextBox>
                        </span></span></span></span></span></span></span>, </span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">conoce el <span style="mso-spacerun:yes">&nbsp;</span>acuerdo <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" Height="16px" placeholder="UTA-UVS-FISEI-2020-0073-M" Width="233px"></asp:TextBox>
                        </span></span></span>, de fecha <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlMes0" runat="server">
                        </asp:DropDownList>
                        </span></span><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">&nbsp;<span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia0" runat="server">
                        </asp:DropDownList>
                        </span></span></span></span></span>, <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio1" runat="server" CssClass="auto-style6" Height="16px" placeholder="2020" Width="58px"></asp:TextBox>
                        </span></span></span></span></span></span></span>&nbsp;suscrito por el <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresidente0" runat="server" CssClass="noBorder" Height="16px" placeholder="Ingeniero Mg. Carlos Sánchez" Width="233px"></asp:TextBox>
                        </span></span>. Presidente de la Unidad de Titulación de esta Unidad Académica, quien sugiere se apruebe la Modalidad de Titulación <b>“Proyecto de Investigación”</b> presentada por el/la señor/ita <b style="mso-bidi-font-weight:
normal"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: &quot;Arial Unicode MS&quot;; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                        </span></span></b></span>, </b>estudiante de la Carrera de <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">
                        <asp:DropDownList ID="ddlCarrera" runat="server">
                        </asp:DropDownList>
                        </span></span></span>. Al respecto, RESUELVE: <span style="color:black;mso-themecolor:text1">
                        <p></p>
                        </span></span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="text-align:justify">
                        <b style="mso-bidi-font-weight:
normal"><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">APROBAR,</span></b><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> LA MODALIDAD DE TITULACIÓN <b style="mso-bidi-font-weight:
normal">“PROYECTO DE INVESTIGACIÓN”,</b> ESCOGIDA POR EL/LA SEÑOR/ITA <span style="font-size: 10.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-EC" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: &quot;Arial Unicode MS&quot;; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu0" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                        </span></span></span></b></span>, ESTUDIANTE DE LA CARRERA DE <span style="font-size: 10.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">
                        <asp:DropDownList ID="ddlCarrera0" runat="server">
                        </asp:DropDownList>
                        </span></span></span></span>, POR CUMPLIR CON LOS REQUISITOS ESTABLECIDOS.<b style="mso-bidi-font-weight:normal">
                        <p></p>
                        </b></span>
                    </p>
                    <p class="MsoNoSpacing" style="text-align:justify">
                        <span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <b style="mso-bidi-font-weight:
normal"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">INDICAR,</span></b><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> AL SEÑOR/ITA <b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size: 10.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-EC" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: &quot;Arial Unicode MS&quot;; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                        </span></span></span></b></span></span>, </b>QUE PARA INICIAR EL PROCESO DE TITULACIÓN DEBERÁ ESTAR LEGALMENTE MATRICULADO EN DÉCIMO NIVEL Y DEBERÁ ADJUNTAR LOS CERTIFICADOS DE HABER CUMPLIDO CON: VINCULACIÓN CON LA COLECTIVIDAD, APROBACIÓN DEL IDIOMA EXTRANJERO, APROBACIÓN DE CULTURA FÍSICA Y PRÁCTICAS PREPROFESIONALES, Y ADEMÁS DEBERÁ ANEXAR LOS SIGUIENTES DOCUMENTOS:<p></p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify">
                        <span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">RESOLUCIÓN DE CONSEJO DIRECTIVO DE APROBACIÓN DE MODALIDAD<p></p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">CARTA DE COMPROMISO O COLABORACIÓN DE LA EMPRESA (DE SER EL CASO)<p></p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">PROPUESTA DE TRABAJO DE TITULACIÓN<p></p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">NOMBRE DEL DOCENTE SUGERIDO PARA POSIBLE TUTOR.<p></p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="text-align:justify">
                        <span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing" style="text-align:justify">
                        <b style="mso-bidi-font-weight:
normal"><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">REMITIR,</span></b><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> LOS DOCUMENTOS ORIGINALES REFERIDOS ANTERIORMENTE A LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN DE LA FISEI PARA SU CORRESPONDIENTE ARCHIVO.<span style="mso-bidi-font-weight:bold"><p></p>
                        </span></span>
                    </p>
                    <p class="MsoHeader" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt">
                        <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoHeader" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt">
                        <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                        <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Atentamente,<p></p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                        <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                        <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                        <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                        <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoBodyText" style="text-indent:.05pt">
                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresidente1" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Pilar Urrutia, Mg." Width="233px"></asp:TextBox>
                        </span>
                    </p>
                    <p class="MsoHeader" style="text-align:justify;text-indent:.05pt">
                        <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">PRESIDENTA<p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt">
                        <span style="font-size:8.0pt;font-family:&quot;Tahoma&quot;,sans-serif">cc: <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Pilar Urrutia, Mg." Width="233px"></asp:TextBox>
                        </span>, Coordinador de las Carreras de <span style="mso-bookmark:_Hlk61627263">
                        <asp:DropDownList ID="ddlCarreras" runat="server">
                        </asp:DropDownList>
                        </span></span><span style="font-size:
8.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Tahoma&quot;,sans-serif">
                        <p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt">
                        <span style="font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Tahoma&quot;,sans-serif"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Estudiante</span><p></p>
                    </p>
                    <p class="MsoNormal">
                        <p>&nbsp;</p>
                    </p>
                    <p class="MsoNormal">
                        <p>&nbsp;</p>
                    </p>
                    <p class="MsoNormal">
                        <p>&nbsp;</p>
                    </p>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />

        
           <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                      Width="172px" OnClick="Button4_Click" />
         <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
         <br />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="310px" Width="837px">
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="X" />
            <asp:UpdatePanel ID="upEstudiante" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
                <ContentTemplate>
                 
             <asp:Button ID="Button2" runat="server" Text="Buscar" OnClick="Button2_Click"/>
                    <asp:GridView ID="GridView1" runat="server" 
                        AllowPaging="True" 
                        PageSize="3" Width="763px" 
                        BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" 
                        BorderWidth="1px" 
                        CellPadding="3" 
                        CellSpacing="2" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="botonSeleccionar" CssClass="btnBuscarGrid" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </ContentTemplate>
                 <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="GridView1" 
                             EventName="SelectedIndexChanged" />
        </Triggers>
            </asp:UpdatePanel>
            
        </asp:Panel>
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1"
            TargetControlID="btnBuscar"
            CancelControlID="Button3"
            PopupControlID="panelModalBusquedaEst" 
            runat="server"></ajaxToolkit:ModalPopupExtender>

        <br />
    </form>
</body>
</html>
