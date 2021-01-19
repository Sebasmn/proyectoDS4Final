<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homologacion.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.CAF.Homologacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Homologación de Materias</title>
    <link rel="stylesheet" href="../../Estilos/estilos.css"  type="text/css" />
    <style type="text/css">


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante"   CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <br />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
        <asp:Label ID="Label2" runat="server" Text="Consejo Destino:"></asp:Label>
            <asp:TextBox ID="txtCodigoConsejoDestino" runat="server"></asp:TextBox>
        </asp:Panel>
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>
        <div id="documento">
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
normal">
                  <asp:TextBox ID="txtFecha" runat="server" CssClass="noBorder" OnTextChanged="txtFecha_TextChanged" placeholder="Ambato,15 de Enero del 2021"></asp:TextBox>
              </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">Resolución
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"> <span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                  </span></span></span></span></span></span>
                </span>
                -P-CD-FISEI-UTA-<span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                  </span></span></span></span>
                </span>
                </span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Ingeniero, Mg.</span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez, Mg." Width="233px"></asp:TextBox>
                      </span>
                  </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">COORDINADOR DE LAS CARRERAS DE </span></b>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                &nbsp;</p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                <asp:DropDownList ID="txtCarrerasCoorD" runat="server" CssClass="noBorder" Font-Bold="True" Font-Size="Smaller" Width="100%">
                </asp:DropDownList>
                </span></b>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                &nbsp;</p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;tab-stops:440.25pt">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Presente<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">De mi consideración<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;line-height:normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
normal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Consejo Directivo de la Facultad de </span><span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES">Ingeniería en Sistemas, Electrónica e Industrial</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, en Sesión
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal">
                                  <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span> </span></em>&nbsp;del
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal">
                                  <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span> </span></em><span style="mso-spacerun:yes">&nbsp;
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></b></span></span></span></em></span> de&nbsp;
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"> <span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></b></span></span></span></em> del
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"> <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAnio1" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                  </span></span></span></b></span></span> </span></em>, conoce el Acuerdo
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"> <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" placeholder="UTA-UVS-FISEI-2020-0073-M"></asp:TextBox>
                                  </span></span></span></b></span></span> </span></em>, de fecha&nbsp;
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span> </span></em>&nbsp;<span style="mso-spacerun:yes">&nbsp;
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum0" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></span></b></span></span></em></span>, <span style="mso-spacerun:yes">&nbsp;<em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                  </span></span></span></b></span></span> </span></em></span>, <span style="mso-spacerun:yes">&nbsp;</span>suscrito por <span style="mso-spacerun:yes">&nbsp;</span>el/la
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"> <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtPresiConsejo" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán" Width="100%"></asp:TextBox>
                                  </span></span></span></span></b></span></span> </span></em>&nbsp;, Presidente de Consejo Académico de Facultad, quien remite con fines de aprobación el informe de homologación de las asignaturas aprobadas en la Carrera de&nbsp; <span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlCarreras" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b>
                                  </span>
                                  </span> </span> </span></span></em></span>&nbsp;por el/la señor/ita&nbsp; <span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                                  </span></span></b></span></span></span> </b> </span></span></em></span>
                <b style="mso-bidi-font-weight:normal">&nbsp;</b>con C.C. No.&nbsp; <span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:
10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"> <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtCedula" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px"></asp:TextBox>
                                  </span></span></span></span> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  &nbsp;</span></span></span></span></span></b></span></span></span></em></span><b style="mso-bidi-font-weight:normal">, </b>para la Carrera de <span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlCarreras0" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b>
                                  </span>
                                  </span> </span> </span></span></em></span>
                . Al respecto, RESUELVE:</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><o:p></o:p></span></p>
            <p class="BodyText21">
                <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-TRAD"><o:p>&nbsp;</o:p></span></p>
            <p class="BodyText21">
                <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-TRAD"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <b style="mso-bidi-font-weight:
normal"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">APROBAR,</span></b><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> EL INFORME DE HOMOLOGACIÓN DE LAS ASIGNATURAS APROBADAS EN LA CARRERA DE <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlCarreras1" runat="server" CssClass="noBorder" OnSelectedIndexChanged="ddlCarreras1_SelectedIndexChanged">
                                  </asp:DropDownList>
                                  </span></span></span></b>
                                  </span>
                                  </span> </span> </span></span></em></span>
                </span>&nbsp;POR EL/LA SEÑOR/ITA <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                                  </span></span></b></span></span></span> </b> </span></span></em></span>
                </span><b style="mso-bidi-font-weight:normal">&nbsp;</b>CON C.C. NO. <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:
10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"> <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtCedula0" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px"></asp:TextBox>
                                  </span></span></span></span> </span></b></span> </span></span></em></span>
                </span><b style="mso-bidi-font-weight:normal">, </b>PARA LA CARRERA DE <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlCarreras2" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span>
                                  </span>
                                  </b>
                                  </span> </span> </span></span></em></span>
                </span></span><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></span></span></b></span></span></span></span></em></span></span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, CONFORME AL SIGUIENTE DETALLE:<o:p></o:p></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">AUTORIZAR, </span></b><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">A LA </span><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">SECRETARIA DE LA CARRERA EL INGRESO DE LAS NOTAS APROBADAS POR </span><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">EL/LA SEÑOR/ITA <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtNombreEstu3" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                                  </span></span></b></span></span></span> </b> </span></span></em></span>
                </span></span><b style="mso-bidi-font-weight:normal">&nbsp;</b>CON C.C. NO. <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:
10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"> <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtCedula1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px"></asp:TextBox>
                                  </span></span></span> </span></span></b></span> </span></span></em></span>
                </span><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:
10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"> <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  &nbsp;</span></span></span></span></span></b></span></span></span></em></span></span><b style="mso-bidi-font-weight:normal">, </b>Y REALICE EL TRÁMITE PERTINENTE.</span><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><o:p></o:p></span></p>
            <p class="MsoNoSpacing">
                <span style="font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing">
                <span style="font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR, </span></b><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">LOS DOCUMENTOS ORIGINALES CITADOS ANTERIORMENTE A LA COORDINACIÓN DE LAS </span><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif">CARRERAS DE </span><span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">INGENIERÍA EN ELECTRÓNICA Y COMUNICACIONES Y TELECOMUNICACIONES PARA SU CORRESPONDIENTE ARCHIVO.<o:p></o:p></span></p>
            <p class="MsoNoSpacing">
                <span lang="ES-TRAD" style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing">
                <span lang="ES-TRAD" style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif">Atentamente,<o:p></o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="auto-style1">
                <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                </p>
            <p class="auto-style2" style="tab-stops: center 212.6pt right 425.2pt;">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">PRESIDENTA<o:p></o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:
bold">Cc:<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">
                        <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="mso-spacerun:yes"> <em><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresiConsejo0" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán"></asp:TextBox>
                        </span></span></span></span></b></span></span></span></em></span></span>
                    </span>
                </span></span><span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">– Presidente de Consejo Académico de Facultad<o:p></o:p></span></p>
            <br />
            <span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold">Estudiante</span><p class="MsoNoSpacing" style="text-align:justify">
                <o:p></o:p>
            </p>
        </div>
             </ContentTemplate>
        </asp:UpdatePanel>


           <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                      Width="172px" OnClick="Button4_Click" />
        <asp:Label ID="labelEstado" runat="server"></asp:Label>
         <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="221px" Width="849px">
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"
                OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="X" OnClick="Button3_Click" />
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
                    <asp:Label ID="Label1" runat="server" Text="Correcto"></asp:Label>
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
