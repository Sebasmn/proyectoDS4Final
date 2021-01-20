<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PropuestaTitulacionProrroga.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Titulacion.PropuestaTitulacion" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Propuesta Titulación con Prorroga</title>
     <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" />

    <style type="text/css">



        .auto-style3 {
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
    <form id="form2" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Image ID="escudoLogin" runat="server" ImageUrl="~/Images/EscudoUTA.png" />
            <h1>Resolución para Propuesta de Titulación con Prorroga</h1>
            <p>
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
                    <p class="MsoBodyText">
                        <asp:TextBox ID="txtFecha" runat="server" CssClass="noBorder" placeholder="Ambato,15 de Enero del 2021" Height="16px" Width="191px"></asp:TextBox>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Resolución <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                        </span></span></span></span></span></span></span></span>-P-CD-FISEI-UTA-<span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                        </span></span></span></span></span></span></span>
                    </p>
                    <p class="MsoBodyText">
                        <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Ingeniero<o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" Height="16px" placeholder="Carlos Sánchez" Width="233px"></asp:TextBox>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <b style="mso-bidi-font-weight:
normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">PRESIDENTE DE LA UNIDAD DE TITULACIÓN<o:p></o:p>
                        </span></b>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">FACULTAD DE </span><span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-ansi-language:ES">INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL</span><span lang="ES-EC" style="font-size:
9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Presente.-<o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">De mi consideración:<o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyText">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlSesion" runat="server">
                        </asp:DropDownList>
                        </span></span>&nbsp;de fecha</span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlNombreDia" runat="server">
                        </asp:DropDownList>
                        </span></span></span>&nbsp;<span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia" runat="server">
                        </asp:DropDownList>
                        </span></span></span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">&nbsp;de <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlMes" runat="server">
                        </asp:DropDownList>
                        </span></span>&nbsp;del <span lang="ES-EC" style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio0" runat="server" CssClass="auto-style6" placeholder="2020" Height="16px" Width="58px"></asp:TextBox>
                        </span></span></span></span></span></span></span>, conoce el Acuerdo</span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" Height="16px" placeholder="UTA-UVS-FISEI-2020-0073-M" Width="233px"></asp:TextBox>
                        </span></span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">&nbsp;, de fecha <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlMes0" runat="server">
                        </asp:DropDownList>
                        </span></span>&nbsp;<span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia0" runat="server">
                        </asp:DropDownList>
                        </span></span></span></span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">,</span></span></span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio1" runat="server" CssClass="auto-style6" placeholder="2020" Height="16px" Width="58px"></asp:TextBox>
                        </span></span></span></span></span></span>, suscrito por el <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresidente0" runat="server" CssClass="noBorder" Height="16px" placeholder="Ingeniero Mg. Carlos Sánchez" Width="233px"></asp:TextBox>
                        </span>, Presidente de la Unidad de Titulación de la Facultad, quien sugiere se apruebe la Propuesta de Trabajo de Titulación bajo la Modalidad <b>Proyecto de Investigación</b> presentado por el/la señor/ita</span><span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"> </span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                        </span></span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal">,</b></span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> estudiante de la Carrera de </span><span style="mso-bookmark:_Hlk61627263"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">&nbsp;</span></span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlCarrera" runat="server">
                        </asp:DropDownList>
                        </span></span></span><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">. Al respecto, RESUELVE:</span><span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-ansi-language:ES"><o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoNormal">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="auto-style1" style="mso-add-space: auto; mso-list: l0 level1 lfo1">
                        <![if !supportLists]><span lang="ES-EC" style="font-size:9.0pt;font-family:Symbol;mso-fareast-font-family:
Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">APROBAR </span></b><span lang="ES-EC" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">LA PROPUESTA DE TRABAJO DE TITULACIÓN: </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&quot;</span><span lang="ES-EC" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtTema" runat="server" CssClass="auto-style6" Height="16px" placeholder="Ingresar tema de titulación" Width="533px"></asp:TextBox>
                        </span></span>”, </b></span><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">PRESENTADO POR EL/LA SEÑOR/ITA <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtNombreEstu0" runat="server" CssClass="noBorder" Height="16px" placeholder="Seleccionar estudiante" Width="233px"></asp:TextBox>
                        </span></span>, ESTUDIANTE DE DÉCIMO SEMESTRE EN EL PERÍODO ACADÉMICO <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPeriodo" runat="server" CssClass="noBorder" Height="16px" placeholder="SEPTIEMBRE/2019-FEBRERO/2020" Width="233px"></asp:TextBox>
                        </span></span>&nbsp;DE LA CARRERA DE</span><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">
                        <asp:DropDownList ID="ddlCarrera0" runat="server">
                        </asp:DropDownList>
                        </span></span></span></span><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">, BAJO LA MODALIDAD DE </span><b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">PROYECTO DE INVESTIGACIÓN</span><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">,</span></b><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"> </span><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">AUTORIZANDO EL REGISTRO CORRESPONDIENTE EN LA CARPETA ESTUDIANTIL.<o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoNormal">
                        <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing">
                        <![if !supportLists]><span lang="ES-TRAD" style="font-size:9.0pt;font-family:Symbol;mso-fareast-font-family:
Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">DESIGNAR,</span></b><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> COMO TUTOR DEL PROYECTO DE INVESTIGACIÓN AL <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtTutor" runat="server" CssClass="noBorder" Height="16px" placeholder="INGENIERO FRANKLIN SALAZAR" Width="233px"></asp:TextBox>
                        </span></span>.<o:p></o:p>
                        </b></span>
                    </p>
                    <p class="auto-style2" style="mso-add-space: auto;">
                        <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span></b>
                    </p>
                    <p class="auto-style3" style="mso-add-space: auto; mso-list: l1 level1 lfo2">
                        <![if !supportLists]><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:Symbol;
mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">INDICAR, </span></b><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:
&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:
Tahoma">AL ESTUDIANTE QUE DEBE CONCLUIR Y APROBAR LA OPCIÓN DE TITULACIÓN ESCOGIDA EN EL PERÍODO ACADÉMICO <span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPeriodo0" runat="server" CssClass="noBorder" Height="16px" placeholder="SEPTIEMBRE/2019-FEBRERO/2020" Width="233px"></asp:TextBox>
                        </span></span></span>. CASO CONTRARIO SE ACOGERÁ A LO DISPUESTO EN </span><span lang="ES-EC" style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">LA RESOLUCIÓN <span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtResolucion" runat="server" CssClass="noBorder" Height="16px" placeholder="CAU-P-080-2020" Width="233px"></asp:TextBox>
                        </span></span></span>, DE FECHA <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlMes1" runat="server">
                        </asp:DropDownList>
                        </span></span></span>&nbsp;<span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><asp:DropDownList ID="ddlNumeroDia1" runat="server">
                        </asp:DropDownList>
                        </span></span></span>, <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio2" runat="server" CssClass="auto-style6" placeholder="2020" Height="16px" Width="58px"></asp:TextBox>
                        </span></span></span></span></span></span></span>, EMITIDA POR CONSEJO ACADÉMICO UNIVERSITARIO DE LA UNIVERSIDAD TÉCNICA DE AMBATO, Y AL MEMORANDO <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtMemorando" runat="server" CssClass="noBorder" Height="16px" placeholder="UTA-DAC-2020-0084-M" Width="233px"></asp:TextBox>
                        </span></span>, DE FECHA</span><span style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlNumeroDia2" runat="server">
                        </asp:DropDownList>
                        </span></span></span><span style="mso-bookmark:_Hlk61627263"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">&nbsp;</span></span></span></span><span lang="ES-EC" style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">DE <span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                        <asp:DropDownList ID="ddlMes2" runat="server">
                        </asp:DropDownList>
                        </span></span></span>&nbsp;DE <span style="mso-bookmark:_Hlk61627263"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtAnio3" runat="server" CssClass="auto-style6" placeholder="2020" Height="16px" Width="58px"></asp:TextBox>
                        </span></span></span></span></span></span></span></span><span style="mso-bookmark:_Hlk61627263"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">,</span></span></span></span></span></span></span></span><span lang="ES-EC" style="font-size:9.0pt;
line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> SUSCRITO POR LA AB. FABIOLA COPO, ANALISTA JURÍDICA DE LA DIRECCIÓN ACADÉMICA DE LA UNIVERSIDAD TÉCNICA DE AMBATO.<b style="mso-bidi-font-weight:normal"><o:p></o:p>
                        </b></span>
                    </p>
                    <p class="auto-style4" style="mso-add-space: auto">
                        <b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:
9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span></b>
                    </p>
                    <p class="auto-style7" style="mso-add-space: auto; mso-list: l0 level1 lfo1">
                        <![if !supportLists]><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:Symbol;
mso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">AUTORIZAR, </span></b><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold">LA SOLICITUD DE </span><b style="mso-bidi-font-weight:
normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">PRÓRROGA GRATUITA</span></b><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold"> PARA EL PERÍODO ACADÉMICO</span><span style="font-size:9.0pt;line-height:105%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold"> </span><b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:105%;font-family:
&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:
Tahoma"><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPeriodo1" runat="server" CssClass="noBorder" Height="16px" placeholder="SEPTIEMBRE/2019-FEBRERO/2020" Width="233px"></asp:TextBox>
                        </span></span></span></span>.<o:p></o:p>
                        </span></b>
                    </p>
                    <p class="auto-style3" style="mso-add-space: auto; mso-pagination: none; mso-list: l1 level1 lfo2">
                        <![if !supportLists]><span lang="ES-EC" style="font-size:9.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b style="mso-bidi-font-weight:normal"><span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">INDICAR, </span></b><span lang="ES-EC" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">AL INTERESADO/A QUE DEBERÁ PRESENTAR LOS INFORMES MENSUALES EN LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN HASTA QUE CONCLUYA LA MISMA.<o:p></o:p>
                        </span>
                    </p>
                    <p class="auto-style5" style="mso-add-space: auto; mso-pagination: none">
                        <span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes">&nbsp;</span><o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing">
                        <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing">
                        <![if !supportLists]><span lang="ES-TRAD" style="font-size:9.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">COMUNICAR,</span></b><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> QUE LOS DOCUMENTOS ORIGINALES CITADOS EN EL PÁRRAFO QUE ANTECEDE REPOSAN EN LOS ARCHIVOS DE LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN DE LA FISEI.<o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing">
                        <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2">
                        <span lang="ES-EC" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Atentamente,<o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2">
                        <span lang="ES-EC" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:
bold">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2">
                        <span lang="ES-EC" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:
bold">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2">
                        <span lang="ES-EC" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:
bold">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoBodyTextFirstIndent2">
                        <span lang="ES-EC" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:
bold">
                        <o:p>&nbsp;</o:p>
                        </span>
                    </p>
                    <p class="MsoHeader">
                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresidente1" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Pilar Urrutia, Mg." Width="233px"></asp:TextBox>
                        </span>
                    </p>
                    <p class="MsoHeader">
                        <span lang="ES-EC" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold">PRESIDENTA
                        <o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoHeader">
                        <span lang="ES-EC" style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Cc:<span style="mso-bidi-font-weight:bold"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtSecretariaU" runat="server" CssClass="noBorder" Height="16px" placeholder="Ab. Elena Arcos" Width="233px"></asp:TextBox>
                        </span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>(Secretaria Unidad de Titulación anexo carpeta con documentación original completa)<o:p></o:p>
                        </span></span>
                    </p>
                    <p class="MsoNoSpacing">
                        <span lang="ES-TRAD" style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="mso-bidi-font-weight:bold"><span lang="ES-EC" style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtSecretariaCarrera" runat="server" CssClass="noBorder" Height="16px" placeholder="Lcda. Gabriela Flores" Width="233px"></asp:TextBox>
                        </span></span></span></span></span><span style="mso-bidi-font-weight:bold"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><span style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">&nbsp;</span></span></span></span></span><span lang="ES-TRAD" style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">(Secretaria de la Carrera de Ingeniera en Sistemas Computacionales e Informáticos)<span style="mso-spacerun:yes">&nbsp; </span>
                        <o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoNoSpacing">
                        <span lang="ES-TRAD" style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;<b style="mso-bidi-font-weight:normal"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES-EC" style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtTutor0" runat="server" CssClass="noBorder" Height="16px" placeholder="INGENIERO FRANKLIN SALAZAR" Width="233px"></asp:TextBox>
                        </span></span></span></b></span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></span></b><span lang="ES-TRAD" style="font-size:7.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">-Tutor<o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoNormal">
                        <span lang="ES-EC" style="font-size:7.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Estudiante</span><span lang="ES-EC"><o:p></o:p>
                        </span>
                    </p>
                    <p class="MsoNormal" style="text-align:justify">
                        &nbsp;</p>
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
        <asp:Label ID="labelEstado" runat="server"></asp:Label>
         <br />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="221px" Width="849px">
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
    </form>
</body>
</html>
