<%@ Page Language="C#" AutoEventWireup="true"   CodeBehind="Consejo.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Consejo" %>
             
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Nuevo Consejo</title>
    <link rel="stylesheet" href="../Estilos/estilos.css"  type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div id="contenedor1">
            <asp:Label ID="Label1" runat="server" Text="Consejos"></asp:Label>
         
         
            <asp:GridView ID="gvResoluciones" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="154px" Width="317px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" 
                                  ConfirmText="Ver la resolucion?"
                                TargetControlID="Button1" runat="server" />
                            <asp:Button ID="Button1"  runat="server" CausesValidation="False" CommandName="Select" Text="Ver" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" 
                                ConfirmText="Aprobar la resolucion?"
                                TargetControlID="Button2" runat="server" />
                            <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Aprobar" Text="Aprobar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#ebc194" Font-Bold="True" ForeColor="#754108" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:GridView ID="gvAprobadas" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="154px" Width="317px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowCommand="GridView2_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text="Quitar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#ebc194" Font-Bold="True" ForeColor="#754108" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
          
            <asp:Button ID="Button1" runat="server" Text="Terminar y Generar Acta" CssClass="botonesConsejo" OnClick="Button1_Click" Width="200px" />
           
            <asp:Button ID="Button2" runat="server" Text="Button" CssClass="botonesConsejo" />
         
        </div>
    </form>
</body>
</html>
