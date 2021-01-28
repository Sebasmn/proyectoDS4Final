<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Consejo.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Consejo" %>
             
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Nuevo Consejo</title>
<!--    <link rel="stylesheet" href="../Estilos/estilos.css"  type="text/css" /> -->
     <link rel="stylesheet" href="../Content/bootstrap.css"/>
    <link rel="stylesheet" href="../Content/bootstrap-grid.css"/>
    <link rel="stylesheet" href="../Content/bootstrap.min.css"/>
 <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
    <style type="text/css">
               body {
    background-color: #D8C99B;
    text-align:center;
}
#contenedor1,#contenedor2,#contenedor3{
     text-align:center;
     width:80%;
     margin:auto;
     padding-left:30px;
      padding-right:30px;
 }
 labels{
  
 }


    </style>
 
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1 style="color:#955A11;">
                Consulta de Resoluciones</h1>
        <p>
                <asp:Button ID="botonLogin0" runat="server" class="btn btn-primary" Font-Size="Medium" OnClick="botonLogin0_Click" Text="Salir" />
        </p>
            <hr />

        <div id="contenedor1">
           
            <asp:Label ID="Label3"       CssClass="labels"   runat="server" Text="Bienvenido: " Font-Size="XX-Large" ForeColor="#8F490F"></asp:Label>
        
            <br />
        
            <br />
        
            <asp:Label ID="Label1"   
                style="   margin-top:50px;
     margin-bottom:50px;
     color:#814D0B;
      float:left;
     font-size:28px;" 
                runat="server" Text="Resoluciones Enviadas"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            
                             
            <asp:GridView ID="gvResoluciones" 
                runat="server"
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="0" Width="300px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" CellSpacing="1" HorizontalAlign="Justify" OnPageIndexChanging="gvResoluciones_PageIndexChanging" PageSize="5">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" 
                                  ConfirmText="Ver la resolucion?"
                                TargetControlID="Button1" runat="server" />
                            <asp:Button ID="Button1" 
                             Width="90px"
                                CssClass="btnBuscarGrid" 
                                ForeColor="#5F3613"
                                BackColor="#DBB99A"
                                runat="server" CausesValidation="False" CommandName="Select" Text="Ver" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" 
                                ConfirmText="Aprobar la resolucion?"
                                TargetControlID="Button2" runat="server" />
                            <asp:Button ID="Button2"  
                               style="background-color:#D4B194;
                               color:#5F3613;
                                " runat="server" CausesValidation="False" CommandName="Aprobar" Text="Aprobar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#C5966F" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
                      </div>
        <div id="contenedor2">
            <br />
            <asp:Label ID="Label2"     
                  style="  clear:both; margin-top:50px;
     margin-bottom:50px;
     float:left;
     color:#814D0B;
     font-size:28px;" 
                runat="server" Text="Aprobadas"></asp:Label>
            <br /><br /><br /><br />
            <asp:GridView ID="gvAprobadas" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="1" Height="154px" Width="250px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowCommand="GridView2_RowCommand" CellSpacing="1" HorizontalAlign="Justify" PageSize="5">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" 
                                  Width="90px"
                                CssClass="btnBuscarGrid" 
                                ForeColor="#5F3613"
                                BackColor="#DBB99A"
                             runat="server" CausesValidation="False" CommandName="Select" Text="Quitar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#935D0F" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
                 
             <br />
            <br />
                 
             </div>
        <div id="contenedor3">
             <asp:Button ID="botonLogin" 
                runat="server" 
                Text="Terminar y Generar Acta"  
                class="btn btn-primary"
                OnClick="botonLogin_Click"  />
        
        </div>
           
            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender3" 
                ConfirmText="Generar acta final?"
                TargetControlID="botonLogin"
                runat="server" />

            
           

         
        
    </form>
      <script src="../Scripts/jquery-3.0.0.min.js"></script>
       <script src="../Scripts/bootstrap.min.js"></script>
           <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/popper.js"></script>
</body>
</html>
