<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="CreacionDocumentoDemo.Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Nuevo Usuario</title>
    <script type="text/javascript">
        function RefreshUpdatePanel() {
            __doPostBack('<%= TextBox1.ClientID %>', '');
            // document.getElementById('TextBox4').focus();

        };
    </script>
     <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" />
   
    <style type="text/css">
           .botonLogin {
    width: 100px;
    height: 30px;
    border: none;
    background-color: rgba(112, 72, 14,0.8);
    background-color: #7C4F0E;
    color: #DAD4CB;
    font-weight: 700;
    border-radius: 10px;
}
           #btnEliminar,#btnGuardar,#btnEditar,#btnActualizar:hover{
               border:2px solid #5D442A;
           }
      .labelIngreso{
          font-size:16px;
          color:#824E18;
          float:right;
          padding-right:10px;
        padding-top:13px;
          }
      td{
          margin:auto;

      }

      #Panel1{
          background-color:#D3B999;
          border-radius:30px;
          width:800px;
          height:auto;
          margin:auto;
          border:2px double #61370B ;
          padding:20px;
      }
      #gvUsuarios{
          width:100px;
          height:100px;
      }
        .auto-style1 {
            position: static;
        }
    </style>
</head>
<body style="height: 686px">
    <form id="form1" runat="server">
         <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png" CssClass="auto-style1"
                    />
        <div class="auto-style1">
            <div class="auto-style14">

                <h1><strong>
                <asp:Label ID="Label1" runat="server" Text="Registro de Usuarios" CssClass="auto-style11"></asp:Label>
                <hr />
                    <asp:Button ID="botonLogin0" 
                runat="server" 
                CssClass="botonLogin"
                Text="Menú Principal"  Font-Size="Medium" Height="35px" Width="160px" OnClick="botonLogin0_Click"  />

                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="botonLogin" 
                runat="server" 
                CssClass="botonLogin"
                Text="Salir" OnClick="botonLogin_Click" Font-Size="Medium" Height="35px" Width="120px"  />

                <br />
                </strong>
                <br />
                <table class="ingreso" align="center"  >
                    <tr>
                        <td >
                            <asp:Label ID="Label2" runat="server" Text="Cédula: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtCedula" runat="server"  Height="16px" Width="160px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label3" runat="server" Text="Primer nombres: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtNombreUno" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Segundo nombre: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtNombreDos" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label4" runat="server" Text="Apellido paterno: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtApellidoP" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Apellido materno: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtApellidoM" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label5" runat="server" Text="Rol: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td >
                            <asp:DropDownList ID="ddlRol" 
                                runat="server" 
                                Height="20px" Width="177px" OnSelectedIndexChanged="ddlRol_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label6" runat="server" Text="Clave: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtClave" runat="server" TextMode="Password" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label7" runat="server" Text="Repetir clave: " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtConfirmacionClave" runat="server" TextMode="Password" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label8" runat="server" Text="Correo:  " CssClass="labelIngreso"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtEmail" runat="server"  CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  CssClass="botonLogin"/>
                            &nbsp;
                            <asp:Button ID="btnEditar" runat="server" Text="Buscar" OnClick="btnEditar_Click"  CssClass="botonLogin" Visible="True"/>
                            <br />
                            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" CssClass="botonLogin"/>
                            &nbsp;
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="botonLogin" Visible="False"/>
                            <br />
                            <strong>
                            <br />
                            <br />
                            <asp:Label ID="lblMensaje" runat="server" ForeColor="#753A00"></asp:Label>
                            <br />
                            <br />
                </strong>
                        </td>
                    </tr>
                </table>
                
            </div>
        </div>

           <asp:Panel ID="Panel1" runat="server" >
                    <strong>
                    <asp:Label ID="lblMensaje0" runat="server" 
                        Font-Size="X-Large"
                        ForeColor="#753A00">Usuarios Actuales</asp:Label>
                    <br />
                    <br />
                    </strong>
                    <asp:TextBox ID="TextBox1" runat="server" 
                         AutoPostBack="True"
                    placeholder="Buscar cedula/nombre"
                    onkeyup="RefreshUpdatePanel();"
                        OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                   
                    <asp:UpdatePanel ID="updatePanelUsers" 
                        updatemode="Always"   
                        ChildrenAsTriggers="true"
                        runat="server">
                        <ContentTemplate>
                             <asp:GridView ID="gvUsuarios" runat="server" 
                                 AllowSorting="True"
                                  EnableSortingAndPagingCallbacks="false"
                                 BackColor="#DEBA84" 
                                 BorderColor="#A84F11" 
                                 BorderStyle="None" 
                                 BorderWidth="1px" CellPadding="3" 
                                 CellSpacing="2"
                                 OnPageIndexChanging="gvUsuarios_PageIndexChanging" 
                                 OnSelectedIndexChanged="gvUsuarios_SelectedIndexChanged"
                                 AllowPaging="True" PageSize="4" 
                                 Height="200px" OnRowDataBound="gvUsuarios_RowDataBound" Width="806px" CssClass="auto-style1" >
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnSeleccionar" runat="server" 
                                        CommandName="Select"
                                        BackColor="#D9BFA7"
                                        Style="padding:10px; border-radius: 25px"
                                        BorderColor="#BCA794"
                                        Font-Bold="true"
                                       ForeColor="#6C3A0A"
                                        Text="SELECCIONAR"  />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#694922" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#643B0A" Font-Size="Large"  
                            BackColor="#E4D4C1"
                            Font-Bold="True"
                            HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#EAD9C4" Font-Bold="True" ForeColor="#6B4313" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                        </ContentTemplate>
                         <Triggers>
                        <asp:AsyncPostBackTrigger controlid="TextBox1"  />
                         <asp:AsyncPostBackTrigger ControlID="gvUsuarios" />
                         </Triggers>
                    </asp:UpdatePanel>
               
                    <br />
                    <asp:Button ID="btnGuardar0" runat="server" CssClass="botonLogin" OnClick="btnGuardar0_Click" Text="Salir" />
               
                    <br />
                </asp:Panel>


         <ajaxToolkit:ModalPopupExtender 
                        ID="modalUsuarios" 
                        runat="server" 
                        CancelControlID="btnGuardar0" 
                        PopupControlID="Panel1" 
                        TargetControlID="btnEditar">
                    </ajaxToolkit:ModalPopupExtender>
    </form>
</body>
</html>
