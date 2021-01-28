<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practicas.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Practicas" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prácticas Prepofesionales</title>
     <link rel="stylesheet" href="../Estilos/estilos.css"  type="text/css" />
    
    <script type="text/javascript">
     function RefreshUpdatePanel() {
        __doPostBack('<%= TextBox1.ClientID %>', '');
       document.getElementById('TextBox4').focus();

        };
        </script>
    <style type="text/css">

       

    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1>
                Resolución para Prácticas Preprofesionales
            </h1>
        <p>
                <asp:Button ID="botonLogin1" runat="server" CssClass="btnBuscar"
                    Height="39px"
                    Text="MENU PRINCIPAL" Width="145px" OnClick="botonLogin0_Click" />
                <ajaxToolkit:ConfirmButtonExtender ID="botonLogin1_ConfirmButtonExtender" runat="server" ConfirmText="Regresar ?" TargetControlID="botonLogin1" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="botonLogin" runat="server" CssClass="btnBuscar" Height="39px" OnClick="botonLogin_Click" Text="Salir" Width="112px" />
                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin" />
            </p>
            <hr />
        <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante" 
            CssClass="btnBuscar" OnClick="btnBuscar_Click"  />

            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
             <br />
             <asp:Label ID="Label3" runat="server" Text="Consejo Destino:"></asp:Label>
            <asp:TextBox ID="txtCodigoConsejoDestino" runat="server"></asp:TextBox>
        </asp:Panel>
        
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>
        <div id="documento">
          
            
          
            <br />
            
            
            <br />
            <asp:TextBox ID="txtFechaHeader"  placeholder="Ambato,21 de Febrero del 2020" runat="server" CssClass="noBorder" Height="16px" Width="233px"></asp:TextBox>
            <br />
            <p class="MsoNormal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Resolución <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" placeholder="0209" Height="16px" Width="61px"></asp:TextBox>
                </span></span></span>-P-CD-FISEI-UTA-&nbsp; <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio2" runat="server"  CssClass="noBorder" placeholder="Ej:2020" Height="16px" Width="56px"></asp:TextBox>
                </span></span></span></span></p>
            <p class="MsoNormal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Ingeniero Mg.<o:p></o:p></span></p>
            <p class="MsoNormal">
                <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" placeholder="Ejm: Ing Julio Cuji "></asp:TextBox>
                </span></p>
            <p class="MsoNormal">
                <o:p><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">COORDINADOR DE LA CARRERA DE</span></b></o:p>
                <span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                <asp:DropDownList ID="dropDownCoord" runat="server" CssClass="noBorder" Width="100%">
                </asp:DropDownList>
                </span></span></span></span></span>
                <p>
                </p>
                <p class="MsoNormal">
                    <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-weight:bold">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL<p></p>
                    </span>
                    <p>
                    </p>
                    <p class="MsoNormal">
                        <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">De mi consideración<p>
                        </p>
                        </span>
                        <p>
                        </p>
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
                            </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">del
                            <asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="Año"></asp:TextBox>
                            </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">, conoció el acuerdo</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp;<span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" placeholder="Ejm: 1363-CAF-FISEI-2019 "></asp:TextBox>
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
                            <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" placeholder="Ejm: Ing Julio Cuji " Width="100%"></asp:TextBox>
                            , Presidente de Consejo Académico de Facultad Encargado, quien sugiere se apruebe el informe de cumplimiento de Prácticas Preprofesionales de el/la señor/ita<asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                            </span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, </span></b><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">estudiante de la carrera de</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> </span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;<span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif">
                            <asp:DropDownList ID="ddlExCarreras" runat="server" CssClass="noBorder" Width="100%">
                            </asp:DropDownList>
                            </span>. Al respecto, RESOLVIÓ:</span></p>
                        <p>
                        </p>
                        </span>
                        <p>
                        </p>
                        <p class="MsoNormal">
                            <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">APROBAR, </span></b><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;">EL INFORME DE CUMPLIMIENTO DE PRÁCTICAS PREPROFESIONALES DE EL/LA SEÑOR/ITA <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                            <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Javier Chavez Loor" ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                            </span>&nbsp;ESTUDIANTE DE LA CARRERA DE
                            <asp:DropDownList ID="ddlExCarreras0" runat="server" CssClass="noBorder" Width="100%">
                            </asp:DropDownList>
                            &nbsp;(<asp:TextBox ID="txtHoras" runat="server" CssClass="noBorder" Height="22px" placeholder="Ejm: 420" Width="44px"></asp:TextBox>
                            HORAS), BAJO EL SIGUIENTE DETALLE:<p>
                            </p>
                            </span>
                            <p>
                            </p>
                            <p class="auto-style1">
                                <p>
                                </p>
                                <p>
                                </p>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <p class="MsoNormal">
                                    <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">LA DOCUMENTACIÓN ORIGINAL A LA QUE SE HACE REFERENCIA EN EL PÁRRAFO QUE ANTECEDE A LA COORDINACIÓN DE LA CARRERA DE </span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">
                                    <asp:DropDownList ID="ddlCarreraLast" runat="server" CssClass="noBorder">
                                    </asp:DropDownList>
                                    &nbsp; </span>PARA SU CORRESPONDIENTE ARCHIVO.</span><p class="MsoNormal">
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
                                                &nbsp;<p class="MsoNormal">
                                                    <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; line-height: 106%; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"><span style="font-size:7.0pt;
