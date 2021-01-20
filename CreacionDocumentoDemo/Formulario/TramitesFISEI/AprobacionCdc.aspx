<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AprobacionCdc.aspx.cs" 
    Inherits="CreacionDocumentoDemo.Formulario.TramitesFISEI.AprobacionCdc" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Aprobación Carta de Compromiso</title>
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
              Resolución para Act. de Conocimientos
                
            </h1>
             <p>
                <asp:Button ID="botonLogin" runat="server" CssClass="btnBuscar" Height="39px" OnClick="botonLogin_Click" Text="Salir" Width="112px" />
                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" ConfirmText="Terminar sesión" TargetControlID="botonLogin" />
                
            </p>
            <hr />
        <br />
         <asp:Panel ID="menuOpciones" runat="server">
             <asp:Button ID="btnBuscar" runat="server" Text="Buscar Estudiante" CssClass="btnBuscar"  />
            <asp:Button ID="btnNumeroResolucion" runat="server" Text="Generar Número Resolución" 
            CssClass="btnBuscar" OnClick="btnNumeroResolucion_Click"  />
             <br />
        <asp:Label ID="Label3" runat="server" Text="Consejo Destino:"></asp:Label>
            <asp:TextBox ID="txtCodigoConsejoDestino" runat="server"></asp:TextBox>
             </asp:Panel>
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Always" runat="server">
              <ContentTemplate>

      <div id="documento" >
          <p class="MsoBodyText">
              <asp:TextBox ID="txtFechaHeader" placeholder="Ejm: Ambato,15 de Enero del 2021" CssClass="noBorder" runat="server"></asp:TextBox>
          </p>
          <p class="MsoBodyText">
              &nbsp;</p>
          <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC">
          <br />
          Resolución <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
          <asp:TextBox ID="txtAnio1" runat="server" placeholder="0209" CssClass="noBorder"></asp:TextBox>
          </span></span>-P-CD-FISEI-UTA-<span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:TextBox ID="txtAnio2" runat="server" CssClass="noBorder" placeholder="Ejm: 2020"></asp:TextBox>
          </span></span>&nbsp;</span><p class="MsoNormal" style="margin-bottom:0cm">
              <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
              </span>
              <p class="MsoNormal" style="margin-bottom:0cm">
                  <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Ingeniero, Mg.</span><p>
                      <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma; line-height: 106%; mso-fareast-font-family: &quot;Arial Unicode MS&quot;;">
                      <asp:TextBox ID="txtCoordinador0" runat="server" CssClass="noBorder" Height="16px" placeholder="Ing. Carlos Sánchez, Mg." Width="233px"></asp:TextBox>
                      </span>
                  </p>
                  <p class="MsoNormal" style="margin-bottom:0cm;text-align:justify;tab-stops:21.3pt">
                      <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">COORDINADOR DE LA UNIDAD DE VINCULACIÓN</span></b><p class="MsoNormal" style="margin-bottom:0cm">
                          <span style="font-size:9.0pt;
mso-bidi-font-size:10.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma">FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL</span><span style="font-size:9.0pt;line-height:106%;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"> </span>
                          <p class="MsoNormal">
                              <span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">Presente.- </span>
                              <p class="MsoNormal">
                                  <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">De mi consideración:</span><p class="MsoBodyText">
                                      <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC">Consejo Directivo de la Facultad de Ingeniería en Sistemas, Electrónica e Industrial, en Sesión <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlSesion" runat="server">
                                      </asp:DropDownList>
                                      </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span>de fecha</span> <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlDia2" runat="server">
                                      </asp:DropDownList>
                                      </span><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">, </span></span>&nbsp;<span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma"><asp:DropDownList ID="ddlDia" runat="server">
                                      </asp:DropDownList>
                                      </span>&nbsp;<span style="mso-spacerun:yes">&nbsp;</span>de <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes" runat="server">
                                      </asp:DropDownList>
                                      </span>&nbsp;del <span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAnio" runat="server" CssClass="noBorder" placeholder="Ej: 2020"></asp:TextBox>
                                      </span>&nbsp;</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-ansi-language:ES-EC">,</span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"> conoció el Memorando Nro. <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtMemo" runat="server" placeholder="Ejm: UTA-UVS-FISEI-2020-0073-M" CssClass="noBorder"></asp:TextBox>
                                      </span></span>&nbsp;, de fecha&nbsp; <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlDia0" runat="server">
                                      </asp:DropDownList>
                                      </span></span>&nbsp; <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlDia1" runat="server">
                                      </asp:DropDownList>
                                      </span></span><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">&nbsp;</span></span></span>de <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:DropDownList ID="ddlMes0" runat="server">
                                      </asp:DropDownList>
                                      </span></span>&nbsp; de <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtAnio0" runat="server" placeholder="Ejm: 2020" CssClass="noBorder"></asp:TextBox>
                                      </span></span>, suscrito por el/la Ingeniero <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCoordinador" runat="server" placeholder="Ejm:Edisson Patricio Jordán" CssClass="noBorder" Width="100%"></asp:TextBox>
                                      </span></span></span>, Coordinador de la Unidad de Vinculación – FISEI, quien con fines de aprobación y suscripción remite&nbsp; <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtNumeroEjemp" runat="server" Min="1" placeholder="Ej: 2" TextMode="Number" CssClass="noBorder" Width="40px"></asp:TextBox>
                                      </span></span></span>&nbsp;ejemplares de las cartas de compromiso realizadas con <span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif; mso-bidi-font-family: Tahoma;">
                                      <asp:TextBox ID="txtDirector" runat="server" placeholder="Ejm: Luis J.(cargo)" CssClass="noBorder" Width="100%"></asp:TextBox>
                                      </span></span>, a favor del estudiante <span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtNombreEstu1" runat="server" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Andres Loor M." ToolTip="Busque un estudiante" Width="100%" CssClass="noBorder"></asp:TextBox>
                                      </span>&nbsp;con c.c. <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                      <asp:TextBox ID="txtCedula" runat="server" EnableViewState="true" Height="16px" placeholder="Ejm:1805214551" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                      </span></span>. Al respecto RESUELVE:</span><p class="MsoBodyText">
                                          &nbsp;<p class="MsoNormal">
                                              <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;
