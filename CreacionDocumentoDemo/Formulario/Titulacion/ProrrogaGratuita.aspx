<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProrrogaGratuita.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Titulacion.ProrrogaGratuita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prorroga Gratuita</title>
    <link rel="stylesheet" href="../../Estilos/estilos.css"  type="text/css" />
    
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

            <p class="MsoNormal">
                  <asp:TextBox ID="txtFecha" runat="server" CssClass="auto-style1" Height="16px" placeholder="Ambato,15 de Enero del 2021" Width="193px"></asp:TextBox>
              </p>
            <p class="MsoNormal">
                <span style="font-size:8.0pt; line-height:115%;font-family:&quot;Cambria&quot;,serif;
color:black;mso-themecolor:text1" lang="ES-EC"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:8.0pt; line-height:115%;font-family:&quot;Cambria&quot;,serif;
color:black;mso-themecolor:text1" lang="ES-EC">Resolución <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                </span></span></span></span></span></span></span></span></span>-P-CD-FISEI-UTA-<span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                </span></span></span></span></span></span></span>
                </span>
            </p>
            <p class="MsoNormal">
                <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;color:black;mso-themecolor:text1">
                <p>&nbsp;</p>
                </span>
                <p>
                </p>
                <p class="MsoNormal">
                    <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Ingeniero,</span><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"> Mg.<p>
                    </p>
                    </span>
                    <p>
                    </p>
                    <p class="MsoNormal">
                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez, Mg." Width="233px"></asp:TextBox>
                        </span>
                    </p>
                    <p class="MsoNormal">
                        <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">COORDINADOR DE LAS CARRERAS DE </span></b><b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlCarrerasCoor" runat="server" CssClass="noBorder" Font-Bold="True" Font-Size="Smaller" Width="100%">
                        </asp:DropDownList>
                        </span></b>
                    </p>
                    <p class="MsoNormal">
                        <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL<p>
                        </p>
                        </span>
                        <p>
                        </p>
                        <p class="MsoNormal">
                            <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">Presente.-<p>
                            </p>
                            </span>
                            <p>
                            </p>
                            <p class="MsoNormal">
                                <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">
                                <p>
                                    &nbsp;</p>
                                </span>
                                <p>
                                </p>
                                <p class="MsoNormal">
                                    <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">
                                    <p>
                                        &nbsp;</p>
                                    </span>
                                    <p>
                                    </p>
                                    <p class="MsoNormal">
                                        <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">De mi consideración:<p>
                                        </p>
                                        </span>
                                        <p>
                                        </p>
                                        <p class="MsoNormal">
                                            <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">
                                            <p>
                                                &nbsp;</p>
                                            </span>
                                            <p>
                                            </p>
                                            <p class="MsoNormal">
                                                <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión </span><span style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                                                </asp:DropDownList>
                                                </span></span></span></b></span></span></span></em></span></span></span><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">&nbsp;del día <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                                                </asp:DropDownList>
                                                </span></span></span></b></span></span></span></em></span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;<span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum" runat="server" CssClass="noBorder">
                                                </asp:DropDownList>
                                                </span></span></span></b></span></span></span></em></span></span></span></span>&nbsp;de <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                                                </asp:DropDownList>
                                                </span></span></span></b></span></span></span></em></span></span>&nbsp;del <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:TextBox ID="txtAnio1" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                                </span></span></span></b></span></span></span></em></span></span>, conoce el Acuerdo <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" placeholder="UTA-UVS-FISEI-2020-0073-M"></asp:TextBox>
                                                </span></span></span></b></span></span></span></em></span></span>, de fecha <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                                                </asp:DropDownList>
                                                </span></span></span></b></span></span></span></em></span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;<span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum0" runat="server" CssClass="noBorder">
                                                </asp:DropDownList>
                                                </span></span></span></b></span></span></span></em></span></span></span></span>, <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                                </span></span></span></span></span></span></span>, suscrito por el <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:TextBox ID="txtPresiConsejo" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán"></asp:TextBox>
                                                </span></span></span></span></b></span></span></span></em></span></span>, Presidente de la Unidad de Titulación-FISEI, quien sugiere se apruebe la solicitud de prórroga gratuita presentada por el señor/ita <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                                </span></span></b></span></span></span></b></span></span></em></span></span></span>, </b><span style="mso-bidi-font-weight:bold">estudiante de la Carrera de</span><b style="mso-bidi-font-weight:normal"> <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:10.0pt; font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; line-height: 115%; color: black; mso-themecolor: text1;"><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:DropDownList ID="ddlCarreras" runat="server" CssClass="noBorder">
                                                </asp:DropDownList>
                                                </span></span></span></span></span></span></em></span></span></span></b></b><span style="mso-bidi-font-weight:
