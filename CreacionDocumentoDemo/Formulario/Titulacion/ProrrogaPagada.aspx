<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProrrogaPagada.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Titulacion.ProrrogaPagada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prorroga Pagada</title>
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

            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                  <asp:TextBox ID="txtFecha" runat="server" CssClass="auto-style1" OnTextChanged="txtFecha_TextChanged" placeholder="Ambato,15 de Enero del 2021" Height="16px" Width="193px"></asp:TextBox>
              </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
color:black;mso-themecolor:text1">Resolución
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">
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
                </span>
                -P-CD-FISEI-UTA-<span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                  </span></span></span></span>
                </span>
                </span>
                </span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
color:black;mso-themecolor:text1"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                <p></p>
                <p>
                </p>
                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                    <p>
                    </p>
                    <p>
                    </p>
                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                        <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Ingeniero/a,</span><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1"> Mg.<p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez, Mg." Width="233px"></asp:TextBox>
                        </span>
                    </p>
                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                        &nbsp;</p>
                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                        <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">COORDINADOR DE LAS CARRERAS DE&nbsp; <span style="mso-bidi-font-weight:bold">&nbsp;</span><asp:DropDownList ID="ddlCarrerasCoor" runat="server" CssClass="noBorder" Font-Bold="True" Font-Size="Smaller" Width="100%">
                        </asp:DropDownList>
                        </span></b>
                    </p>
                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                        &nbsp;</p>
                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                        <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL<p>
                        </p>
                        </span>
                        <p>
                        </p>
                        <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                            <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">Presente.-<p></p>
                            </span>
                        </p>
                        <p class="MsoNormal" style="margin-bottom:0cm;line-height:115%">
                            <p>
                            </p>
                            <p>
                            </p>
                            <p class="MsoNormal" style="margin-bottom:0cm;line-height:115%">
                                &nbsp;</p>
                            <p class="MsoNormal" style="margin-bottom:0cm;line-height:115%">
                                &nbsp;</p>
                            <p class="MsoNormal" style="margin-bottom:0cm;line-height:115%">
                                <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                                <p>
                                    &nbsp;</p>
                                </span>
                                <p>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;line-height:115%">
                                    <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">De mi consideración:<p></p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;line-height:115%">
                                    <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    </span></span></span></b></span></span></span></em></span>&nbsp;del día <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    </span></span></span></b></span></span></span></em></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;<span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    </span></span></span></b></span></span></span></em></span></span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>de <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    </span></span></span></b></span></span></span></em></span>&nbsp;del <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtAnio1" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                    </span></span></span></b></span></span></span></em></span>, conoce el Acuerdo <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" placeholder="UTA-UVS-FISEI-2020-0073-M"></asp:TextBox>
                                    </span></span></span></b></span></span></span></em></span>, de fecha <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    </span></span></span></b></span></span></span></em></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;<span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum0" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    </span></span></span></b></span></span></span></em></span></span></span>&nbsp;, <span style="mso-spacerun:yes">&nbsp;<span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                    </span></span></span></b></span></span></span></em></span></span></span>, suscrito por el <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtPresiConsejo" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán"></asp:TextBox>
                                    </span></span></span></span></b></span></span></span></em></span>, Presidente/a de la Unidad de Titulación-FISEI, quien sugiere se apruebe la solicitud de prórroga pagada presentada por el señor/ita&nbsp; <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                    </span></span></b></span></span></span></b></span></span></em></span></span>&nbsp;</span><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-bidi-font-weight:
bold">estudiante de la Carrera de</span><b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"> <span style="font-size:10.0pt; font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; line-height: 115%; color: black; mso-themecolor: text1;"><span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:DropDownList ID="ddlCarreras" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    </span></span></span></b></span></span></span></em></span></span></span><span style="font-size:10.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1">.</span></b><span style="font-size:10.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"> Al respecto RESUELVE:<p></p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">APROBAR</span></b><span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">, LA<b style="mso-bidi-font-weight:normal"> </b>SOLICITUD DE <b style="mso-bidi-font-weight:normal">PRÓRROGA PAGADA </b>PARA EL PERÍODO ACADÉMICO:<b style="mso-bidi-font-weight:normal"> <em><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtPeriodo" runat="server" CssClass="noBorder" placeholder="junio-enero/2020"></asp:TextBox>
                                    </span></span></span></span></span></b></span></span></span></span></span></span></em></b>&nbsp;PRESENTADA POR EL/LA SEÑOR/ITA<b style="mso-bidi-font-weight:normal"><span style="mso-spacerun:yes">&nbsp; <span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                    </span></span></b></span></span></span></b></span></em></span></span></span></span>,<span style="mso-spacerun:yes">&nbsp; </span></b>ESTUDIANTE DE&nbsp;
                                    <asp:DropDownList ID="ddlNivel" runat="server">
                                    </asp:DropDownList>
                                    &nbsp;SEMESTRE EN EL PERÍODO ACADÉMICO: <span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><b style="mso-bidi-font-weight: normal"><em><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtPeriodo2" runat="server" CssClass="noBorder" placeholder="junio-enero/2020"></asp:TextBox>
                                    </span></span></span></span></span></span></span></span></span></span></span></em></b></span>&nbsp;DE LA CARRERA DE <b style="mso-bidi-font-weight: normal"><span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:DropDownList ID="ddlCarreras0" runat="server" CssClass="noBorder" Font-Size="Smaller" Width="100%">
                                    </asp:DropDownList>
                                    </span></span></span></span></span></span></em></span></span></b>, PARA QUE CONCLUYA Y APRUEBE EL TRABAJO DE TITULACIÓN: <b style="mso-bidi-font-weight:
