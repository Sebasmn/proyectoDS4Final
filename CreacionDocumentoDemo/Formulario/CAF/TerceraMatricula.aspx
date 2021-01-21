<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TerceraMatricula.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.CAF.TerceraMatricula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tercera Matrícula</title>
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
                 Resolución para 3ra Matrícula
                
            </h1>
        <p>
                <asp:Button ID="botonLogin0" runat="server" CssClass="btnBuscar"
                    Height="39px"
                    Text="MENU PRINCIPAL" Width="145px" OnClick="botonLogin0_Click" />
                <ajaxToolkit:ConfirmButtonExtender ID="botonLogin0_ConfirmButtonExtender" runat="server"
                    ConfirmText="Regresar ?" 
                    TargetControlID="botonLogin0" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="botonLogin" runat="server" CssClass="btnBuscar" Height="39px" OnClick="botonLogin_Click" Text="Salir" Width="112px" />
                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin" />
                
            </p>
            <hr />
    <asp:Panel ID="menuOpciones" runat="server">
            <asp:Button ID="btnBuscar"
                runat="server"
                Text="Buscar Estudiante"   CssClass="btnBuscar" OnClick="btnBuscar_Click"  />
                    <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
            <br />
        <asp:Label ID="Label2" runat="server" Text="Consejo Destino:"></asp:Label>
            <asp:TextBox ID="txtCodigoConsejoDestino" runat="server"></asp:TextBox>
            <br />
        </asp:Panel>
                <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>
    
        <div id="documento">

            <p class="MsoNormal">
                  <asp:TextBox ID="txtFecha" runat="server" CssClass="noBorder" OnTextChanged="txtFecha_TextChanged" placeholder="Ambato,15 de Enero del 2021"></asp:TextBox>
              </p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">Resolución <span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
9.0pt;mso-bidi-font-size:8.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtSecuencia" runat="server" CssClass="noBorder" Height="16px" placeholder="0209" Width="53px"></asp:TextBox>
                  </span></span></span></span></span></span>-P-CD-FISEI-UTA-<span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;color:black;
mso-themecolor:text1"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                  </span></span></span></span>
                </span>
            </p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">Ingeniero, Mg.<o:p></o:p></span></p>
            <p class="MsoNormal">
                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma">
                      <asp:TextBox ID="txtCoordinador" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez, Mg." Width="233px"></asp:TextBox>
                      </span>
                  </p>
            <p class="MsoNormal">
                <b><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif">COORDINADOR DE LAS CARRERAS DE <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1">
                <asp:DropDownList ID="ddlIndex" runat="server" CssClass="noBorder" Font-Bold="True" Font-Size="Smaller" Width="100%">
                </asp:DropDownList>
                </span></b>
                  </span></b>
            </p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL <o:p></o:p></span>
            </p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">Presente.-<o:p></o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><span style="mso-spacerun:yes">&nbsp; </span><o:p></o:p></span>
            </p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif">De mi consideración:<o:p></o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión
                                  <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlSesion" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span>&nbsp;del<span style="mso-spacerun:yes">&nbsp; </span>día
                                  <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlNombreDia" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span><span style="mso-spacerun:yes"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span></span>&nbsp;de <span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlMes" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span>&nbsp;de&nbsp; <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAnio1" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                  </span></span></span></b></span></span>, conoce el Acuerdo <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAcuerdo" runat="server" CssClass="noBorder" placeholder="UTA-UVS-FISEI-2020-0073-M"></asp:TextBox>
                                  </span></span></span></b></span></span>&nbsp;, de fecha <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlMes0" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  &nbsp;</span></span></span></span></b></span> <span style="mso-spacerun:yes">&nbsp;</span><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDiaNum0" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b></span></span></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>de <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="2020"></asp:TextBox>
                                  </span></span></span></b></span></span></span>, suscrito por el/la <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtPresiConsejo" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán" Width="100%"></asp:TextBox>
                                  </span></span></span></span></b></span></span>, Presidente de Consejo Académico de Facultad, quien </span></em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">sugiere se autorice el informe de <b style="mso-bidi-font-weight:normal">TERCERA MATRÍCULA </b><em><span style="font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;font-style:normal"><span style="mso-spacerun:yes"><span style="font-size:10.0pt;line-height:106%;
