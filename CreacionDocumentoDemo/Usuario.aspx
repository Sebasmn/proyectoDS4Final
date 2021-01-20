<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="CreacionDocumentoDemo.Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Nuevo Usuario</title>
     <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" />
   
    <style type="text/css">
       
    </style>
</head>
<body style="height: 686px">
    <form id="form1" runat="server">
         &nbsp;&nbsp;&nbsp;
         <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png" CssClass="auto-style1"
                    />
        <div class="auto-style1">
            <div class="auto-style14">

                <h1><strong>
                <asp:Label ID="Label1" runat="server" Text="Registro de Usuarios" CssClass="auto-style11"></asp:Label>
                <hr />
                    <asp:Button ID="Button3" runat="server" CssClass="btnBuscar" Text="Salir" OnClick="Button3_Click" Height="68px" Width="168px" />
                </strong>
                <br />
                <br />
                <table  align="center" class="tablaDatos" >
                    <tr>
                        <td >
                            <asp:Label ID="Label2" runat="server" Text="Cédula: "></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtCedula" runat="server" CssClass="auto-style10" Height="16px" Width="160px" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label3" runat="server" Text="Primer nombres: "></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtNombreUno" runat="server" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Segundo nombre: "></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtNombreDos" runat="server" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label4" runat="server" Text="Apellido paterno: "></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtApellidoP" runat="server" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Apellido materno: "></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtApellidoM" runat="server" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label5" runat="server" Text="Rol: "></asp:Label>
                        </td>
                        <td class="auto-style19">
                            <asp:DropDownList ID="ddlRol" runat="server" CssClass="auto-style13" Height="20px" Width="177px" OnSelectedIndexChanged="ddlRol_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label6" runat="server" Text="Clave: "></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtClave" runat="server" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label7" runat="server" Text="Repetir clave: "></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtConfirmacionClave" runat="server" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label8" runat="server" Text="Correo:  "></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtEmail" runat="server"  CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <asp:Label ID="lblMensaje" runat="server" BackColor="#FFCC66" Font-Italic="True"></asp:Label>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style2">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  CssClass="btnBuscar"/>
                            <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click"  CssClass="btnBuscar"/>
                            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" CssClass="btnBuscar"/>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btnBuscar"/>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="376px" Width="597px">
                    <strong>
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style11" Text="Listado Usuarios"></asp:Label>
                    <br />
                    <br />
                    </strong>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" Width="130px" Height="33px" CssClass="btnBuscar"/>
                    <br />
                    <br />
                    <strong>
                    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Cerrar" />
                    <ajaxToolkit:ModalPopupExtender ID="Button2_ModalPopupExtender" runat="server" CancelControlID="Button2" PopupControlID="panelModalBusquedaEst" TargetControlID="btnEditar">
                    </ajaxToolkit:ModalPopupExtender>
                    </strong>
                    <asp:GridView ID="gvUsuarios" runat="server" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="152px" OnPageIndexChanging="gvUsuarios_PageIndexChanging" OnSelectedIndexChanged="gvUsuarios_SelectedIndexChanged" Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnSeleccionar" runat="server" CommandName="Select" Height="20px" Text="Seleccionar" Width="99px" />
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
                    <br />
                </asp:Panel>
                <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1"
                    TargetControlID="btnEditar"
                    CancelControlID="Button2"
                    PopupControlID="Panel1" 
                    runat="server">
                </ajaxToolkit:ModalPopupExtender>

            </div>

        </div>
    </form>
</body>
</html>
