<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExamenComplexivo.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Titulacion.ExamenComplexivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Examen Complexivo</title>
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
        .auto-style1 {
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
        .auto-style2 {
            -webkit-appearance: none;
            text-align: left;
            font-size: 12px;
            width: auto;
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
    <form id="form2" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante"   CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
        </asp:Panel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div id="documento">
                    <p class="MsoNormal" style="text-align:justify">
                        <asp:TextBox ID="txtFecha" runat="server" CssClass="noBorder" placeholder="Ambato,15 de Enero del 2021"></asp:TextBox>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:
text1">Resolución <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                        </span></span></span></span></span></span></span>&nbsp;-P-CD-FISEI-UTA-</span><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                        </span></span></span></span></span></span>
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
text1">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlSesion" runat="server">
                        </asp:DropDownList>
                        </span></span>&nbsp;del día <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="auto-style2">
                        </asp:DropDownList>
                        </span></span></span></b></span></span></span></span>&nbsp;<span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia" runat="server">
                        </asp:DropDownList>
                        </span></span>&nbsp;de <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlMes" runat="server">
                        </asp:DropDownList>
                        </span></span>&nbsp;del <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio0" runat="server" CssClass="auto-style1" Height="19px" placeholder="2020" Width="69px"></asp:TextBox>
                        </span></span></span></span></span></span>, </span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">conoce el acuerdo <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="auto-style1" Height="16px" placeholder="UTA-UVS-FISEI-2020-0073-M" Width="290px"></asp:TextBox>
                        </span></span></span></b></span></span></span></span>, de fecha <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1">
                        <asp:DropDownList ID="ddlMes0" runat="server">
                        </asp:DropDownList>
                        </span></span></span>&nbsp;<span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><asp:DropDownList ID="ddlNumeroDia0" runat="server">
                        </asp:DropDownList>
                        </span></span></span>, <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; color: black; mso-themecolor: text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio1" runat="server" CssClass="auto-style1" Height="19px" placeholder="2020" Width="69px"></asp:TextBox>
                        </span></span></span></span></span></span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>suscrito por el <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresidente0" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez, Mg." Width="233px"></asp:TextBox>
                        </span></span></span>. Presidente de la Unidad de Titulación de esta Unidad Académica, quien sugiere se apruebe la Modalidad de Titulación <b>“Examen de Grado de carácter Complexivo” </b>presentado por el/la señor/ita <b style="mso-bidi-font-weight:
normal"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu" runat="server" CssClass="auto-style1" EnableViewState="true" Height="16px" placeholder="Seleccionar estudiante" ToolTip="Busque un estudiante" Width="313px"></asp:TextBox>
                        </span></span></b></span></span></span></span></span>, </b>estudiante de la Carrera de <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">
                        <asp:DropDownList ID="ddlCarrera" runat="server">
                        </asp:DropDownList>
                        </span></span>. Al respecto, RESUELVE: <span style="color:black;mso-themecolor:text1">
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
mso-bidi-font-family:Tahoma"> LA MODALIDAD DE TITULACIÓN <b>“EXAMEN DE GRADO DE CARÁCTER COMPLEXIVO”, </b>ESCOGIDA POR EL/LA SEÑOR/ITA <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu0" runat="server" CssClass="auto-style1" EnableViewState="true" Height="16px" placeholder="Seleccionar estudiante" ToolTip="Busque un estudiante" Width="313px"></asp:TextBox>
                        </span></span></b></span></span></b></span></span></span>, ESTUDIANTE DE LA CARRERA DE <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                        <asp:DropDownList ID="ddlCarrera0" runat="server">
                        </asp:DropDownList>
                        </span></span>, POR CUMPLIR CON LOS REQUISITOS ESTABLECIDOS.<b style="mso-bidi-font-weight:
normal">
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
mso-bidi-font-family:Tahoma"> AL SEÑOR/ITA <b style="mso-bidi-font-weight:normal"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-TRAD" style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="auto-style1" EnableViewState="true" Height="16px" placeholder="Seleccionar estudiante" ToolTip="Busque un estudiante" Width="313px"></asp:TextBox>
                        </span></span></b></span></span></b></span></span></span></span>, </b>QUE PARA INICIAR EL PROCESO DE TITULACIÓN DEBERÁ ESTAR LEGALMENTE MATRICULADO EN DÉCIMO NIVEL Y DEBERÁ ADJUNTAR LOS CERTIFICADOS DE HABER CUMPLIDO CON: VINCULACIÓN CON LA COLECTIVIDAD, APROBACIÓN DEL IDIOMA EXTRANJERO, APROBACIÓN DE CULTURA FÍSICA Y PRÁCTICAS PREPROFESIONALES Y RESOLUCIÓN DE APROBACIÓN DE MODALIDAD.<p></p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <p>&nbsp;</p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        <b><span style="font-size:10.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">INFORMAR,</span></b><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> AL SEÑOR/ITA <b style="mso-bidi-font-weight:normal"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-TRAD" style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="auto-style1" EnableViewState="true" Height="16px" placeholder="Seleccionar estudiante" ToolTip="Busque un estudiante" Width="313px"></asp:TextBox>
                        </span></span></b></span></span></b></span></span></span></span>,</b><span style="mso-bidi-font-weight:bold"> QUE LA UNIDAD DE TITULACIÓN DE LA FISEI, EFECTUARÁ LA CONVOCATORIA RESPECTIVA PARA QUE PUEDA INSCRIBIRSE PARA RENDIR EL “</span><b style="mso-bidi-font-weight:normal">EXAMEN DE GRADO DE CARÁCTER COMPLEXIVO”, </b><span style="mso-bidi-font-weight:bold">SIENDO ÉSTA SU RESPONSABILIDAD.</span><p></p>
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
                        <span style="font-size:8.0pt;font-family:&quot;Tahoma&quot;,sans-serif">cc: <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:8.0pt;line-height:106%;font-family:&quot;Tahoma&quot;,sans-serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtCoordinador" runat="server" CssClass="auto-style1" Height="16px" placeholder="Ing. Clay Aldás" Width="166px"></asp:TextBox>
                        </span></span></span>, Coordinador de las Carreras de </span><span style="mso-bookmark:_Hlk61627263">
                        <asp:DropDownList ID="ddlCarreras" runat="server">
                        </asp:DropDownList>
                        </span>
                    </p>
                    <p class="MsoNormal" style="margin-left:18.0pt;text-indent:-18.0pt">
                        <span style="font-size:8.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Tahoma&quot;,sans-serif"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Estudiante</span><p></p>
                    </p>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />

        
           <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                      Width="172px" />
         <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
        <asp:Label ID="labelEstado" runat="server"></asp:Label>
         <br />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="221px" Width="849px">
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="Cancelar" />
            <asp:UpdatePanel ID="upEstudiante" runat="server" ChildrenAsTriggers="true" UpdateMode="Always">
                <ContentTemplate>
                 
             <asp:Button ID="Button2" runat="server" Text="Buscar"/>
                    <asp:GridView ID="GridView1" runat="server" 
                        AllowPaging="True" 
                        PageSize="3" Width="763px" 
                        BackColor="#DEBA84" 
                        BorderColor="#DEBA84" BorderStyle="None" 
                        BorderWidth="1px" 
                        CellPadding="3" 
                        CellSpacing="2">
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
        <br />
        <br />
    </form>
</body>
</html>
