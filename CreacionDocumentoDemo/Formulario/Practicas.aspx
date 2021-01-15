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
            text-align: justify;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin: 0cm;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
        <br />
        <br />
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante" Height="27px" Width="312px" CssClass="btnBuscar"  />
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>

             
           
        <div id="documento">
          
            
          
            <br />
            
            
            <br />
            <asp:TextBox ID="txtFechaHeader" runat="server"></asp:TextBox>
            <br />
            <p class="MsoNormal">
                <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Resolución 2268-P-CD-FISEI-UTA-2019<o:p></o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Ingeniero Mg.<o:p></o:p></span></p>
            <p class="MsoNormal">
                <o:p></o:p>
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">
                <asp:DropDownList ID="ddlCoordinador" runat="server">
                </asp:DropDownList>
                </span>
            </p>
            <p class="MsoNormal">
                <o:p><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">COORDINADOR DE LA CARRERA DE INGENIERÍA EN SISTEMAS COMPUTACIONALES E INFORMÁTICOS, TECNOLOGÍAS DE LA INFORMACIÓN Y SOFTWARE ENCARGADO<o:p></o:p></span></b></o:p></p>
            <p class="MsoNormal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-fareast-font-family:
&quot;Arial Unicode MS&quot;;mso-bidi-font-weight:bold">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL<o:p></o:p></span></p>
            <p class="MsoNormal">
                <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">De mi consideración<o:p></o:p></span></p>
            <p class="auto-style1">
                <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión</span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp; </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlSesion" runat="server">
                </asp:DropDownList>
                </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp; </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;del día</span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlDia" runat="server">
                </asp:DropDownList>
                </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;de </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes" runat="server">
                </asp:DropDownList>
                </span>
            </p>
            <p class="auto-style1">
                <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">del
                <asp:TextBox ID="txtAnio" placeholder="Año" runat="server"></asp:TextBox>
                </span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">, conoció el acuerdo 1363-CAF-FISEI-2019, de fecha <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlMes0" runat="server">
                </asp:DropDownList>
                </span> </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp; </span></span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:DropDownList ID="ddlDia0" runat="server">
                </asp:DropDownList>
                </span></span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">&nbsp;</span></span><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">, <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtAnio0" placeholder="Año" runat="server"></asp:TextBox>
                </span>, </span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">suscrito por el</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">/la</span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> Ingeniero</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">/a</span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                <asp:TextBox ID="txtPresidente" placeholder="Ejm: Ing Julio Cuji " runat="server"></asp:TextBox>
                , Presidente de Consejo Académico de Facultad Encargado, quien sugiere se apruebe el informe de cumplimiento de Prácticas Preprofesionales de el/la señor/ita<asp:TextBox ID="txtNombreEstu1" runat="server" placeholder="Nombres y Apellidos Estudiante" EnableViewState="true" Height="16px" Width="223px" ToolTip="Busque un estudiante"></asp:TextBox>
                </span>
                <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span><b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, </span></b><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">estudiante de la carrera de</span><span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> </span><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;<span style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif"><asp:TextBox ID="txtCarrera1" runat="server" Height="16px" Width="234px"></asp:TextBox>
                </span>. Al respecto, RESOLVIÓ:<p></p>
                </span>
            </p>
            <p class="MsoNormal">
                <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">APROBAR, </span></b><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif">EL INFORME DE CUMPLIMIENTO DE PRÁCTICAS PREPROFESIONALES DE EL/LA SEÑOR/ITA <span lang="ES-TRAD" style="font-size: 9.0pt; font-family: &quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma">
                <asp:TextBox ID="txtNombreEstu2" runat="server"
                    EnableViewState="true"
                    placeholder="Nombres y Apellidos Estudiante"
                    Height="16px" Width="223px" ToolTip="Busque un estudiante"></asp:TextBox>
                </span>&nbsp;ESTUDIANTE DE LA CARRERA DE
                <asp:TextBox ID="txtCarrera2" 
                    placeholder="Ejm: INGENIERIA EN SISTEMAS COMP. E INFORMATICOS"
                    runat="server" Height="16px" Width="352px"></asp:TextBox>
&nbsp;(<asp:TextBox ID="txtHoras" runat="server" Height="22px" Width="44px"></asp:TextBox>
                HORAS), BAJO EL SIGUIENTE DETALLE:<o:p></o:p></span></p>
            <p class="auto-style1">
                <o:p></o:p>
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
                <asp:TextBox ID="txtCarrera3" runat="server" 
                     placeholder="Ejm: INGENIERIA EN SISTEMAS COMP. E INFORMATICOS"
                    Height="16px" Width="352px"></asp:TextBox>
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
                            <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma;"><span style="mso-bidi-font-weight:bold">
                            <asp:DropDownList ID="ddlPresidente" runat="server">
                            </asp:DropDownList>
                            </span></span>
                            <p class="auto-style1" style="tab-stops: center 212.6pt right 425.2pt;">
                                <span style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;mso-bidi-font-weight:
bold">PRESIDENTE SUBROGANTE<p></p>
                                </span>
                                <p>
                                </p>
                                <p class="MsoNormal">
                                    <span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma;
mso-bidi-font-weight:bold">Cc:<span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp; </span>Ing. Hernando Buenaño, Presidente de la Comisión de Prácticas Pre Profesionales de la Carrera de Ingeniería </span><span style="font-size:7.0pt;mso-bidi-font-size:
9.0pt;line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">en Sistemas Computacionales e Informáticos</span><p class="MsoNormal">
                                        <span style="font-size:7.0pt;mso-bidi-font-size:9.0pt;
line-height:115%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><span style="mso-spacerun:yes">&nbsp;&nbsp;</span>Ing. Edisson Jordán, Coordinador de Vinculación con la Sociedad FISEI</span><p class="MsoNormal">
                                            <span style="font-size:7.0pt;
mso-bidi-font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>Estudiante</span><br />
                                            <br />
                                        </p>
                                    </p>
                                </p>
                            </p>
                        </p>
                        </span>
                    </p>
                </p>
            </p>
          
        </div>
                  <asp:Button ID="Button4" runat="server" Height="49px" Text="Generar Documento" Width="172px" OnClick="Button4_Click" />

                   </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="221px" Width="849px">
            <asp:TextBox ID="TextBox1" 
                runat="server"
                AutoPostBack="false"
                 placeholder="Buscar cedula/nombre"
                OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               &nbsp;<asp:Button ID="Button3" runat="server" Text="Cancelar" />
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
