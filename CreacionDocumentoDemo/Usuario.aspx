<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="CreacionDocumentoDemo.Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Nuevo Usuario</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="Content/bootstrap.css"/>
    <link rel="stylesheet" href="Content/bootstrap-grid.css"/>
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>

    <script type="text/javascript">
        function RefreshUpdatePanel() {
            __doPostBack('<%= TextBox1.ClientID %>', '');
            // document.getElementById('TextBox4').focus();

        };
    </script>
 
     <!-- <link rel="stylesheet" href="~/Estilos/estilos.css"  type="text/css" /> -->
    <link rel="icon" type="image/png" href="Images/EscudoUTA.png"/>
</head>
    <style>
              body {
    background-color: #D8C99B;
}
        #contenedorMain{
            border:2px solid ;
            border-color:#704C1C;
            margin-left:20%;
            border-radius:10px;
            margin-right:20%;
            padding:25px;
            background-color:#F9E8D1;
        }
        #botonLogin,#botonLogin0{
         
        }
    .cabecera{
        width:100%;
        text-align:center;
    }
    #Panel1{
        height:370px;
            width:600px;
          background-color:#E9D0A6;
          margin:auto;
          padding:20px;
          text-align:center;
          border: 6px groove rgba(163, 87, 32,0.2);
    }
     
    </style>
