﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProyectoInvestigacion.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Titulacion.ProyectoInvestigacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prácticas Prepofesionales</title>
     <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" />

    <style type="text/css">
        p
        {
            margin-bottom: 10px;
            line-height: 1.6em;
        }
        .btnBuscar {
            border-radius: 2em;
            text-decoration: none;
            color: whitesmoke;
            background-color: #A68970;
            text-align: center;
            width: auto;
            padding: 2px;
            font-size: 15px;
        }
        p.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	}
p.MsoNoSpacing
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Times New Roman",serif;
	}
p.MsoHeader
	{margin:0cm;
	tab-stops:center 212.6pt right 425.2pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	}
p.MsoBodyTextFirstIndent2
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:18.0pt;
	text-indent:18.0pt;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
p.MsoBodyText
	{margin:0cm;
	text-align:justify;
	font-size:10.0pt;
	font-family:"Arial",sans-serif;
	}
        .auto-style6 {
            -webkit-appearance: none;
            text-align: left;
            font-size: 12px;
            font-weight: bold;
            padding-left: 2px;
            padding-right: 2px;
            box-shadow: none;
            border-bottom: 1px solid #795B3B;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: 0px;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: 0px;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante"   CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
        </asp:Panel>
        <br />
        <br />
        <div id="documento">
            <p class="MsoNormal" style="text-align:justify">
                  <asp:TextBox ID="txtFecha" runat="server" CssClass="auto-style6" placeholder="Ambato,15 de Enero del 2021" Height="16px" Width="191px"></asp:TextBox>
              </p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:
text1">Resolución <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"> <span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                  </span></span></span></span></span>
                </span></span>
                </span>&nbsp;-P-CD-FISEI-UTA-<span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                  </span></span></span></span>
                </span></span>
                </span></span>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">Ingeniero, Mg.<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" Height="16px" placeholder="Carlos Sánchez" Width="233px"></asp:TextBox>
                      </span>
                  </p>
            <p class="MsoNormal" style="text-align:justify">
                <b style="mso-bidi-font-weight:
normal"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">PRESIDENTE DE LA UNIDAD DE TITULACIÓN <o:p></o:p></span></b>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">FACULTAD DE </span><span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:
text1">INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL</span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"> <o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">Presente<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">De mi consideración:<o:p></o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:
text1">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                <asp:DropDownList ID="ddlSesion" runat="server">
                </asp:DropDownList>
                </span></span>
                </span>&nbsp;del día <a name="_Hlk61802674"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                <asp:DropDownList ID="ddlNombreDia" runat="server">
                </asp:DropDownList>
                </span></span>
                </span>
                </span></a>&nbsp;<span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia" runat="server">
                </asp:DropDownList>
                </span></span>
                </span><span style="mso-bookmark:_Hlk61627263"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">&nbsp;</span></span></span>de <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                <asp:DropDownList ID="ddlMes" runat="server">
                </asp:DropDownList>
                </span></span>
                </span>&nbsp;del <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio0" runat="server" CssClass="auto-style6" placeholder="2020" Height="16px" Width="58px"></asp:TextBox>
                  </span></span></span></span>
                </span></span>
                </span>, </span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">conoce el <span style="mso-spacerun:yes">&nbsp;</span>acuerdo <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" Height="16px" placeholder="UTA-UVS-FISEI-2020-0073-M" Width="233px"></asp:TextBox>
                      </span>
                  </span></span>, de fecha
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                <asp:DropDownList ID="ddlMes0" runat="server">
                </asp:DropDownList>
                </span></span><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">&nbsp;<span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia0" runat="server">
                </asp:DropDownList>
                </span></span>
                </span></span></span>, <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio1" runat="server" CssClass="auto-style6" placeholder="2020" Height="16px" Width="58px"></asp:TextBox>
                  </span></span></span></span>
                </span></span>
                </span>&nbsp;suscrito por el <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"> 
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtPresidente0" runat="server" CssClass="noBorder" Height="16px" placeholder="Ingeniero Mg. Carlos Sánchez" Width="233px"></asp:TextBox>
                      </span>
                  </span>. Presidente de la Unidad de Titulación de esta Unidad Académica, quien sugiere se apruebe la Modalidad de Titulación <b>“Proyecto de Investigación”</b> presentada por el/la señor/ita <b style="mso-bidi-font-weight:
normal"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: &quot;Arial Unicode MS&quot;; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">  
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtNombreEstu" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                      </span>
                  </span></b></span>, </b>estudiante de la Carrera de <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"> 
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlCarrera" runat="server">
                </asp:DropDownList>
                </span></span></span>. Al respecto, RESUELVE: <span style="color:black;mso-themecolor:text1"><o:p></o:p></span></span>
            </p>
            <p class="MsoNormal" style="text-align:justify">
                <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <b style="mso-bidi-font-weight:
normal"><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">APROBAR,</span></b><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> LA MODALIDAD DE TITULACIÓN <b style="mso-bidi-font-weight:
normal">“PROYECTO DE INVESTIGACIÓN”,</b> ESCOGIDA POR EL/LA SEÑOR/ITA <span style="font-size: 10.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-EC" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: &quot;Arial Unicode MS&quot;; mso-bidi-font-family: Tahoma"> <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">  
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtNombreEstu0" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                      </span>
                  </span></span></b></span>, ESTUDIANTE DE LA CARRERA DE <span style="font-size: 10.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"> 
                <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlCarrera0" runat="server">
                </asp:DropDownList>
                </span></span></span></span>, POR CUMPLIR CON LOS REQUISITOS ESTABLECIDOS.<b style="mso-bidi-font-weight:normal">
<o:p></o:p></b></span>
            </p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="text-align:justify">
                <b style="mso-bidi-font-weight:
normal"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">INDICAR,</span></b><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> AL SEÑOR/ITA <b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size: 10.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span lang="ES-EC" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: &quot;Arial Unicode MS&quot;; mso-bidi-font-family: Tahoma"> <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">  
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                      </span>
                  </span></span></b></span></span>, </b>QUE PARA INICIAR EL PROCESO DE TITULACIÓN DEBERÁ ESTAR LEGALMENTE MATRICULADO EN DÉCIMO NIVEL Y DEBERÁ ADJUNTAR LOS CERTIFICADOS DE HABER CUMPLIDO CON: VINCULACIÓN CON LA COLECTIVIDAD, APROBACIÓN DEL IDIOMA EXTRANJERO, APROBACIÓN DE CULTURA FÍSICA Y PRÁCTICAS PREPROFESIONALES, Y ADEMÁS DEBERÁ ANEXAR LOS SIGUIENTES DOCUMENTOS:<o:p></o:p></span></p>
            <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify">
                <span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">RESOLUCIÓN DE CONSEJO DIRECTIVO DE APROBACIÓN DE MODALIDAD<o:p></o:p></span></p>
            <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">CARTA DE COMPROMISO O COLABORACIÓN DE LA EMPRESA (DE SER EL CASO)<o:p></o:p></span></p>
            <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">PROPUESTA DE TRABAJO DE TITULACIÓN<o:p></o:p></span></p>
            <p class="MsoNoSpacing" style="margin-left:36.0pt;text-align:justify;text-indent:
-18.0pt;mso-list:l0 level1 lfo1">
                <![if !supportLists]><span lang="ES-TRAD" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">NOMBRE DEL DOCENTE SUGERIDO PARA POSIBLE TUTOR.<o:p></o:p></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNoSpacing" style="text-align:justify">
                <b style="mso-bidi-font-weight:
normal"><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">REMITIR,</span></b><span lang="ES-TRAD" style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> LOS DOCUMENTOS ORIGINALES REFERIDOS ANTERIORMENTE A LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN DE LA FISEI PARA SU CORRESPONDIENTE ARCHIVO.<span style="mso-bidi-font-weight:bold"><o:p></o:p></span></span></p>
            <p class="MsoHeader" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt">
                <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoHeader" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt">
                <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Atentamente,<o:p></o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                <span lang="ES-EC" style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyText" style="text-indent:.05pt">
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtPresidente1" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Pilar Urrutia, Mg." Width="233px"></asp:TextBox>
                      </span>
                  </p>
            <p class="MsoHeader" style="text-align:justify;text-indent:.05pt">
                <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">PRESIDENTA<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-left:18.0pt;text-align:justify;text-indent:
-18.0pt">
                <span style="font-size:8.0pt;font-family:&quot;Tahoma&quot;,sans-serif">cc:
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Pilar Urrutia, Mg." Width="233px"></asp:TextBox>
                      </span>
                  , Coordinador de las Carreras de
                <span style="mso-bookmark:_Hlk61627263">
                <asp:DropDownList ID="ddlCarreras" runat="server">
                </asp:DropDownList>
                </span>
                </span><span style="font-size:
8.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Tahoma&quot;,sans-serif"><o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt">
                <span style="font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Tahoma&quot;,sans-serif"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Estudiante</span><o:p></o:p></p>
            <p class="MsoNormal">
                <o:p>&nbsp;</o:p></p>
            <p class="MsoNormal">
                <o:p>&nbsp;</o:p></p>
            <p class="MsoNormal">
                <o:p>&nbsp;</o:p></p>
        </div>
    </form>
</body>
</html>