line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">APROBAR</span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">, LAS CARTAS DE COMPROMISO SUSCRITAS ENTRE&nbsp; <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                              <asp:TextBox ID="txtDirector0" runat="server" placeholder="Ejm: Luis (cargo)" CssClass="noBorder" Width="100%"></asp:TextBox>
                                              </span></span></span>, Y <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif"><span lang="ES-TRAD" style="font-size:9.0pt;font-family:
&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                              <asp:TextBox ID="txtDecana" runat="server" placeholder="Ejm: La Ing. Pilar Urrutia" CssClass="noBorder" Width="100%"></asp:TextBox>
                                              </span></span></span>, COMO DECANO/A&nbsp; DE LA FACULTAD DE INGENIERÍA EN SISTEMAS, ELECTRÓNICA E INDUSTRIAL, PARA LA REALIZACIÓN DE LAS PRÁCTICAS DE FORMACIÓN ACADÉMICA A FAVOR DEL ESTUDIANTE <b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                              <asp:TextBox ID="txtNombreEstu2" runat="server" EnableViewState="true" Height="16px" placeholder="Ejm: Luis Andres Loor M." ToolTip="Busque un estudiante" Width="100%" CssClass="noBorder"></asp:TextBox>
                                              </span></span>, CON C.C. <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                              <asp:TextBox ID="txtCedula0" runat="server" EnableViewState="true" Height="16px" placeholder="Ejm: 1805396177" ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                              </span></span></b>, MISMAS QUE CUMPLEN CON EL FORMATO ESTABLECIDO POR LA UNIVERSIDAD Y ES DE INTERÉS ACADÉMICO.</span><p class="MsoNormal">
                                                  <b style="mso-bidi-font-weight:normal"><span style="font-size:9.0pt;line-height:
106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">REMITIR, </span></b><span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">DOS EJEMPLARES ORIGINALES DE LA CARTA DE COMPROMISO A LA CUAL SE HACE REFERENCIA EN EL PÁRRAFO ANTERIOR A LA UNIDAD DE VINCULACIÓN CON LA SOCIEDAD DE LA FISEI, DEJANDO UN EJEMPLAR DE ESTA PARA SU RESPECTIVO ARCHIVO CON LA PRESENTE RESOLUCIÓN.</span><p class="MsoNormal">
                                                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma">Atentamente,</span></p>
                                                  <p class="MsoNormal">
                                                      &nbsp;</p>
                                                  <p class="MsoNormal">
                                                      <span style="font-size:9.0pt;line-height:106%;font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:
Tahoma"><b style="mso-bidi-font-weight:
normal"><span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-ansi-language:ES-EC"><span lang="ES-TRAD" style="font-size:9.0pt;
font-family:&quot;Cambria&quot;,serif;mso-bidi-font-family:Tahoma">
                                                      <asp:TextBox ID="txtPresidente" runat="server" EnableViewState="true" Height="16px" placeholder="Ing. Pilar Urrutia U., Mg." ToolTip="Busque un estudiante" Width="122px" CssClass="noBorder"></asp:TextBox>
                                                      </span></span></b></span>
                                                  </p>
                                                  <p class="auto-style4" style="tab-stops: center 212.6pt right 425.2pt;">
                                                      <span style="font-size:9.0pt;font-family:&quot;Cambria&quot;,serif;
mso-bidi-font-family:Tahoma;mso-bidi-font-weight:bold">PRESIDENTA</span></div>
   
                       <asp:Button ID="Button4"
                      runat="server" Height="49px" 
                      Text="Generar Documento" Width="172px" OnClick="Button4_Click" CssClass="btnBuscsar"  />

                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1"
            TargetControlID="Button4" ConfirmText="Desea generar la resolución?"
            runat="server" />
                   </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
         <asp:Panel ID="panelModalBusquedaEst" runat="server" Height="326px" Width="830px">
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
                        CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                        
                        >
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="botonSeleccionar" 
                                        runat="server"
                                        CssClass="btnBuscarGrid"
                                        CausesValidation="False" CommandName="Select" Text="Seleccionar" />
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
                         <asp:AsyncPostBackTrigger ControlID="GridView1" />
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