normal">“<span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><b style="mso-bidi-font-weight: normal"><em><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtTrabajo" runat="server" CssClass="noBorder" placeholder="*Nombre del Proyecto*" Width="100%"></asp:TextBox>
                                    </span></span></span></span></span></span></span></span></span></span></span></em></b></span>”</b>, </span><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">EN BASE A LO DISPUESTO EN LA RESOLUCIÓN CAU-P-080-2020, DE FECHA FEBRERO 12, 2020, EMITIDA POR CONSEJO ACADÉMICO UNIVERSITARIO DE LA UNIVERSIDAD TÉCNICA DE AMBATO,<span style="mso-spacerun:yes">&nbsp; </span>Y AL MEMORANDO UTA-DAC-2020-0084-M, DE FECHA 06 DE FEBRERO DE 2020. SUSCRITO POR LA AB. FABIOLA COPO, ANALISTA JURÍDICA DE LA DIRECCIÓN ACADÉMICA DE LA UNIVERSIDAD TÉCNICA DE AMBATO.<p></p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <p>&nbsp;</p>
                                    </span></b>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">INDICAR</span></b><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">, A EL/LA MENCIONADO/A ESTUDIANTE QUE EN EL PERÍODO ACADÉMICO SEÑALADO DEBERÁ CONCLUIR Y APROBAR LA OPCIÓN DE TITULACIÓN ESCOGIDA.<p></p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%;mso-layout-grid-align:none;text-autospace:none">
                                    <span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoNoSpacing" style="text-align:justify;line-height:115%">
                                    <b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">COMUNICAR</span></b><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">, AL INGENIERO/A <b style="mso-bidi-font-weight:
normal">, <span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><b style="mso-bidi-font-weight: normal"><span style="mso-spacerun: yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtTutor" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Manuel Chávez" ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                    </span></span></b></span></span></span></span></em></span></span></span></b></span>&nbsp;TUTOR</b> Y AL ESTUDIANTE <span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                    <asp:TextBox ID="txtNombreEstu3" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                    </span></span></b></span></span></span></b></span></span></em></span></span></span>, QUE DEBEN ENTREGAR MENSUALMENTE LOS INFORMES EN LA SECRETARÍA CORRESPONDIENTE HASTA CUANDO CONCLUYA EL TRABAJO DE GRADO.<p></p>
                                    </span>
                                </p>
                                <p class="MsoNoSpacing" style="text-align:justify;line-height:115%">
                                    <span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">AUTORIZAR</span></b><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">, A LA SECRETARIA DE LAS CARRERAS DE <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <asp:DropDownList ID="ddlOpcionesSecre" runat="server" CssClass="noBorder" Font-Size="Smaller" Width="100%">
                                    </asp:DropDownList>
                                    </span></b></span><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">&nbsp; </span><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">EMITA LA ORDEN Y VERIFIQUE EL PAGO DE CONFORMIDAD AL ARANCEL UNIVERSITARIO VIGENTE.<p></p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p style="margin:0cm;text-align:justify;line-height:115%">
                                    <b><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">SOLICITAR.</span></b><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> A <b><span style="mso-spacerun:yes">&nbsp;</span></b>LA SECRETARIA DE CARRERA QUE UNA VEZ SUPERADA LA EMERGENCIA SANITARIA POR COVID 19, VERIFIQUE QUE LOS DATOS Y DOCUMENTACIÓN CONSIGNADA PARA EL PRESENTE TRÁMITE ESTÉN COMPLETOS Y CUMPLA CON TODOS LOS REQUISITOS EXIGIDOS, CASO CONTRARIO INFORMARÁ EL PARTICULAR PARA LA APLICACIÓN DE LO DISPUESTO EN LA </span><span lang="ES-TRAD" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:
ES-TRAD">RESOLUCIÓN: CAU-P-229-2020, DE FECHA ABRIL 15, 2020, SUSCRITA POR LA DRA. MARY CRUZ, PRESIDENTA DE CONSEJO ACADÉMICO UNIVERSITARIO DE LA UTA, A TRAVÉS DE LA CUAL INDICA: “<i>AUTORIZAR</i> <i>A LAS DIFERENTES UNIDADES ACADÉMICAS, QUE DURANTE EL ESTADO DE EMERGENCIA, RECEPTEN LOS TRÁMITES ACADÉMICOS ENVIADOS POR MEDIOS ELECTRÓNICOS CON SUS RESPECTIVOS DOCUMENTOS DE RESPALDO; EN CASO DE QUE SE REQUIERA REGISTROS O DOCUMENTACIÓN QUE REPOSA EN LAS SECRETARIAS, TERMINADA LA EMERGENCIA, SE VERIFICARÁ LA VERACIDAD DE LOS MISMOS, SIN PERJUICIO DE LA NULIDAD DEL TRÁMITE DE NO PODER COMPROBAR EL CUMPLIMIENTO DE LOS REQUISITOS O VALIDEZ DEL EXPEDIENTE ENVIADO”.<p></p>
                                    </i></span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span></b>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR, </span></b><span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">LOS DOCUMENTOS ORIGINALES CITADOS EN EL PÁRRAFO QUE ANTECEDE A LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN PARA SU CORRESPONDIENTE ARCHIVO.<p></p>
                                    </span>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
115%">
                                    <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoBodyTextFirstIndent2" style="margin-left:0cm;text-align:justify;
text-indent:0cm;line-height:115%">
                                    <span lang="ES" style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">Atentamente,<p></p>
                                    </span>
                                </p>
                                <p class="MsoBodyTextFirstIndent2" style="margin-left:0cm;text-align:justify;
text-indent:.05pt;line-height:115%">
                                    <span lang="ES" style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoBodyTextFirstIndent2" style="margin-left:0cm;text-align:justify;
text-indent:.05pt;line-height:115%">
                                    <span lang="ES" style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoBodyTextFirstIndent2" style="margin-left:0cm;text-align:justify;
text-indent:.05pt;line-height:115%">
                                    <span lang="ES" style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                                    <p>&nbsp;</p>
                                    </span>
                                </p>
                                <p class="MsoBodyText" style="margin-bottom:0cm;text-indent:.05pt;line-height:
115%">
                                    <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" OnTextChanged="txtPresidente_TextChanged" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                                </p>
                                <p class="MsoHeader" style="text-align:justify;text-indent:.05pt;line-height:
115%">
                                    <span style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">PRESIDENTA<p></p>
                                    </span>
                                </p>
                                <table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse:collapse;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
                                    <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
                                        <td rowspan="3" style="width:22.45pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="30">
                                            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
  115%">
                                                <span style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  color:black;mso-themecolor:text1">c.c.<p></p>
                                                </span>
                                            </p>
                                        </td>
                                        <td style="width:353.2pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="471">
                                            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
  115%">
                                                <asp:TextBox ID="txtPresiTitula" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                                                <span style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">&nbsp;- Presidente de la Unidad de Titulación (anexo documentación original)</span><p>
                                                </p>
                                                <p>
                                                </p>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="mso-yfti-irow:1">
                                        <td style="width:353.2pt;padding:0cm 5.4pt 0cm 5.4pt" valign="top" width="471">
                                            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;line-height:
  115%">
                                                <span style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Ing. <span lang="ES-TRAD" style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><b style="mso-bidi-font-weight: normal"><span style="font-size: 10.0pt; line-height: 115%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><span style="mso-spacerun: yes"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                <asp:TextBox ID="txtTutor1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                                                </span></span></b></span></span></span></span></em></span></span></span></span></b></span>&nbsp;- Tutor<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  color:black;mso-themecolor:text1">
                                                <p></p>
                                                </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr style="mso-yfti-irow:2;mso-yfti-lastrow:yes;height:8.5pt">
                                        <td style="width:353.2pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:8.5pt" valign="top" width="471">
                                            <p class="MsoHeader" style="text-align:justify;line-height:115%">
                                                <span style="font-size:8.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
  mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-bidi-font-weight:
  bold">Estudiante</span><span style="font-size:8.0pt;line-height:115%;
  font-family:&quot;Cambria&quot;,serif;color:black;mso-themecolor:text1"><p></p>
                                                </span>
                                            </p>
                                        </td>
                                    </tr>
                                </table>
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