<body >
    <form id="form1" runat="server">
        <div class="cabecera">
              <asp:Image ID="escudoLogin" runat="server" ImageUrl="~/Images/EscudoUTA.png" />
                <br />
              <br />
                <asp:Label ID="Label1" 
                    runat="server" Text="Registro de Usuarios" Font-Size="XX-Large" ForeColor="#754106"></asp:Label>
              <br />
              <br />
        </div>
       
        <div id="contenedorMain">
            <div class="cabecera">
                   <asp:Button ID="botonLogin0" 
                runat="server"   class="btn btn-primary"
               
                Text="Menú Principal"  
                        Font-Size="Medium" Height="35px" Width="160px" OnClick="botonLogin0_Click"  />
                    <asp:Button ID="botonLogin" 
                runat="server"   class="btn btn-primary"
                Text="Salir" OnClick="botonLogin_Click" 
                        Font-Size="Medium" Height="35px" Width="120px"  />
            </div>
                 
            <br />
             <br />
                <div class="form-group ">
                                    <asp:Label ID="Label2"  CssClass="form-label" for="txtCedula" runat="server" Font-Bold="False" ForeColor="#74420A" >Cédula</asp:Label>
                                    <asp:TextBox ID="txtCedula" runat="server"   CssClass="form-control" 
                                       placeholder="Cédula"  MinLength="10"></asp:TextBox>
                 </div>    
                    <div class="form-row">
                                        <div class="form-group col-md-5">
                                        <asp:Label ID="Label3" runat="server"   for="txtNombreUno" Text="Primer nombre: " CssClass="form-label" Font-Bold="False" ForeColor="#74420A"></asp:Label>
                                         <asp:TextBox ID="txtNombreUno" placeholder="Fernando" class="form-control" runat="server" ></asp:TextBox>
                                          </div>
                                        <div class="form-group col-md-5">
                                        <asp:Label ID="Label9"    for="txtNombreDos" runat="server" Text="Segundo nombre: " CssClass="form-label" Font-Bold="False" ForeColor="#74420A"></asp:Label>
                                         <asp:TextBox ID="txtNombreDos" placeholder="Javier" class="form-control" runat="server" ></asp:TextBox>
                                        </div>
                    </div>
                         
                         <div class="form-row">
                               <div class="form-group col-md-5">
                            <asp:Label ID="Label4" runat="server"   CssClass="form-label"   for="txtApellidoP"   Text="Apellido paterno: " Font-Bold="False" ForeColor="#74420A"></asp:Label>
                            <asp:TextBox ID="txtApellidoP" placeholder="Rodríguez"   class="form-control" runat="server" ></asp:TextBox>
                            </div>
                             <div class="form-group col-md-5">
                            <asp:Label ID="Label10" runat="server" for="txtApellidoM" Text="Apellido materno: " Font-Bold="False" ForeColor="#74420A" ></asp:Label>
                            <asp:TextBox ID="txtApellidoM" placeholder="Pérez" class="form-control" runat="server" ></asp:TextBox>
                             </div>
                      </div>      
                    <div class="form-group ">
                            <asp:Label ID="Label8" runat="server" Text="Correo:  " CssClass="form-label" Font-Bold="False" ForeColor="#74420A"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" 
                                type="email" class="form-control"
                                placeholder="usuario55@gmail.com" 
                                ></asp:TextBox>
                         </div>
                            <div class="form-group">
                            <asp:Label ID="Label5" runat="server"  Text="Rol: "  
                                for="ddlRol" CssClass="form-label" Font-Bold="False" ForeColor="#74420A" ></asp:Label>
                            &nbsp;
                            <asp:DropDownList ID="ddlRol" Font-Size="14px"
                                runat="server"   OnSelectedIndexChanged="ddlRol_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>  
                            <div class="form-row ">
                                 <div class="form-group col-md-5">
                                     <asp:Label ID="Label6" runat="server" Text="Clave: " CssClass="form-label" Font-Bold="False" ForeColor="#74420A"></asp:Label>
                                    <asp:TextBox ID="txtClave" runat="server" TextMode="Password" CssClass="form-control" ></asp:TextBox>
                                        </div>
                                       <div class="form-group col-md-5">
                                   <asp:Label ID="Label7" runat="server" Text="Repetir clave: " CssClass="form-label" Font-Bold="False" ForeColor="#74420A"></asp:Label>
                                    <asp:TextBox ID="txtConfirmacionClave" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                    </div>    
                               </div>
                           
                        
                          <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                            &nbsp;
                            <asp:Button ID="btnEditar" class="btn btn-primary"  runat="server" Text="Buscar" OnClick="btnEditar_Click" Visible="True"/>
                            <br />
                            <asp:Button ID="btnActualizar" class="btn btn-primary" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                            &nbsp;
                            <asp:Button ID="btnEliminar" class="btn btn-primary"  runat="server" Text="Eliminar" Visible="False"/>
                           
                            <asp:Label ID="lblMensaje" class="form-form" runat="server" ForeColor="#74420A"></asp:Label>

                        </div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                        
                       
                          
                            
               
                
          
   
           <asp:Panel ID="Panel1" runat="server" Height="451px"  >
  
                    <asp:Label ID="lblMensaje0" runat="server" 
                        Font-Size="X-Large" class="modal-title"
                        ForeColor="#753A00">Usuarios Actuales</asp:Label>
                    
                    <br />
                    
                    <br />
                    <div class="form-group">
                         <asp:TextBox ID="TextBox1" runat="server" 
                         AutoPostBack="True"
                        class="'form-control"
                    placeholder="Buscar cedula/nombre"
                    onkeyup="RefreshUpdatePanel();"
                        OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </div>
                   
          
                    <br />
                    <asp:UpdatePanel ID="updatePanelUsers" runat="server" ChildrenAsTriggers="true" updatemode="Always">
                        <ContentTemplate>
                            <asp:GridView ID="gvUsuarios" runat="server" AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderStyle="None" BorderWidth="0px" CellPadding="1" CellSpacing="1" Font-Size="Small" Height="50px" OnPageIndexChanging="gvUsuarios_PageIndexChanging" OnRowDataBound="gvUsuarios_RowDataBound" OnSelectedIndexChanged="gvUsuarios_SelectedIndexChanged" PageSize="3" Width="550px">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="btnSeleccionar" runat="server" BackColor="#D9BFA7" BorderColor="#BCA794" CommandName="Select" Font-Bold="true" ForeColor="#6C3A0A" Style="padding:0px; 
                                        width: 80px;
                                        border-radius: 15px" Text="Seleccionar" />
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#694922" Font-Bold="True" ForeColor="White" Width="10px" />
                                <PagerStyle BackColor="#E4D4C1" Font-Bold="True" Font-Size="Small" ForeColor="#643B0A" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#5D3D28" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                            <br />
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger controlid="TextBox1" />
                            <asp:AsyncPostBackTrigger ControlID="gvUsuarios" />
                        </Triggers>
                    </asp:UpdatePanel>

                    <asp:Button ID="btnGuardar0" runat="server"   class="btn btn-primary"  OnClick="btnGuardar0_Click" Text="Salir" />
             
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
    <!-- JavaScript Bundle with Popper -->
   <script src="Scripts/jquery-3.0.0.min.js"></script>
       <script src="Scripts/bootstrap.min.js"></script>
           <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/popper.js"></script>
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    

</body>
        
</html>
