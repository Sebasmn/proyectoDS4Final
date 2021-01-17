<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="PropuestaTitulacionProrrogaGratuita.aspx.cs" 
    Inherits="CreacionDocumentoDemo.Formulario.Titulacion.PropuestaTitulacionProrrogaGratuita" %>

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
        .auto-style1 {
            font-family: Cambria, serif;
            font-size: 9pt;
        }
        .auto-style2 {
            font-family: Cambria, serif;
        }
        .auto-style3 {
            -webkit-appearance: none;
            text-align: center;
            padding-left: 2px;
            padding-right: 2px;
            box-shadow: none;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: 0px;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: 0px;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: 0px;
            border-bottom-style: solid;
            border-bottom-color: inherit;
            border-bottom-width: 1px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
        <br />
        <br />
        <div id="documento">
            <asp:TextBox ID="txtFechaHeader"  placeholder="Ambato,21 de Febrero del 2020" runat="server" CssClass="noBorder" Height="16px" Width="233px"></asp:TextBox>
            
            <p class="MsoNormal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Resolución <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio1" runat="server" CssClass="noBorder" placeholder="0209"></asp:TextBox>
                </span></span></span>-P-CD-FISEI-UTA-2021</span></p>
            <p class="MsoNormal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Ingeniero Mg.<o:p></o:p></span></p>
            <p class="MsoNormal">
                <o:p></o:p>
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                <asp:DropDownList ID="ddlCoordinador" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>
            </p>
              <p class="MsoNormal">
                <o:p><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">PRESIDENTE DE LA UNIDAD DE TITULACIÓN<o:p></o:p></span></b></o:p></p>
            <p class="MsoNormal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-weight:bold">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL<o:p></o:p></span></p>
            <p class="auto-style1">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">Presente.-</span></p>
            <p class="MsoNormal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">De mi consideración:</span></p>
            <p class="auto-style1">
                <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión</span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp; </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp; </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;del día</span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlDia" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;de </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>
                <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">del
                <asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="Año"></asp:TextBox>
                </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">, conoc</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">e&nbsp;&nbsp;&nbsp; </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp;el acuerdo</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp;<span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAcuerdo" runat="server"  CssClass="noBorder" placeholder="Ejm: 1363-CAF-FISEI-2019 "></asp:TextBox>
                </span>&nbsp;</span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">, de fecha <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span></span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp; </span></span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlDia0" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span></span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp;</span></span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">, <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio0" runat="server" CssClass="noBorder" placeholder="Año" Width="30px"></asp:TextBox>
                </span>, </span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">suscrito por el</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">/la</span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> Ingeniero</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">/a</span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" placeholder="Ejm: Ing Julio Cuji "></asp:TextBox>
                , Presidente de 
                </span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                la 
                Unidad de Titulación de esta Unidad Académica, quien sugiere se apruebe la Propuesta de Trabajo de Titulación bajo la Modalidad&nbsp; <b><b style="mso-bidi-font-weight:normal">Proyecto de Investigación</b></b> presentado por
                </span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                el/la señor/ita<asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                </span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, </span></b><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">estudiante de la </span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Ca</span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">rrera de</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> </span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;<span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif"><asp:TextBox ID="txtCarrera1" runat="server" CssClass="noBorder" Height="16px" placeholder="Ejm:Ing Sistemas Comp E Informáticos" Width="234px"></asp:TextBox>
                </span>. Al respecto, RE</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">SUELVE</span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">:</span></p>
             <p>
            </p>
          
            </span>
            <p>
            </p>
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">* APROBAR, </span></b>
                LA PROPUESTA DE TRABAJO DE TITULACIÓN:<span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> "<span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"><asp:TextBox ID="txtTemaTesis" placeholder="Ejm:Ing Sistemas Comp E Informáticos" runat="server" CssClass="noBorder" Height="16px" Width="352px"></asp:TextBox>
                </span>&quot;, PRESENTADO POR EL/LA SEÑOR/ITA <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="223px"></asp:TextBox>
                </span>&nbsp;, ESTUDIANTE DE <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtNumeroSemestre" runat="server" CssClass="auto-style3" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="169px"></asp:TextBox>
                </span> <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                &nbsp;SEMESTRE EN EL PERÍODO ACADÉMICO</span></span> <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> 
                <asp:TextBox ID="txtPerAca" placeholder="Ejm:Ing Sistemas Comp E Informáticos" runat="server" CssClass="auto-style3" Height="16px" Width="297px"></asp:TextBox>
                &nbsp;DE LA </span>CARRERA DE
                <asp:TextBox ID="txtCarrera2" placeholder="Ejm:Ing Sistemas Comp E Informáticos" runat="server" CssClass="noBorder" Height="16px" Width="352px"></asp:TextBox>
                &nbsp;, BAJO LA MODALIDAD DE
                <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">PROYECTO DE INVESTIGACIÓN</span></b>, AUTORIZANDO EL RESGISTRO CORRESPONDIENTE EN LA CARPETA ESTUDIANTIL.</span><p class="MsoNormal">
                        <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">* DESIGNAR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">COMO TUTOR DEL PROYECTO DE INVESTIGACIÓN AL <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">INGENIERO <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> 
                <asp:TextBox ID="txtNombreIngeniero" placeholder="Ejm:Ing Sistemas Comp E Informáticos" runat="server" CssClass="auto-style3" Height="17px" Width="247px"></asp:TextBox>
                &nbsp;.</span></span></b></span><p class="MsoNormal">
                        <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">* INDICAR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">AL ESTUDIANTE QUE DEBÍA CONCLUIR Y APROBAR LA OPCIÓN DE TITULACIÓN ESCOGIDA EN EL PERÍODO ACADÉMICO&nbsp; <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtPeriodoAcademico" runat="server" CssClass="auto-style3" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Ingrese Período académico" Width="273px"></asp:TextBox>
                </span> <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                &nbsp;. POR LO QUE, SE ACOGERÁ A LO DISPUESTO EN LA RESOLUCIÓN <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtCodigoResolucion" runat="server" CssClass="auto-style3" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Ingrese número y código de resolución" Width="273px"></asp:TextBox>
                </span>&nbsp;, DE FECHA <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes1" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>
                        <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                &nbsp;<span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDia1" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>&nbsp;<span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">, </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="Año" Width="30px"></asp:TextBox>
                </span> </span>&nbsp;, EMITIDA POR CONSEJO ACADÉMICO UNIVERSITARIO DE LA UNIVERSIDAD TÉCNICA DE AMBATO, Y AL MEMORANDO <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtMemorando" runat="server" CssClass="auto-style3" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Ingrese código de memorando" Width="273px"></asp:TextBox>
                </span>, DE FECHA&nbsp; <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlDia2" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>&nbsp;DE <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes2" runat="server" CssClass="noBorder">
                </asp:DropDownList>
                </span>
                &nbsp;DE&nbsp; <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio3" runat="server" CssClass="noBorder" placeholder="Año" Width="30px"></asp:TextBox>
                </span> </span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp;, SUSCRITO POR <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtPersonaEncargada" runat="server" CssClass="auto-style3" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Ingrese " Width="224px"></asp:TextBox>
                </span>&nbsp;, ANALISTA JURÍDICA DE LA DIRECCIÓN ACADÉMICA DE LA UNIVERSIDAD TÉCNICA DE AMBATO</span></span></span></span></span></span>.</span><p class="MsoNormal">
                        <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">* AUTORIZAR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">LA <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> SOLICITUD DE <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">PRÓRROGA GRATUITA</span></b> PARA EL PERÍODO ACADÉMICO <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> <span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                        <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtPerioAcad" runat="server" CssClass="auto-style3" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Ingrese " Width="224px"></asp:TextBox>
                </span>.</span></span></span></span></span></span><p class="MsoNormal">
                        <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">* INDICAR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">AL INTERESADO/A QUE DEBERÁ PRESENTAR LOS INFORMES MENSUALES EN LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN HASTA QUE CONCLUYA LA MISMA.&nbsp;&nbsp;&nbsp; </span>
            <p class="MsoNormal">
                        <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">* COMUNICAR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">QUE LOS DOCUMENTOS ORIGINALES CITADOS EN EL PÁRRAFO QUE ANTECEDE REPOSAN EN LOS ARCHIVOS DE LA SECRETARÍA DE LA UNIDAD DE TITULACIÓN DE LA FISEI.&nbsp;&nbsp;&nbsp; </span><p class="MsoNormal">
                        &nbsp;<p class="MsoNormal">
                            <span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">Atentamente,<br />
                            <br />
                            </span>
                            <p class="MsoNormal">
                                <span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">
                                <br />
                                <p class="MsoNormal">
                                    <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;"><span style="mso-bidi-font-weight:bold">
                                    <asp:DropDownList ID="ddlPresidente" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;
                                    </span></span>
                                    <p class="auto-style1" style="tab-stops: center 212.6pt right 425.2pt;">
                                        <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:
bold">PRESIDENTA</span><p class="MsoNormal">
                                            <span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">Cc:<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">
                                            <asp:TextBox ID="txtCarrera4" runat="server" CssClass="noBorder" Height="17px" placeholder="Ejm: Ing. Julio Jordán" Width="116px"></asp:TextBox>
                                            </span></span></span>
                                            <p class="MsoNormal">
                                                <span style="font-size: 8.0pt; font-family: &quot;Tahoma&quot;,sans-serif">(Secretaria Unidad de Titulación anexo carpeta con documentación original completa) </span><span style="font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: &quot;Tahoma&quot;,sans-serif"><span style="mso-spacerun: yes"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> 
                <asp:TextBox ID="txtCarrera5" placeholder="Ejm:Ing Sistemas Comp E Informáticos" runat="server" CssClass="auto-style3" Height="16px" Width="199px"></asp:TextBox>
                </span>&nbsp;&nbsp;(Secretaria de la Carrera de Ingeniería en Sistemas Computacionales e Informáticos)</span></span></p>
            <p class="MsoNormal">
                                <span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">
                                                <span style="font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: &quot;Tahoma&quot;,sans-serif"><span style="mso-spacerun: yes"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;"> 
                <asp:TextBox ID="txtCarrera6" placeholder="Ejm:Ing Sistemas Comp E Informáticos" runat="server" CssClass="auto-style3" Height="16px" Width="199px"></asp:TextBox>
                                                -Tutor</span></span></span></span></p>
                                            <p class="auto-style2">
                                                <span style="font-size: 8.0pt; mso-bidi-font-size: 12.0pt; font-family: &quot;Tahoma&quot;,sans-serif; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-ansi-language: ES; mso-fareast-language: ES; mso-bidi-language: AR-SA">Estudiante</span></p>
                                    </p>
                                </p>
                                </span>
                            </p>
                        </p>
                    </p>
                </p>
            </p>
        </div>
    </form>
</body>
</html>
