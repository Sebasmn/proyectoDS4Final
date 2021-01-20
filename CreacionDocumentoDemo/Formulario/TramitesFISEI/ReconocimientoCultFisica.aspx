<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReconocimientoCultFisica.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.TramitesFISEI.ReconocimientoCultFisica" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cultura Física</title>
    <link rel="stylesheet" href="../../Estilos/estilos.css"  type="text/css" />
    <style type="text/css">

    </style>
</head>
<body>
    
    <form id="form1"  runat="server">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1>
               Resolución para Reconocimiento de Cultura Física 
            </h1>
            <hr />
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante" 
            CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
             <br />
             <asp:Label ID="Label3" runat="server" Text="Consejo Destino:"></asp:Label>
            <asp:TextBox ID="txtCodigoConsejoDestino" runat="server"></asp:TextBox>
        </asp:Panel>
         <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>
        <div id="documento">

            <p class="MsoNormal" style="text-align:justify">
            <asp:TextBox ID="txtFechaHeader"  placeholder="Ambato,21 de Febrero del 2020" runat="server" CssClass="noBorder" Height="16px" Width="233px"></asp:TextBox>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif">Resolución</span><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                </span></span></span>-P-CD-FISEI-UTA-</span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" Height="16px" placeholder="Ej:2020" Width="58px"></asp:TextBox>
                </span></span></span></span>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Ingeniero/a,</span><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:
8.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"> Mg.<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
            <asp:TextBox ID="txtCoordinador"  placeholder="Ambato,21 de Febrero del 2020" runat="server" CssClass="noBorder" Height="16px" Width="233px"></asp:TextBox>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">COORDINADOR DE LA CARRERA DE
                <asp:DropDownList ID="ddlCarreras" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                <o:p></o:p></span></b>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">FACULTAD <a name="_Hlk5376603">DE TECNOLOGÍAS DE LA INFORMACIÓN, TELECOMUNICACIONES E INDUSTRIAL</a><o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">Presente.-<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">De mi consideración<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Consejo Directivo de la Facultad de Tecnologías de la Información, Telecomunicaciones e Industrial, en Sesión <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>&nbsp;del día <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span></span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <span style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">&nbsp;</span></span><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlNumeroDia" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>&nbsp;de <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>
                &nbsp;<span style="mso-spacerun:yes">&nbsp;</span>del <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="Año"></asp:TextBox>
                </span></span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">&nbsp;</span></span><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, conoce el Acuerdo</span><span style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAcuerdo" runat="server"  CssClass="noBorder" placeholder="Ejm: 1363-CAF-FISEI-2019 "></asp:TextBox>
                </span></span></span><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, de fecha <span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>
                </span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span><span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlNumeroDia0" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span></span>&nbsp;, <span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio3" runat="server" CssClass="noBorder" placeholder="Año" Height="16px" Width="62px"></asp:TextBox>
                </span></span>, suscrito por <span style="mso-spacerun:yes">&nbsp;</span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" placeholder="Ejm: Ing Julio Cuji " Width="100%"></asp:TextBox>
                </span>&nbsp;, Presidente de Consejo Académico de Facultad, quien remite la solicitud del señor <b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                </span>&nbsp;</b>con C.C.</span><span style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> </span><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">&nbsp;<span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtCedula" runat="server" EnableViewState="true" Height="16px" placeholder="Ejm:1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span>&nbsp;estudiante de la Carrera de <span lang="ES" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif; mso-bidi-font-size: 8.0pt;"><span style="font-size: 10.0pt; font-family: &quot;Cambria&quot;,serif; line-height: 106%; mso-bidi-font-family: Tahoma;"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlCarreras1" runat="server" CssClass="noBorder" Width="100%">
                </asp:DropDownList>
                </span></span></span></b></span></span></span></span></span></em>
                </span></span></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">&nbsp;de la Universidad Técnica de Ambato, quien solicita la reconocimiento de la asignatura Cultura Física aprobada en la carrera de <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif">
                <asp:TextBox ID="txtCarrera2" runat="server" CssClass="noBorder" Height="16px" placeholder="Ejm:Ing Sistemas Comp E Informáticos" Width="100%"></asp:TextBox>
                </span></span>. Al respecto RESUELVE:<p></p>
                </span>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="BodyText21" style="line-height:115%">
                <span lang="ES-TRAD" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-TRAD"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;tab-stops:7.1pt 21.3pt">
                <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:9.0pt;
mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">APROBAR,</span></b><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> EL RECONOCIMIENTO DE LA ASIGNATURA: <b style="mso-bidi-font-weight:normal">CULTURA FÍSICA</b> APROBADA POR EL SEÑOR <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                </span></b></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span></b>CON C.C. NO. <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula0" runat="server" EnableViewState="true" Height="16px" placeholder="Ejm:1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span></span>&nbsp;</b>EN LA CARRERA DE <span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif"><asp:TextBox ID="txtCarrera3" runat="server" CssClass="noBorder" Height="16px" placeholder="Ejm:Ing Sistemas Comp E Informáticos" Width="100%"></asp:TextBox>
                </span></span></span>&nbsp;DE LA </span><span style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC">FACULTAD DE <span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif"><asp:TextBox ID="txtFacultad" runat="server" CssClass="noBorder" Height="16px" placeholder="Nombre de Facultad" Width="100%"></asp:TextBox>
                </span></span></span>&nbsp;</span><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">DE LA UNIVERSIDAD TÉCNICA DE AMBATO, PARA LA CARRERA DE <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlCarreras2" runat="server" CssClass="noBorder" Width="100%">
                </asp:DropDownList>
                </span></span></span></b></span></span></span></span></span></em></span></span>, EN BASE A LA RESOLUCIÓN 0857-CU-P-2019 QUE INDICA: <i style="mso-bidi-font-style:normal">“AUTORIZAR A LOS ESTUDIANTES DE LA UNIVERSIDAD TÉCNICA DE AMBATO QUE SE CAMBIAN DE CARRERA O DE PLAN DE ESTUDIO Y QUE HAYAN RECIBIDO Y APROBADO LA ASIGNATURA DE CULTURA FÍSICA, EDUCACIÓN FÍSICA, EXPRESIÓN CORPORAL U OTRAS DENOMINACIONES, SE LES RECONOZCA LAS HORAS Y/O CRÉDITOS DE ESA ASIGNATURA EN LA NUEVA CARRERA O PROGRAMA INDEPENDIENTEMENTE DE LA DENOMINACIÓN” DE CONFORMIDAD CON EL ARTÍCULO 98 DEL REGLAMENTO DE RÉGIMEN ACADÉMICO DEL CES.<o:p></o:p></i></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <b style="mso-bidi-font-weight:
normal"><span lang="ES-TRAD" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></b></p>
            <p class="MsoNormal" style="text-align:justify;tab-stops:7.1pt 21.3pt">
                <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:9.0pt;
mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></b></p>
            <p class="MsoNormal" style="text-align:justify;tab-stops:7.1pt 21.3pt">
                <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:9.0pt;
mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">AUTORIZAR, </span></b><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">A LA </span><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">SECRETARIA DE LA CARRERA REALICE EL TRÁMITE PERTINENTE PARA QUE</span><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> SEA INGRESADO EL RECONOCIMIENTO DEL SEÑOR <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtNombreEstu3" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                </span></b></span>&nbsp;</b>CON C.C. NO. <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula1" runat="server" EnableViewState="true" Height="16px" placeholder="Ejm:1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span></span>&nbsp;</b>EN EL SISTEMA ESTABLECIDO PARA EL EFECTO.<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;tab-stops:7.1pt 21.3pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;tab-stops:7.1pt 21.3pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <span style="font-size:9.0pt;
mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES-EC"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;mso-pagination:none">
                <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:9.0pt;
mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">INFORMAR, </span></b><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">QUE LOS DOCUMENTOS ORIGINALES CITADOS EN EL PÁRRAFO QUE ANTECEDE REPOSAN EN LA COORDINACIÓN DE LA </span><span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif">CARRERA DE <span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlCarreras0" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span></span></span></b></span></span></span></span></span></em></span> </span></p>
            <p class="MsoNormal" style="text-align:justify;mso-pagination:none">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <span lang="ES-TRAD" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif">Atentamente,<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyText" style="text-indent:.05pt">
                <span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtPresidente1" runat="server" CssClass="noBorder" placeholder="Ejm: Ing Julio Cuji "></asp:TextBox>
                </span></span>
            </p>
            <p class="MsoHeader" style="text-align:justify;text-indent:.05pt">
                <span lang="ES" style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">PRESIDENT</span><span style="font-size:9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">E/A</span></p>
            <p class="MsoNormal" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt;line-height:115%;tab-stops:21.3pt">
                <span lang="ES" style="font-size:7.0pt;
mso-bidi-font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">Cc:<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang="ES" style="font-size: 9.0pt; mso-bidi-font-size: 8.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtPresidente0" runat="server" CssClass="noBorder" placeholder="Ejm: Ing Julio Cuji "></asp:TextBox>
                </span></span>– Presidente de Consejo Académico de Facultad<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt;line-height:115%;tab-stops:21.3pt">
                <span lang="ES" style="font-size:7.0pt;
mso-bidi-font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Estudiante<o:p></o:p></span></p>

        </div>
        <p class="MsoNormal" style="text-align: justify; text-indent: -18.0pt; line-height: 115%; tab-stops: 21.3pt; margin-left: 18.0pt">
                  &nbsp;
                  </ContentTemplate>
        </asp:UpdatePanel>
                   <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                      
                      Width="172px" OnClick="Button4_Click" />

                  <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
                   </p>
        <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="280px" Width="843px">
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"
                OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="X" />
            <asp:UpdatePanel ID="upEstudiante" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
                <ContentTemplate>
                 
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
                    <asp:GridView ID="GridView1" runat="server" 
                        AllowPaging="True" 
                        OnPageIndexChanging="GridView1_PageIndexChanging" 
                        PageSize="3" Width="763px" 
                        BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" 
                        BorderWidth="1px" 
                        CellPadding="3" 
                        CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="botonSeleccionar" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" />
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
    </form>
</body>
</html>