font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold">del señor </span>&nbsp;<b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtNombreEstu1" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                                  </span></span></b></span></span></span> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  &nbsp;</span></span></span></b></span></span></b><b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">, </span></b><span style="font-size:
10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">con C.C.&nbsp; <b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtCedula" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px"></asp:TextBox>
                                  </span></span></span></span></span> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span></span></span></b></span><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:
Tahoma;mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"> en las asignaturas: <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAsignaturas" runat="server" CssClass="noBorder" placeholder="Cálculo y Algebra" Width="100%"></asp:TextBox>
                                  </span></span></span></span></b></span></span>&nbsp;de la Carrera de&nbsp; <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlCarreras" runat="server" CssClass="noBorder">
                                  </asp:DropDownList>
                                  </span></span></span></b>
                                  </span>
                                  <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  &nbsp;</span></span></span></span></b></span> de la Universidad Técnica de Ambato, para el período académico&nbsp; <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtPeriodo" runat="server" CssClass="noBorder" placeholder="junio-enero/2020"></asp:TextBox>
                                      </span></span></span></span></b></span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      &nbsp;</span></span></span></span></span></b></span></span><span style="font-size:
10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:Tahoma;
mso-ansi-language:ES-EC;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">. Al respecto RESUELVE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp; </span><o:p></o:p></span></em></span>
            </p>
            <p class="MsoNormal">
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><o:p>&nbsp;</o:p></span></em></p>
            <p class="MsoNormal">
                <em><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal"><o:p>&nbsp;</o:p></span></em></p>
            <p>
                <em><b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">AUTORIZAR</span></b><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">, LA SOLICITUD DE<b style="mso-bidi-font-weight:normal"> TERCERA MATRÍCULA</b> PRESENTADA POR EL SEÑOR <b style="mso-bidi-font-weight:
normal"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><b style="mso-bidi-font-weight:
normal"> <span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtNombreEstu2" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Luis Andres Loor M." ToolTip="Busque un estudiante" Width="100%"></asp:TextBox>
                                  </span></span></b></span></span></span></b></span></span></span>, </b>CON C.C. <span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtCedula0" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="1805214551" ToolTip="Busque un estudiante" Width="122px"></asp:TextBox>
                                  </span></span></span></span></span></b></span></span></span></span></span><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <b style="mso-bidi-font-weight:normal"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">&nbsp;</span></span></span></span></span></span></b></span></span></span></span><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><b style="mso-bidi-font-weight:normal">, </b>ESTUDIANTE DE LA CARRERA DE <span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt; font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma; line-height: 106%;"><span style="font-size:10.0pt; font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma" lang="ES"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:DropDownList ID="ddlCarreras0" runat="server" CssClass="noBorder" Width="100%">
                                  </asp:DropDownList>
                                  </span></span></span>
                                  </span>
                                  </b></span></span></span></span></span></span><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">&nbsp; </span>
                                  </span>
                                  </span>
                                  </span></span></b></span></span></span></span></span><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">&nbsp;EN LAS ASIGNATURAS DE:<b style="mso-bidi-font-weight:normal">&nbsp; <span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <asp:TextBox ID="txtAsignaturas0" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán" Width="100%"></asp:TextBox>
                                  </span></span></span></span></b></span></span></span></span></span></span></span><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                  <span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">&nbsp;</span></span></span></span></span></span></b></span></span></span></span></span><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">, </span></b><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">PARA EL PERÍODO ACADÉMICO <span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span lang="ES" style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtPeriodo0" runat="server" CssClass="noBorder" placeholder="junio-enero/2020"></asp:TextBox>
                                      </span></span></span></span></span></b></span></span></span></span></span></span><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma"><span style="font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span style="mso-spacerun: yes"><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Tahoma; mso-ansi-language: ES-EC; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"> <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <span style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal">&nbsp;</span></span></span></span></span></span></b></span></span></span></span></span><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"><b style="mso-bidi-font-weight:normal">,</b> DE CONFORMIDAD CON LO DISPUESTO EN EL REGLAMENTO DE REGIMEN ACADEMICO DEL CES</span><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">, “ARTÍCULO 91.- TERCERA MATRÍCULA. – “CUANDO UN ESTUDIANTE REPRUEBE POR TERCERA VEZ UNA ASIGNATURA, CURSO O SU EQUIVALENTE, NO PODRÁ CONTINUAR, NI EMPEZAR LA MISMA CARRERA EN LA MISMA IES. DE SER EL CASO, PODRÁ SOLICITAR EL INGRESO EN LA MISMA CARRERA EN OTRAS IES, QUE, DE SER PUBLICA, NO APLICARÁ EL DERECHO A GRATUIDAD. EN EL CASO QUE EL ESTUDIANTE DESEE CONTINUAR EN LA MISMA IES O EN OTRAS IES, PODRÁ HOMOLOGAR LAS ASIGNATURAS, CURSOS O SUS EQUIVALENTES EN OTRA CARRERA QUE NO CONSIDERE LA O LAS ASIGNATURAS, CURSOS O SUS EQUIVALENTES QUE FUERON OBJETO DE LA TERCERA MATRICULA. ESTA DISPOSICIÓN APLICA PARA EL APRENDIZAJE DE UNA SEGUNDA LENGUA, SIEMPRE QUE FORME PARTE DEL PLAN DE ESTUDIOS DE LA CARRERA O PROGRAMA COMO COMPONENTE DE LAS UNIDADES BÁSICA Y/O PROFESIONAL.” </span><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;font-style:normal">Y, DE ACUERDO A LO ESTABLECIDO EN LA RESOLUCIÓN 0486-CU-P-2020,</span></em><span lang="ES-TRAD" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:
ES-TRAD"> DE FECHA ABRIL 14, 2020,</span><em><span lang="ES" style="font-size:
10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
font-style:normal"> EMITIDA POR EL HONORABLE CONSEJO UNIVERSITARIO DE LA UNIVERSIDAD TÉCNICA DE AMBATO, CON LA </span></em><span lang="ES-TRAD" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:
ES-TRAD">QUE SE DEJA SIN EFECTO LO ESTABLECIDO EN EL &quot;INSTRUCTIVO PARA REALIZAR CAMBIOS DE CARRERA, CAMBIOS DE UNIVERSIDADES, REINGRESOS, ANULACIÓN DE MATRÍCULAS, RETIRO DE ASIGNATURAS Y TERCERAS MATRÍCULAS&quot;, APROBADO MEDIANTE RESOLUCIÓN 1519-CU-P-2016 DEL 02 DE AGOSTO DE 2016, EN LA PARTE PERTINENTE AL CAPÍTULO III, RESPECTO A LA “PERTINENCIA DEL OTORGAMIENTO DE TERCERA MATRÍCULA”.</span><span lang="ES-TRAD" style="font-size:10.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif"> </span><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif"><o:p></o:p></span>
            </p>
            <p class="MsoNormal">
                <span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif"><o:p>&nbsp;</o:p></span></p>
            <p>
                <b style="mso-bidi-font-weight:
normal"><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">AUTORIZAR</span></b><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">, A LA SECRETARIA DE CARRERA EMITA LA ORDEN DE COBRO EN BASE AL ARANCEL ESTABLECIDO Y VERIFIQUE EL PAGO CORRESPONDIENTE. <o:p></o:p></span>
            </p>
            <p>
                <span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p>
                <b><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">SOLICITAR.</span></b><span lang="ES" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma"> A <b><span style="mso-spacerun:yes">&nbsp;</span></b>LA SECRETARIA DE CARRERA QUE UNA VEZ SUPERADA LA EMERGENCIA SANITARIA POR COVID 19, VERIFIQUE QUE LOS DATOS Y DOCUMENTACIÓN CONSIGNADA PARA EL PRESENTE TRÁMITE ESTÉ COMPLETA Y CUMPLA CON TODOS LOS REQUISITOS EXIGIDOS, CASO CONTRARIO INFORMARÁ EL PARTICULAR PARA LA APLICACIÓN DE LO DISPUESTO EN LA </span><span lang="ES-TRAD" style="font-size:10.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:
ES-TRAD">RESOLUCIÓN: CAU-P-229-2020, DE FECHA ABRIL 15, 2020, SUSCRITA POR LA DRA. MARY CRUZ, PRESIDENTA DE CONSEJO ACADÉMICO UNIVERSITARIO DE LA UTA, A TRAVÉS DE LA CUAL INDICA: “<i>AUTORIZAR</i> <i>A LAS DIFERENTES UNIDADES ACADÉMICAS, QUE DURANTE EL ESTADO DE EMERGENCIA, RECEPTEN LOS TRÁMITES ACADÉMICOS ENVIADOS POR MEDIOS ELECTRÓNICOS CON SUS RESPECTIVOS DOCUMENTOS DE RESPALDO; EN CASO DE QUE SE REQUIERA REGISTROS O DOCUMENTACIÓN QUE REPOSA EN LAS SECRETARIAS, TERMINADA LA EMERGENCIA, SE VERIFICARÁ LA VERACIDAD DE LOS MISMOS, SIN PERJUICIO DE LA NULIDAD DEL TRÁMITE DE NO PODER COMPROBAR EL CUMPLIMIENTO DE LOS REQUISITOS O VALIDEZ DEL EXPEDIENTE ENVIADO”.<o:p></o:p></i></span></p>
            <p class="MsoNormal">
                <span lang="ES-TRAD" style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;color:black;mso-themecolor:text1;mso-ansi-language:
ES-TRAD"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:10.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR, </span></b><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">LA DOCUMENTACIÓN ORIGINAL A LA QUE SE HACE REFERENCIA EN EL PÁRRAFO QUE ANTECEDE A LA COORDINACIÓN DE LAS CARRERAS DE </span><span style="font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif">INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE PARA </span><span style="font-size:10.0pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">EL TRÁMITE CORRESPONDIENTE Y SU POSTERIOR ARCHIVO.<o:p></o:p></span></p>
            <p class="MsoBodyTextFirstIndent2">
                <span style="font-size:10.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoBodyTextFirstIndent2">
                <span style="font-size:10.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Atentamente,<o:p></o:p></span></p>
            <p class="MsoBodyTextFirstIndent2">
                <span style="font-size:10.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><o:p>&nbsp;</o:p></span></p>
            <p class="MsoHeader">
                <asp:TextBox ID="txtPresidente" runat="server" CssClass="noBorder" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="132px"></asp:TextBox>
                <p class="MsoHeader">
                    <span style="font-size:10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
color:black;mso-themecolor:text1;mso-bidi-font-weight:bold">PRESIDENTA<p class="MsoHeader">
                        <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="mso-spacerun:yes"></span>Cc:<span style="mso-spacerun:yes"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; <em><span style="font-size: 10.0pt; line-height: 106%; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma; font-style: normal"><span lang="ES" style="font-size:
10.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-family:Tahoma"><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                        <asp:TextBox ID="txtPresiConsejo0" runat="server" CssClass="noBorder" placeholder="Ing. Edisson Patricio Jordán"></asp:TextBox>
                        </span></span></span></span></b></span></span></span></em></span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>, <span style="mso-bidi-font-weight:bold">Presidente de Consejo Académico de Facultad
                        <p class="MsoHeader">
                            <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;mso-bidi-font-weight:bold"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Estudiante</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif"><p></p>
                            </span>
                        </p>
                        </span></span></span>
                    </p>
                    </span>
                </p>

        </div>
                  </span></span></span></span>
     </ContentTemplate>
        </asp:UpdatePanel>

          <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento"
                      Width="172px" OnClick="Button4_Click" />
         <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="318px" Width="838px">
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
                                    <asp:Button ID="botonSeleccionar"  CssClass="btnBuscarGrid" runat="server" CausesValidation="False" CommandName="Select" Text="Seleccionar" />
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