mso-bidi-font-size:9.0pt;line-height:115%; font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;"><span style="mso-spacerun:yes">
                                                    <asp:TextBox ID="txtPresiComi" runat="server" CssClass="noBorder" Height="22px" placeholder="Ejm: Ing Andres López" Width="158px"></asp:TextBox>
                                                    </span></span></span>
                                                    <p class="auto-style1" style="tab-stops: center 212.6pt right 425.2pt;">
                                                        <span style="font-size:9.0pt; font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">PRESIDENTE </span>
                                                        <p class="MsoNormal">
                                                            <span style="font-size:7.0pt; line-height:115%;
 font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma; mso-bidi-font-size: 9.0pt; mso-bidi-font-weight: bold;">Cc:<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">
                                                            <asp:TextBox ID="txtCarrera4" runat="server" CssClass="noBorder" Height="17px" placeholder="Ejm: Ing. Julio Jordán" Width="116px"></asp:TextBox>
                                                            </span></span></span>
                                                            <p class="auto-style2">
                                                                <span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span class="auto-style3">Presidente de la Comisión de Prácticas Pre Profesionales&nbsp; </span></span><span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">de la Carrera de <span style="font-size:9.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA"><span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                                                                <asp:DropDownList ID="ddlCarreraComsion" runat="server" CssClass="noBorder" Width="100%">
                                                                </asp:DropDownList>
                                                                </span></span></span></span></span></span>
                                                                <p class="auto-style2">
                                                                    &nbsp;<p class="MsoNormal">
                                                                        <span class="auto-style5">C</span>c:<p class="MsoNormal">
                                                                            <span style="font-size:7.0pt;
mso-bidi-font-size:9.0pt;line-height:115%; font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;"><span style="mso-spacerun:yes">
                                                                            <asp:TextBox ID="txtCarrera5" runat="server" CssClass="noBorder" Height="22px" placeholder="Ejm: Ing Andres López" Width="158px"></asp:TextBox>
                                                                            </span></span>
                                                                            <p class="MsoNormal">
                                                                                <span style="font-size:7.0pt;
mso-bidi-font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif">Coordinador de Vinculación con la Sociedad FISEI</span><p class="MsoNormal">
                                                                                    <span style="font-size:7.0pt;
mso-bidi-font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif">Estudiante</span><br />
                                                                                    <br />
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
                                        </p>
                                    </p>
                                </p>
                            </p>
                        </p>
                    </p>
                </p>
            </p>
                      
          
        </div>
                  <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                     OnClick="Button4_Click" CssClass="btnBuscar" />

                  <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
                   </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="315px" Width="880px">
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"
                OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="X" />
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
