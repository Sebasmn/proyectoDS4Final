<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActualizacionConocimientos.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.CAF.ActualizacionConocimientos" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Actualización Conocimientos</title>
       <link rel="stylesheet" href="../../Estilos/estilos.css"  type="text/css" />
    <style type="text/css">
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante"   CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
        </asp:Panel>
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>
          <div id="documento">

              <p class="MsoNormal" style="text-align: justify;">
                  <asp:TextBox ID="txtFecha" runat="server" CssClass="noBorder" OnTextChanged="txtFecha_TextChanged" placeholder="Ambato,15 de Enero del 2021"></asp:TextBox>
              </p>
              <p class="MsoNormal" style="text-align:justify">
                  <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">Resolución </span><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">&nbsp;<span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                  </span></span></span></span></span></span><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">-P-CD-FISEI-UTA-<span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                  </span></span></span></span>
              </p>
              <p class="MsoNormal" style="text-align:justify">
                  &nbsp;</p>
              <p class="MsoNormal" style="text-align:justify">
                  <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Ingeniero/a, Mg.</span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1"></span><p class="MsoNormal" style="text-align:justify">
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez, Mg." Width="233px"></asp:TextBox>
                      </span>
                  </p>
                  <p class="MsoNormal" style="text-align:justify">
                      <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">COORDINADOR DE</span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"> LAS CARRERAS DE </span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">&nbsp;</span></b></p>
                  <p class="MsoNormal" style="text-align:justify">
                      <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                      <asp:DropDownList ID="txtCarrerasCoorD" runat="server" CssClass="noBorder" Font-Bold="True" Font-Size="Smaller" Width="100%">
                      </asp:DropDownList>
                      </span></b>
                  </p>
                  <p class="MsoNormal">
                      <span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL<p class="MsoNormal">
                          <span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                          <p>
                  &nbsp;</p>
                          </span>
                          <p>
                          </p>
                      </p>
                      </span>
                      <p class="MsoNormal" style="text-align:justify;tab-stops:440.25pt">
                          <span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Presente<span style="mso-spacerun:yes">&nbsp; </span></span>
                          <p class="MsoNormal" style="text-align:justify">
                              <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif">De mi consideración:<p>
                              </p>
                              </span>
                              <p class="MsoNormal" style="text-align:justify">
                                  <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span>&nbsp;del día <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;&nbsp;</span></span><span style="mso-spacerun:yes"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlDiaNum" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span></span><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;de </span><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;<span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;de <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAnio1" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                  </span></span></span></b></span>, conoce el acuerdo <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" placeholder="UTA-UVS-FISEI-2020-0073-M"></asp:TextBox>
                                  </span></span></span></b></span>, de fecha <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></span></b></span><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="mso-spacerun:yes">&nbsp;<span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum0" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span>&nbsp;, <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                  </span></span></span></b></span></span>, suscrito por <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtPresiConsejo" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán"></asp:TextBox>
                                  </span></span></span></span></b></span>&nbsp;, Presidente de Consejo Académico de Facultad, quien sugiere se apruebe la solicitud de actualización de conocimientos presentada por el/la señor/ita<b style="mso-bidi-font-weight:
normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                  </span></span></b></span></b></span></b>, con <b style="mso-bidi-font-weight:normal">C.C. <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtCedula" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px"></asp:TextBox>
                                  </span></span></span></b></span></b></span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, ex estudiante de la Carrera de <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlExCarreras" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></span></b></span>. Al respecto, <b style="mso-bidi-font-weight:normal">RESUELVE:</b><p class="MsoNormal">
                                      <span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                      <p>&nbsp;</p>
                                      </span>
                                      <p>
                                      </p>
                                      <p class="MsoNormal">
                                          <span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                          <p>
                                              &nbsp;</p>
                                          </span>
                                          <p>
                                          </p>
                                          <br />
                                          <p>
                                          </p>
                                          <p>
                                          </p>
                                      </p>
                                  </p>
                                  </span>
                                  <p class="MsoNormal" style="text-align:justify">
                                      <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">APROBAR</span></b><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, LA SOLICITUD DE ACTUALIZACIÓN DE CONOCIMIENTOS PRESENTADA POR EL/LA SEÑOR/ITA<b style="mso-bidi-font-weight:normal"> <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                      </span></span></b></span></span></b></span></b>, CON <b style="mso-bidi-font-weight:normal">C.C. <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula0" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px"></asp:TextBox>
                                      </span></span></span></span></b></span></b></span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, EX ESTUDIANTE DE LA CARRERA DE <span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlExCarreras0" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span></span></span></b></span></span>, PARA EL PERÍODO ACADÉMICO <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtPeriodo" runat="server" CssClass="noBorder" placeholder="junio-enero/2020"></asp:TextBox>
                                      </span></span></span></span></b></span><b style="mso-bidi-font-weight:normal">, </b>EN BASE A LO DISPUESTO EN LA RESOLUCIÓN <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtResolucion" runat="server" CssClass="noBorder" placeholder="UTA-UVS-FISEI-2020-0073-M"></asp:TextBox>
                                      </span></span></span></b></span></span>, DE FECHA</span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes1" runat="server" CssClass="noBorder" OnSelectedIndexChanged="ddlMes1_SelectedIndexChanged">
                                      </asp:DropDownList>
                                      </span></span></span></b></span></span></span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">&nbsp;<span style="mso-spacerun:yes">&nbsp;</span></span><span style="mso-spacerun:yes"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="mso-spacerun:yes"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlDiaNum1" runat="server" CssClass="noBorder" OnSelectedIndexChanged="ddlDiaNum1_SelectedIndexChanged">
                                      </asp:DropDownList>
                                      </span></span></span></b></span></span></span></span></span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, <span style="mso-spacerun:yes">&nbsp;<span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio3" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                      </span></span></span></b></span></span></span>, EMITIDA POR CONSEJO ACADÉMICO UNIVERSITARIO DE LA UNIVERSIDAD TÉCNICA DE AMBATO,<span style="mso-spacerun:yes">&nbsp; </span>Y AL MEMORANDO</span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtMemo" runat="server" CssClass="noBorder" placeholder="UTA-UVS-FISEI-2020-0073-M"></asp:TextBox>
                                      </span></span></span></b></span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></span></b></span></span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, DE FECHA <span style="mso-spacerun:yes"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlDiaNum2" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span></span></b></span></span></span>&nbsp;DE <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes2" runat="server" CssClass="noBorder" OnSelectedIndexChanged="ddlMes1_SelectedIndexChanged">
                                      </asp:DropDownList>
                                      </span></span></span></b></span></span>&nbsp;DE <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAnio4" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                      </span></span></span></b></span></span>. SUSCRITO POR <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtSuscriptor" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Dr.  Elena Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                      </span></span></b></span></span></span></b></span><b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">&nbsp;</span></span></span></span></b></span></span></b><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, <span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCargoSuscriptor" runat="server" CssClass="noBorder" EnableViewState="true" Width="100%"  placeholder="ANALISTA JURÍDICA DE LA DIRECCIÓN ACADÉMICA DE LA UTA" ToolTip="Busque un estudiante"></asp:TextBox>
                                      </span></span></b></span></span></b></span>.<b style="mso-bidi-font-weight:normal"></b></span><p class="MsoNormal">
                                          <span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                          <p>&nbsp;</p>
                                          </span>
                                          <p>
                                          </p>
                                          <p class="MsoNormal">
                                              <span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                              <p>
                                                  &nbsp;</p>
                                              </span>
                                              <p>
                                              </p>
                                              <p class="MsoNormal" style="text-align:justify">
                                                  &nbsp;<p class="MsoNormal" style="text-align:justify">
                                                      <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">INDICAR</span></b><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, AL MENCIONADO ESTUDIANTE QUE EN EL PERÍODO ACADÉMICO SEÑALADO DEBERÁ <b>APROBAR LA ACTUALIZACIÓN DE CONOCIMIENTOS Y CULMINAR Y APROBAR EL TRABAJO DE TITULACIÓN.
                                                      <p>
                                                      </p>
                                                      </b></span>
                                                      <p class="MsoNormal" style="text-align:justify;mso-pagination:none">
                                                          <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">AUTORIZAR</span></b><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">, A LA SECRETARIA DE LAS CARRERAS DE </span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE, </span><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">EMITA LA ORDEN Y VERIFIQUE EL PAGO DE CONFORMIDAD AL ARANCEL UNIVERSITARIO VIGENTE.<p>
                                                          </p>
                                                          </span>
                                                          <p style="margin:0cm;text-align:justify;line-height:115%">
                                                              <b><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">SOLICITAR.</span></b><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> A <b><span style="mso-spacerun:yes">&nbsp;</span></b>LA SECRETARIA DE CARRERA QUE UNA VEZ SUPERADA LA EMERGENCIA SANITARIA POR COVID 19, VERIFIQUE QUE LOS DATOS Y DOCUMENTACIÓN CONSIGNADA PARA EL PRESENTE TRÁMITE ESTÉN COMPLETOS Y CUMPLA CON TODOS LOS REQUISITOS EXIGIDOS, CASO CONTRARIO INFORMARÁ EL PARTICULAR PARA LA APLICACIÓN DE LO DISPUESTO EN LA </span><span lang="ES-TRAD" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:
ES-TRAD">RESOLUCIÓN: CAU-P-229-2020, DE FECHA ABRIL 15, 2020, SUSCRITA POR LA DRA. MARY CRUZ, PRESIDENTA DE CONSEJO ACADÉMICO UNIVERSITARIO DE LA UTA, A TRAVÉS DE LA CUAL INDICA: “<i>AUTORIZAR</i> <i>A LAS DIFERENTES UNIDADES ACADÉMICAS, QUE DURANTE EL ESTADO DE EMERGENCIA, RECEPTEN LOS TRÁMITES ACADÉMICOS ENVIADOS POR MEDIOS ELECTRÓNICOS CON SUS RESPECTIVOS DOCUMENTOS DE RESPALDO; EN CASO DE QUE SE REQUIERA REGISTROS O DOCUMENTACIÓN QUE REPOSA EN LAS SECRETARIAS, TERMINADA LA EMERGENCIA, SE VERIFICARÁ LA VERACIDAD DE LOS MISMOS, SIN PERJUICIO DE LA NULIDAD DEL TRÁMITE DE NO PODER COMPROBAR EL CUMPLIMIENTO DE LOS REQUISITOS O VALIDEZ DEL EXPEDIENTE ENVIADO”.<p>
                                                              </p>
                                                              </i></span>
                                                              <p class="MsoNormal" style="text-align:justify">
                                                                  <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">REMITIR, </span></b><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">LOS DOCUMENTOS ORIGINALES CITADOS ANTERIORMENTE A LA COORDINACIÓN DE LAS CARRERAS DE INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE PARA SU CORRESPONDIENTE ARCHIVO.<p>
                                                                  </p>
                                                                  </span>
                                                                  <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm">
                                                                      <span style="font-size:10.0pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Atentamente,<p>
                                                                      </p>
                                                                      </span>
                                                                      <p class="MsoBodyText" style="text-indent:.05pt">
                                                                          <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                                          <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                                                                          </span></span></span></b></span>
                                                                      </p>
                                                                      <p class="MsoHeader" style="text-align:justify;text-indent:.05pt">
                                                                          <span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">PRESIDENTE/A</span><p class="MsoNormal">
                                                                              <span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">c.c. </span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                                              <asp:TextBox ID="txtPresiConsejo1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                                                                              </span></span></span></b></span><span lang="ES" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">- Presidente de Consejo Académico de Facultad</span><p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm">
                                                                                  <span style="font-size:9.0pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Estudiante </span>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                              <p>
                                                                              </p>
                                                                          </p>
                                                                      </p>
                                                                  </p>
                                                              </p>
                                                          </p>
                                                      </p>
                                                  </p>
                                              </p>
                                          </p>
                                      </p>
                                  </p>
                              </p>
                          </p>
                      </p>
                  </p>
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
         <asp:Panel ID="panelModalBusquedaEst" runat="server" >
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"
                OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="Cancelar" OnClick="Button3_Click" />
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