bold">.</span> Al respecto RESUELVE:<p>
                                                </p>
                                                </span>
                                                <p>
                                                </p>
                                                <p class="MsoNormal">
                                                    <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                                                    <p>
                                                        &nbsp;</p>
                                                    </span>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal">
                                                        <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">APROBAR</span></b><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">, LA<b style="mso-bidi-font-weight:
normal"> </b>SOLICITUD DE <b style="mso-bidi-font-weight:normal">PRÓRROGA GRATUITA </b>PARA EL PERÍODO ACADÉMICO:<b style="mso-bidi-font-weight:normal"> <span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"><b style="mso-bidi-font-weight:normal"><em><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:TextBox ID="txtPeriodo" runat="server" CssClass="auto-style1" Height="16px" placeholder="SEPTIEMBRE/2019-FEBRERO/2020" Width="205px"></asp:TextBox>
                                                        </span></span></span></span></span></span></span></span></span></span></span></em></b></span></b>&nbsp;PRESENTADA POR EL/LA SEÑOR/ITA<b style="mso-bidi-font-weight:normal"> <span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"><b style="mso-bidi-font-weight:normal"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                                        </span></span></b></span></span></span></span></em></span></span></span></b></span>,<span style="mso-spacerun:yes">&nbsp; </span></b>ESTUDIANTE DE DÉCIMO SEMESTRE EN EL PERÍODO ACADÉMICO: <span style="mso-spacerun:yes">&nbsp;<span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1"><b style="mso-bidi-font-weight:normal"><span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"><em><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtPeriodo0" runat="server" CssClass="auto-style1" Height="16px" placeholder="SEPTIEMBRE/2019-FEBRERO/2020" Width="216px"></asp:TextBox>
                                                        </span></span></span></span></span></span></span></span></span></span></span></em></span></b></span></span>&nbsp;DE LA CARRERA DE <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:10.0pt; font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; line-height: 115%; color: black; mso-themecolor: text1;"><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:DropDownList ID="ddlCarreras0" runat="server" CssClass="noBorder">
                                                        </asp:DropDownList>
                                                        </span></span></span></span></span></span></em></span></span></span></b></span>, PARA QUE CONCLUYA Y APRUEBE EL TRABAJO DE TITULACIÓN: <b style="mso-bidi-font-weight:
normal">“<span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1"><b style="mso-bidi-font-weight:normal"><span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtTema" runat="server" CssClass="auto-style1" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Ingrese tema" Width="505px"></asp:TextBox>
                                                        </span></span></b></span></span></span></span></em></span></span></span></span></b></span>”</b>, </span><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">EN BASE A LO DISPUESTO EN LA RESOLUCIÓN <span lang="ES-EC" style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                                        <asp:TextBox ID="txtResolucion" runat="server" CssClass="noBorder" Height="16px" placeholder="CAU-P-080-2020" Width="233px"></asp:TextBox>
                                                        </span></span></span></span>, DE FECHA <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:DropDownList ID="ddlMes1" runat="server" CssClass="noBorder">
                                                        </asp:DropDownList>
                                                        </span></span></span></b></span></span></span></em></span></span></span></span><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></span></span></b></span></span></span></em></span></span><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum1" runat="server" CssClass="noBorder">
                                                        </asp:DropDownList>
                                                        </span></span></span></b></span></span></span></em></span></span></span></span></span><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">,</span><span style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> </span><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:TextBox ID="txtAnio3" runat="server" CssClass="auto-style1" Height="17px" placeholder="2020" Width="74px"></asp:TextBox>
                                                        </span></span></span></b></span></span></span></em></span></span></span>, EMITIDA POR CONSEJO ACADÉMICO UNIVERSITARIO DE LA UNIVERSIDAD TÉCNICA DE AMBATO,<span style="mso-spacerun:yes">&nbsp; </span>Y AL MEMORANDO <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1"><b style="mso-bidi-font-weight:normal"><span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:TextBox ID="txtMemorando" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="UTA-DAC-2020-0084-M" Width="223px"></asp:TextBox>
                                                        </span></span></b></span></span></span></span></em></span></span></span></span></b></span>, DE FECHA <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:DropDownList ID="ddlDiaNum3" runat="server" CssClass="noBorder">
                                                        </asp:DropDownList>
                                                        </span></span></span></b></span></span></span></em></span></span></span></span>&nbsp;DE <span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:DropDownList ID="ddlMes3" runat="server" CssClass="noBorder">
                                                        </asp:DropDownList>
                                                        </span></span></span></b></span></span></span></em></span></span></span></span>&nbsp;DE <span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                        <asp:TextBox ID="txtAnio5" runat="server" CssClass="auto-style1" Height="17px" placeholder="2020" Width="74px"></asp:TextBox>
                                                        </span></span></span></b></span></span></span></em></span></span></span></span>. SUSCRITO POR LA AB. FABIOLA COPO, ANALISTA JURÍDICA DE LA DIRECCIÓN ACADÉMICA DE LA UNIVERSIDAD TÉCNICA DE AMBATO.<p>
                                                        </p>
                                                        </span>
                                                        <p>
                                                        </p>
                                                        <p class="MsoNormal">
                                                            <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                            <p>
                                                                &nbsp;</p>
                                                            </span></b>
                                                            <p>
                                                            </p>
                                                            <p class="MsoNormal">
                                                                <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">INDICAR</span></b><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">, A EL/LA MENCIONADO/A ESTUDIANTE QUE EN EL PERÍODO ACADÉMICO SEÑALADO DEBERÁ CONCLUIR Y APROBAR LA OPCIÓN DE TITULACIÓN ESCOGIDA.<p>
                                                                </p>
                                                                </span>
                                                                <p>
                                                                </p>
                                                                <p class="MsoNormal">
                                                                    <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">
                                                                    <p>
                                                                        &nbsp;</p>
                                                                    </span>
                                                                    <p>
                                                                    </p>
                                                                    <p class="MsoNoSpacing">
                                                                        <b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-size:8.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">COMUNICAR</span></b><span lang="ES-TRAD" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1">, AL INGENIERO <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                                                        <asp:TextBox ID="txtTutor" runat="server" CssClass="noBorder" Height="16px" placeholder="ÉDISON ÁLVAREZ, TUTOR " Width="233px"></asp:TextBox>
                                                                        </span></span></span></b></span> <b style="mso-bidi-font-weight:
normal">, TUTOR</b> Y AL ESTUDIANTE <b style="mso-bidi-font-weight:
normal"><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                                        <asp:TextBox ID="txtNombreEstu3" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                                                        </span></span></b></span></span></span></span></span></em></span></span></span></b></span></b>, QUE DEBEN ENTREGAR MENSUALMENTE LOS INFORMES EN LA SECRETARÍA CORRESPONDIENTE HASTA CUANDO CONCLUYA EL TRABAJO DE GRADO.<p>
                                                                        </p>
                                                                        </span>
                                                                        <p>
                                                                        </p>
                                                                        <p>
                                                                            <b><span style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                                                                            <p>
                                                                                &nbsp;</p>
                                                                            </span></b>
                                                                            <p>
                                                                            </p>
                                                                            <p>
                                                                                <b><span style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">SOLICITAR.</span></b><span style="font-size:8.0pt;line-height:115%;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> A <b><span style="mso-spacerun:yes">&nbsp;</span></b>LA SECRETARIA DE LA UNIDAD DE TITULACIÓN QUE UNA VEZ SUPERADA LA EMERGENCIA SANITARIA POR COVID 19, VERIFIQUE QUE LOS DATOS Y DOCUMENTACIÓN CONSIGNADA PARA EL PRESENTE TRÁMITE ESTÉN COMPLETOS Y CUMPLA CON TODOS LOS REQUISITOS EXIGIDOS, CASO CONTRARIO INFORMARÁ EL PARTICULAR PARA LA APLICACIÓN DE LO DISPUESTO EN LA </span><span lang="ES-TRAD" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:ES-TRAD">RESOLUCIÓN: <span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                                                                <asp:TextBox ID="txtResolucion0" runat="server" CssClass="noBorder" Height="16px" placeholder="CAU-P-080-2020" Width="233px"></asp:TextBox>
                                                                                </span></span></span></span></span>, DE FECHA <span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                                                <asp:DropDownList ID="ddlMes2" runat="server" CssClass="noBorder">
                                                                                </asp:DropDownList>
                                                                                </span></span></span></b></span></span></span></em></span></span></span></span>&nbsp;<span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum2" runat="server" CssClass="noBorder">
                                                                                </asp:DropDownList>
                                                                                </span></span></span></b></span></span></span></em></span></span></span></span>, <span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                                                <asp:TextBox ID="txtAnio4" runat="server" CssClass="auto-style1" Height="17px" placeholder="2020" Width="74px"></asp:TextBox>
                                                                                </span></span></span></b></span></span></span></em></span></span></span></span>, SUSCRITA POR LA DRA. MARY CRUZ, PRESIDENTA DE CONSEJO ACADÉMICO UNIVERSITARIO DE LA UTA, A TRAVÉS DE LA CUAL INDICA: “<i>AUTORIZAR</i> <i>A LAS DIFERENTES UNIDADES ACADÉMICAS, QUE DURANTE EL ESTADO DE EMERGENCIA, RECEPTEN LOS TRÁMITES ACADÉMICOS ENVIADOS POR MEDIOS ELECTRÓNICOS CON SUS RESPECTIVOS DOCUMENTOS DE RESPALDO; EN CASO DE QUE SE REQUIERA REGISTROS O DOCUMENTACIÓN QUE REPOSA EN LAS SECRETARIAS, TERMINADA LA EMERGENCIA, SE VERIFICARÁ LA VERACIDAD DE LOS MISMOS, SIN PERJUICIO DE LA NULIDAD DEL TRÁMITE DE NO PODER COMPROBAR EL CUMPLIMIENTO DE LOS REQUISITOS O VALIDEZ DEL EXPEDIENTE ENVIADO”.<p>
                                                                                </p>
                                                                                </i></span>
                                                                                <p>
                                                                                </p>
                                                                                <p class="MsoNoSpacing">
                                                                                    <span lang="ES-TRAD" style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                                                                                    <p>
                                                                                        &nbsp;</p>
                                                                                    </span>
                                                                                    <p>
                                                                                    </p>
                                                                                    <p class="MsoNormal">
                                                                                        <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:
8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR, </span></b><span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">LOS DOCUMENTOS ORIGINALES CITADOS EN EL PÁRRAFO QUE ANTECEDE A LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN PARA SU CORRESPONDIENTE ARCHIVO.<p>
                                                                                        </p>
                                                                                        </span>
                                                                                        <p>
                                                                                        </p>
                                                                                        <p class="MsoNormal">
                                                                                            <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                                                            <p>
                                                                                                &nbsp;</p>
                                                                                            </span>
                                                                                            <p>
                                                                                            </p>
                                                                                            <p class="MsoBodyTextFirstIndent2">
                                                                                                <span style="font-size:8.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">Atentamente,<p>
                                                                                                </p>
                                                                                                </span>
                                                                                                <p>
                                                                                                </p>
                                                                                                <p class="MsoBodyTextFirstIndent2">
                                                                                                    <span style="font-size:8.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">
                                                                                                    <p>
                                                                                                        &nbsp;</p>
                                                                                                    </span>
                                                                                                    <p>
                                                                                                    </p>
                                                                                                    <p class="MsoBodyTextFirstIndent2">
                                                                                                        <span style="font-size:8.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">
                                                                                                        <p>
                                                                                                            &nbsp;</p>
                                                                                                        </span>
                                                                                                        <p>
                                                                                                        </p>
                                                                                                        <p class="MsoBodyTextFirstIndent2">
                                                                                                            <span style="font-size:8.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">
                                                                                                            <p>
                                                                                                                &nbsp;</p>
                                                                                                            </span>
                                                                                                            <p>
                                                                                                            </p>
                                                                                                            <p class="MsoBodyText">
                                                                                                                <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                                                                                                <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Pilar Urrutia, Mg." Width="233px"></asp:TextBox>
                                                                                                                </span><p>
                                                                                                                </p>
                                                                                                                </span>
                                                                                                                <p>
                                                                                                                </p>
                                                                                                                <p class="MsoHeader">
                                                                                                                    <span lang="ES-EC" style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">PRESIDENTA<p>
                                                                                                                    </p>
                                                                                                                    </span>
                                                                                                                    <p>
                                                                                                                    </p>
                                                                                                                    <table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable">
                                                                                                                        <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
                                                                                                                            <td rowspan="3" style="width:22.45pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="30">
                                                                                                                                <p class="MsoNormal">
                                                                                                                                    <span lang="ES-EC" style="font-size:7.0pt;line-height:115%;font-family:
  &quot;Cambria&quot;,serif;color:black;mso-themecolor:text1">c.c.<p>
                                                                                                                                    </p>
                                                                                                                                    </span>
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
                                                                                                                            </td>
                                                                                                                            <td style="width:353.2pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="471">
                                                                                                                                <p class="MsoNormal">
                                                                                                                                    <span style="font-size:9.0pt; line-height:106%; font-family:
  &quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; mso-fareast-font-family: &quot;Arial Unicode MS&quot;;"><span lang="ES-EC" style="font-size:7.0pt; line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold; color: black; mso-themecolor: text1;"><span style="font-size:8.0pt; line-height:115%; font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; mso-bidi-font-weight: bold;" lang="ES-EC">
                                                                                                                                    <asp:TextBox ID="txtPresidente0" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez " Width="233px"></asp:TextBox>
                                                                                                                                    </span></span><span style="font-size:8.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold"><span style="font-size:7.0pt;line-height:115%;font-family:
  &quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">&nbsp;</span></span></span><span lang="ES-EC" style="font-size:7.0pt;line-height:115%;font-family:
  &quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">- Presidente de la Unidad de Titulación (anexo documentación original)</span><span lang="ES-EC" style="font-size:7.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  color:black;mso-themecolor:text1"><p>
                                                                                                                                    </p>
                                                                                                                                    </span>
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
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr style="mso-yfti-irow:1">
                                                                                                                            <td style="width:353.2pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="471">
                                                                                                                                <p class="MsoNormal">
                                                                                                                                    <span lang="ES-TRAD" style="font-size:8.0pt; line-height:115%;font-family:
  &quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;
  "><span style="font-size: 9.0pt; font-family: Cambria, serif; mso-bidi-font-family: Tahoma;" lang="ES-TRAD"><b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                                                                                                                                    <asp:TextBox ID="txtTutor0" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Édison Álvarez" Width="233px"></asp:TextBox>
                                                                                                                                    </span></span></b> </span></span>
                                                                                                                                    <span lang="ES-EC" style="font-size:7.0pt;line-height:115%;font-family:
  &quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;
  mso-bidi-font-weight:bold">&nbsp;- Tutor<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span lang="ES-EC" style="font-size:7.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  color:black;mso-themecolor:text1">
                                                                                                                                    <p>
                                                                                                                                    </p>
                                                                                                                                    </span>
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
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes;height:8.5pt">
                                                                                                                            <td style="width:353.2pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:8.5pt" valign="top" width="471">
                                                                                                                                <p class="MsoHeader">
                                                                                                                                    <span lang="ES-EC" style="font-size:7.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Estudiante</span><span lang="ES-EC" style="font-size:7.0pt;line-height:
  115%;font-family:&quot;Cambria&quot;,serif;color:black;mso-themecolor:text1"><p>
                                                                                                                                    </p>
                                                                                                                                    </span>
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
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                    <p class="MsoNormal">
                                                                                                                        <span lang="ES-EC">
                                                                                                                        <p>
                                                                                                                            &nbsp;</p>
                                                                                                                        </span>
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
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="221px" Width="849px">
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="X" OnClick="Button3_Click" />
            <asp:UpdatePanel ID="upEstudiante" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
                <ContentTemplate>
                 
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />
                    <asp:GridView ID="GridView1" runat="server" 
                        AllowPaging="True" 
                        PageSize="3" Width="763px" 
                        BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" 
                        BorderWidth="1px" 
                        CellPadding="3" 
                        CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging">
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