<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TerceraMatricula.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.CAF.TerceraMatricula" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tercera Matrícula</title>
          <link rel="stylesheet" href="../../Estilos/estilos.css"  type="text/css" />
    <style type="text/css">

 p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:106%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
p
	{margin-right:0cm;
	margin-left:0cm;
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
p.MsoHeader
	{margin:0cm;
	tab-stops:center 212.6pt right 425.2pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" 
                Text="Buscar Estudiante"   CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
        </asp:Panel>
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>
        <div id="documento">
            <p class="MsoNormal" style="margin-bottom:0cm">
              <asp:TextBox ID="txtFecha" placeholder="Ambato,15 de Enero del 2021" CssClass="noBorder" runat="server" OnTextChanged="txtFecha_TextChanged"></asp:TextBox>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                &nbsp;</p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">Resolución <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtSecuencia" runat="server" placeholder="0209" Height="16px" Width="53px"></asp:TextBox>
                </span></span></span></span></span>
                -P-CD-FISEI-UTA-<span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" placeholder="2020" CssClass="noBorder"></asp:TextBox>
          </span></span></span>
                </span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">Ingeniero, Mg.<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
            <asp:TextBox ID="txtCoordinador"  placeholder="Ing. Carlos Sánchez, Mg." runat="server" CssClass="noBorder" Height="16px" Width="233px"></asp:TextBox>
                </span __designer:mapid="17b1">
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif">COORDINADOR DE
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">           <asp:TextBox ID="txtCarrerasCoor" placeholder="Ejm: Ambato,15 de Enero del 2021" CssClass="noBorder" runat="server"></asp:TextBox>
                </b __designer:mapid="17b0"></span __designer:mapid="17b1"></span></b>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL <o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">Presente.-<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">De mi consideración:<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <em><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;font-style:normal">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                                      <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1">&nbsp;del<span style="mso-spacerun:yes">&nbsp; </span>día
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      &nbsp;</span></span></span></b __designer:mapid="17b0"></span __designer:mapid="17b1">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1">&nbsp;de
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1">&nbsp;de <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio1" runat="server" placeholder="2020" CssClass="noBorder"></asp:TextBox>
          </span></span></span>
                </span>, conoce el Acuerdo
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAcuerdo" runat="server" placeholder="UTA-UVS-FISEI-2020-0073-M" CssClass="noBorder"></asp:TextBox>
                                      </span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1">&nbsp;, de fecha&nbsp; <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1"></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum0" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1"></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>de <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio2" runat="server" placeholder="2020" CssClass="noBorder" OnTextChanged="txtAnio2_TextChanged"></asp:TextBox>
          </span></span></span>
                </span></span>, suscrito por <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtPresiConsejo" runat="server" placeholder="Ing. Edisson Patricio Jordán" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1">, Presidente de Consejo Académico de Facultad, quien </span></em><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">sugiere se autorice el informe de <b style="mso-bidi-font-weight:normal">TERCERA MATRÍCULA </b><span style="mso-bidi-font-weight:bold">del señor </span><em><b style="mso-bidi-font-weight:normal"><span style="font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtNombreEstu1" runat="server" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></b> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1">, </span></b><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal">con C.C.
       con C.C.
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula" runat="server" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder" OnTextChanged="txtCedula_TextChanged"></asp:TextBox>
                                      </span></span> </span></b __designer:mapid="17b0"></span __designer:mapid="17b1">&nbsp;en las asignaturas: <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAsignaturas" runat="server" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder" OnTextChanged="txtCedula0_TextChanged"></asp:TextBox>
                                      </span></span></b __designer:mapid="17b0"></span __designer:mapid="17b1"></span></span>&nbsp;de la Carrera de &lt;carreras&gt; de la Universidad Técnica de Ambato, para el período académico &lt;periodo&gt;. Al respecto RESUELVE:<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><o:p></o:p></span></em></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <em><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;font-style:normal"><o:p>&nbsp;</o:p></span></em></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <em><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;font-style:normal"><o:p>&nbsp;</o:p></span></em></p>
            <p style="margin:0cm;text-align:justify;line-height:115%">
                <em><b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">AUTORIZAR</span></b><span lang="ES" style="font-size:
9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">, LA SOLICITUD DE<b style="mso-bidi-font-weight:normal"> TERCERA MATRÍCULA</b> PRESENTADA POR EL SEÑOR <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b style="mso-bidi-font-weight: normal"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"> <b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtNombreEstu2" runat="server" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></b></span __designer:mapid="17b1"></span></b></span><b style="mso-bidi-font-weight:
normal">, </b>CON C.C. </span><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula0" runat="server" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder" OnTextChanged="txtCedula_TextChanged"></asp:TextBox>
                                      </span></span></b __designer:mapid="17b0"></span __designer:mapid="17b1"></span></span><b style="mso-bidi-font-weight:normal"><span style="font-size:
9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">&nbsp;</span><span lang="ES" style="font-size:
9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">, </span></b><span lang="ES" style="font-size:
9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">ESTUDIANTE DE LA CARRERA DE </span></em>
            </p>
            <p style="margin:0cm;text-align:justify;line-height:115%">
                <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><em><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAsignaturas1" runat="server" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder" OnTextChanged="txtCedula0_TextChanged"></asp:TextBox>
                                      </span></span></b __designer:mapid="17b0"></span __designer:mapid="17b1"></span></em></span><em><span lang="ES" style="font-size:
9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">&nbsp;EN LAS ASIGNATURAS DE:<b style="mso-bidi-font-weight:normal"> <span style="mso-bidi-font-weight:bold">&lt;asignaturas&gt;</span>, </b>PARA EL PERÍODO ACADÉMICO <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAsignaturas0" runat="server" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder" OnTextChanged="txtCedula0_TextChanged"></asp:TextBox>
                                      </span></span></b __designer:mapid="17b0"></span __designer:mapid="17b1"></span></span><b style="mso-bidi-font-weight:normal">,</b> DE CONFORMIDAD CON LO DISPUESTO EN EL REGLAMENTO DE REGIMEN ACADEMICO DEL CES</span><span lang="ES" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">, “ARTÍCULO 91.- TERCERA MATRÍCULA. – “CUANDO UN ESTUDIANTE REPRUEBE POR TERCERA VEZ UNA ASIGNATURA, CURSO O SU EQUIVALENTE, NO PODRÁ CONTINUAR, NI EMPEZAR LA MISMA CARRERA EN LA MISMA IES. DE SER EL CASO, PODRÁ SOLICITAR EL INGRESO EN LA MISMA CARRERA EN OTRAS IES, QUE, DE SER PUBLICA, NO APLICARÁ EL DERECHO A GRATUIDAD. EN EL CASO QUE EL ESTUDIANTE DESEE CONTINUAR EN LA MISMA IES O EN OTRAS IES, PODRÁ HOMOLOGAR LAS ASIGNATURAS, CURSOS O SUS EQUIVALENTES EN OTRA CARRERA QUE NO CONSIDERE LA O LAS ASIGNATURAS, CURSOS O SUS EQUIVALENTES QUE FUERON OBJETO DE LA TERCERA MATRICULA. ESTA DISPOSICIÓN APLICA PARA EL APRENDIZAJE DE UNA SEGUNDA LENGUA, SIEMPRE QUE FORME PARTE DEL PLAN DE ESTUDIOS DE LA CARRERA O PROGRAMA COMO COMPONENTE DE LAS UNIDADES BÁSICA Y/O PROFESIONAL.” </span><span lang="ES" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal">Y, DE ACUERDO A LO ESTABLECIDO EN LA RESOLUCIÓN 0486-CU-P-2020,</span></em><span lang="ES-TRAD" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:ES-TRAD"> DE FECHA ABRIL 14, 2020,</span><em><span lang="ES" style="font-size:9.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"> EMITIDA POR EL HONORABLE CONSEJO UNIVERSITARIO DE LA UNIVERSIDAD TÉCNICA DE AMBATO, CON LA </span></em><span lang="ES-TRAD" style="font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1;mso-ansi-language:ES-TRAD">QUE SE DEJA SIN EFECTO LO ESTABLECIDO EN EL &quot;INSTRUCTIVO PARA REALIZAR CAMBIOS DE CARRERA, CAMBIOS DE UNIVERSIDADES, REINGRESOS, ANULACIÓN DE MATRÍCULAS, RETIRO DE ASIGNATURAS Y TERCERAS MATRÍCULAS&quot;, APROBADO MEDIANTE RESOLUCIÓN 1519-CU-P-2016 DEL 02 DE AGOSTO DE 2016, EN LA PARTE PERTINENTE AL CAPÍTULO III, RESPECTO A LA “PERTINENCIA DEL OTORGAMIENTO DE TERCERA MATRÍCULA”.</span><span lang="ES-TRAD" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif"> </span><span lang="ES" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif"><o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p style="margin:0cm;text-align:justify;line-height:115%">
                <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">AUTORIZARlang="ES" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, A LA SECRETARIA DE CARRERA EMITA LA ORDEN DE COBRO EN BASE AL ARANCEL ESTABLECIDO Y VERIFIQUE EL PAGO CORRESPONDIENTE. <o:p></o:p></span>
            </p>
            <p style="margin:0cm;text-align:justify;line-height:115%">
                <span lang="ES" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p style="margin:0cm;text-align:justify;line-height:115%">
                <b><span lang="ES" style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">SOLICITAR.</span></b><span lang="ES" style="font-size:9.0pt;line-height:
115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> A <b><span style="mso-spacerun:yes">&nbsp;</span></b>LA SECRETARIA DE CARRERA QUE UNA VEZ SUPERADA LA EMERGENCIA SANITARIA POR COVID 19, VERIFIQUE QUE LOS DATOS Y DOCUMENTACIÓN CONSIGNADA PARA EL PRESENTE TRÁMITE ESTÉ COMPLETA Y CUMPLA CON TODOS LOS REQUISITOS EXIGIDOS, CASO CONTRARIO INFORMARÁ EL PARTICULAR PARA LA APLICACIÓN DE LO DISPUESTO EN LA </span><span lang="ES-TRAD" style="font-size:
9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1;mso-ansi-language:ES-TRAD">RESOLUCIÓN: CAU-P-229-2020, DE FECHA ABRIL 15, 2020, SUSCRITA POR LA DRA. MARY CRUZ, PRESIDENTA DE CONSEJO ACADÉMICO UNIVERSITARIO DE LA UTA, A TRAVÉS DE LA CUAL INDICA: “<i>AUTORIZAR</i> <i>A LAS DIFERENTES UNIDADES ACADÉMICAS, QUE DURANTE EL ESTADO DE EMERGENCIA, RECEPTEN LOS TRÁMITES ACADÉMICOS ENVIADOS POR MEDIOS ELECTRÓNICOS CON SUS RESPECTIVOS DOCUMENTOS DE RESPALDO; EN CASO DE QUE SE REQUIERA REGISTROS O DOCUMENTACIÓN QUE REPOSA EN LAS SECRETARIAS, TERMINADA LA EMERGENCIA, SE VERIFICARÁ LA VERACIDAD DE LOS MISMOS, SIN PERJUICIO DE LA NULIDAD DEL TRÁMITE DE NO PODER COMPROBAR EL CUMPLIMIENTO DE LOS REQUISITOS O VALIDEZ DEL EXPEDIENTE ENVIADO”.<o:p></o:p></i></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span lang="ES-TRAD" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:
ES-TRAD"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">LA DOCUMENTACIÓN ORIGINAL A LA QUE SE HACE REFERENCIA EN EL PÁRRAFO QUE ANTECEDE A LA COORDINACIÓN DE LAS CARRERAS DE </span><span style="font-size:
9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif">INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE PARA </span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">EL TRÁMITE CORRESPONDIENTE Y SU POSTERIOR ARCHIVO.<o:p></o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:0cm;line-height:normal">
                <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Atentamente,<o:p></o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:.05pt;line-height:normal">
                <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:.05pt;line-height:normal">
                <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:.05pt;line-height:normal">
                <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></spa&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2" style="margin:0cm;text-align:justify;
text-indent:.05pt;line-height:normal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                <b style="mso-bidi-font-weight:normal">
                    <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                    <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                    </span></span></span>
                </b __designer:mapid="17b0"></span __designer:mapid="17b1"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;
mso-bidi-font-weight:bold">.</span><span style="font-size:
9.0pt"><o:p></o:p></span></p>
            <p class="MsoHeader" style="text-align:justify;text-indent:.05pt">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">PRESIDENTA></p>
            <p class="MsoHeader" style="margin-left:-7.1pt;text-align:justify;text-indent:
-14.2pt">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Cc:<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>&lt;presiConsejo&gt; <span style="mso-spacerun:yes">&nbsp;</span>,</span></p>
            <p class="MsoHeader" style="margin-left:-7.1pt;text-align:justify;text-indent:
-14.2pt">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">&nbsp;<span style="mso-bidi-font-weight:bold">Presidente de Consejo Académico de Facultad<o:p></o:p></span></span></p>
            <p class="MsoHeader" style="margin-left:-7.1pt;text-align:justify;text-indent:
-14.2pt">
                <span style="font-size:8.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Estudiante</span><span style="font-size:8.0pt;
font-family:&quot;Cambria&quot;,serif"><o:p></o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:12.0pt;line-height:106%"><o:p>&nbsp;</o:p></span></p>
        </div>
    
                  </ContentTemplate>
        </asp:UpdatePanel>

         <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                      Width="172px" OnClick="Button4_Click" />
        &nbsp;<asp:Label ID="labelEstado" runat="server"></asp:Label>
        <ajaxtoolkit:confirmbuttonextender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="221px" Width="849px">
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
        
        <ajaxtoolkit:modalpopupextender ID="ModalPopupExtender1"
            TargetControlID="btnBuscar"
            CancelControlID="Button3"
            PopupControlID="panelModalBusquedaEst" 
            runat="server"></ajaxtoolkit:modalpopupextender>
                  </form>
</body>
</html>
