<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reingreso.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.TramitesFISEI.Reingreso" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Re-Ingreso</title>
      <link rel="stylesheet" href="../../Estilos/estilos.css"  type="text/css" />
    <style type="text/css">


        </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1>
              Resolución para Reingreso a Carrera  
            </h1>
        <p>
                <asp:Button ID="botonLogin1" runat="server" CssClass="btnBuscar"
                    Height="39px"
                    Text="MENU PRINCIPAL" Width="145px" OnClick="botonLogin0_Click" />
                <ajaxToolkit:ConfirmButtonExtender ID="botonLogin1_ConfirmButtonExtender" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin1" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="botonLogin" runat="server" CssClass="btnBuscar" Height="39px" OnClick="botonLogin_Click" Text="Salir" Width="112px" />
                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin" />
            </p>
            <hr />
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante"   CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
             <br />
             <asp:Label ID="Label3" runat="server" Text="Consejo Destino:"></asp:Label>
            <asp:TextBox ID="txtCodigoConsejoDestino" runat="server"></asp:TextBox>
        </asp:Panel>
       
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>

        <div id="documento">
            <p class="MsoBodyText" style="margin-bottom:0cm">
              <asp:TextBox ID="txtFecha" placeholder="Ambato,15 de Enero del 2021" CssClass="noBorder"   runat="server" OnTextChanged="txtFecha_TextChanged"></asp:TextBox>
            </p>
            <p class="MsoBodyText" style="margin-bottom:0cm">
                &nbsp;</p>
            <p class="MsoBodyText" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Resolución <span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtSecuencia" runat="server" placeholder="0209" Height="16px" Width="53px" CssClass="noBorder"></asp:TextBox>
                </span></span></span></span>-P-CD-FISEI-UTA-<span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio1" runat="server" placeholder="2020" CssClass="noBorder"></asp:TextBox>
          </span></span></span></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">Ingeniero, Mg.</sIngeniero, Mg.</span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
            <asp:TextBox ID="txtCoordinador"  placeholder="Ing. Carlos Sánchez, Mg." runat="server" CssClass="noBorder" Height="16px" Width="233px"></asp:TextBox>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">COORDINADOR DE LAS CARRERAS DE&nbsp;        
                    
                    <asp:DropDownList ID="txtCarrerasCoorDI" runat="server" CssClass="noBorder" Font-Bold="True" Font-Size="Smaller" Width="100%">
                </asp:DropDownList>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL <o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;tab-stops:440.25pt">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">Presente<span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif">De mi consideración:<o:p></o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm">
                <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión
                                      <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span>&nbsp;de fecha <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>de <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span>&nbsp;de <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                      </span></span>, conoció el Acuerdo <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAcuerdo" runat="server" placeholder="UTA-UVS-FISEI-2020-0073-M" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span>, de fecha <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum0" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span></span>, <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                      </span></span></span>, suscrito por <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtPresiCoord" runat="server" placeholder="Ing. Edisson Patricio Jordán" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span></span>&nbsp;, Presidente de Consejo Académico de Facultad Encargado a la fecha, quien remite con fines de aprobación el informe de Reingreso de el/la señor/ita <b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtNombreEstu1" runat="server" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px" CssClass="noBorder"></asp:TextBox>
                                      </span></span>&nbsp;</b><span style="mso-spacerun:yes">&nbsp;</span>con C.C <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula" runat="server" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span>, quien solicita reingreso a la Carrera de <span style="mso-spacerun:yes"><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                                      <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlCarreras" runat="server" CssClass="noBorder">
                                      </asp:DropDownList>
                                      </span></span> </span>&nbsp; . </span>Al respecto, RESUELVE: </span><o:p></o:p>
            </p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></b></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                <b style="mso-bidi-font-weight:normal">
                    
                    <p id="espacio" style="line-height:25px">
                    <span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">APROBAR LA SOLICITUD DE  LA SOLICITUD DE REINGRESO PRESENTADA POR LA SEÑORITA <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtNombreEstu2" runat="server" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="223px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></b></span>&nbsp;CON <b style="mso-bidi-font-weight:normal">C.C <span style="mso-bidi-font-weight:
bold"><span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula0" runat="server" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span></span>&nbsp;</span></b>, A LA CARRERA DE   <asp:DropDownList ID="ddlCarreras1" CssClass="noBorder" runat="server">
                                      </asp:DropDownList> DE LA UNIVERSIDAD TÉCNICA DE AMBATO PARA EL PERÍODO ACADÉMICO <span style="font-size: 9.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtPeriodo" runat="server" placeholder="junio-enero/2020" CssClass="noBorder"></asp:TextBox>
                                      </span></span></span></span></span>, PARA APROBAR LAS ASIGNATURAS CONFORME A LA MALLA CURRICULAR VIGENTE, EN BASE A LO ESTABLECIDO EN EL ART. 95 DEL REGLAMENTO DE REGIMEN ACADÉMICO DEL CES QUE TEXTUALMENTE DICE:<i style="mso-bidi-font-style:
normal"> “Cada IES es responsable de definir las fechas, plazos y condiciones en los que se llevarán a cabo los procesos de reingreso, que no podrán exceder los diez (10) años a partir del último período académico en el que se produjo la interrupción de estudios. Si un estudiante reingresa a una carrera o programa que no se encuentre vigente y que su estado corresponda a “no vigente habilitado para registro de títulos”, las IES podrán implementar un plan de reingreso que garantice al estudiante la culminación de los estudiantes, alcanzando los objetivos del aprendizaje y cumpliendo con el perfil de egreso”</i>, SIEMPRE Y CUANDO EXISTAN CUPOS DISPONIBLES.<o:p></o:p></span></p>
                    <p>
                </p>
                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                    <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                    <p>&nbsp;</p>
                    </span>
                    <p>
                    </p>
                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                        <p>
                            &nbsp;</p>
                        </span>
                        <p>
                        </p>
                        <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                            <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR,LA DOCUMENTACIÓN ORIGINAL A LA QUE SE HACE REFERENCIA A LA COORDINACIÓN DE LA CARRERA DE&nbsp;
                            <asp:DropDownList ID="txtCarrerasCoorD" runat="server" CssClass="noBorder" Font-Bold="True" Font-Size="Smaller" Width="100%">
                            </asp:DropDownList>
                            &nbsp;PARA SU CORRESPONDIENTE ARCHIVO.<p>
                            </p>
                            </span></b>
                            <p>
                            </p>
                            <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                                <p>
                                    &nbsp;</p>
                                </span>
                                <p>
                                </p>
                                <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                                    <span style="font-size:10.0pt;mso-bidi-font-size:8.5pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1">
                                    <p>
                                        &nbsp;</p>
                                    </span>
                                    <p>
                                    </p>
                                    <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify">
                                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Atentamente,<p>
                                        </p>
                                        </span>
                                        <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">
                                        <p>
                                            &nbsp;</p>
                                        <p>
                                            &nbsp;</p>
                                        </spa&nbsp;</o:p>
                                        </span>
                                        <p>
                                        </p>
                                        <p class="MsoBodyText" style="text-indent:.05pt; line-height:115%; margin-bottom: 0cm;">
                                            <span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; line-height: 106%;">
                                            <b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                            <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                                            </span></span></b>
                                            </span>
                                        </p>
                                        <p class="MsoHeader" style="text-align:justify;text-indent:.05pt;line-height:
115%">
                                            <span style="font-size:9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">PRESIDENTE </span>
                                        </p>
                                        <p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:0cm;
margin-left:18.0pt;text-align:justify;text-indent:-18.0pt">
                                            <span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">cc:<span style="mso-tab-count:
1">&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;
mso-bidi-font-family:Tahoma">Presidente de Consejo Académico de Facultad<p>
                                            </p>
                                            </span>
                                            <p>
                                            </p>
                                            <p class="MsoNormal" style="margin-top:0cm;margin-right:0cm;margin-bottom:0cm;
margin-left:18.0pt;text-align:justify;text-indent:-18.0pt">
                                                <span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-fareast-font-family:&quot;Arial Unicode MS&quot;;mso-bidi-font-family:
Tahoma"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Estudiante</span><span style="font-size:9.0pt;line-height:106%"><p>
                                                </p>
                                                </span>
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
                  </span></b></b></span></b></span>
          </ContentTemplate>
        </asp:UpdatePanel>

        <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                      Width="172px" OnClick="Button4_Click" CssClass="btnBuscar" />
        &nbsp;<ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="290px" Width="843px">
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
                                    <asp:Button ID="botonSeleccionar" 
                                        CssClass="btnBuscarGrid"
                                        runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" />
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
