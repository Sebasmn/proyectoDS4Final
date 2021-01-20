<%@ Page Language="C#" AutoEventWireup="true"   CodeBehind="Consejo.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Consejo" %>
             
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Nuevo Consejo</title>
    <link rel="stylesheet" href="../Estilos/estilos.css"  type="text/css" />
 
    <style type="text/css">
        .auto-style2 {
            padding: 0.3em 1.2em;
            border-radius: 2em;
            box-sizing: border-box;
            text-decoration: none;
            color: whitesmoke;
            background-color: #A68970;
            text-align: center;
            transition: all 0.2s;
            overflow: hidden;
            font-size: 15px;
            float: right;
            margin-right: 50px;
            display: block;
            margin-left: 0;
            margin-top: 0;
            margin-bottom: 0.3em;
        }
    </style>
 
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1>
                Consulta de Resoluciones</h1>
            <hr />

        <div id="contenedor1">
            <asp:Label ID="Label1" runat="server" Text="Consejos"></asp:Label>
         
         
            <asp:GridView ID="gvResoluciones" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="154px" Width="317px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" CellSpacing="2">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" 
                                  ConfirmText="Ver la resolucion?"
                                TargetControlID="Button1" runat="server" />
                            <asp:Button ID="Button1" CssClass="btnBuscarGrid" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" 
                                ConfirmText="Aprobar la resolucion?"
                                TargetControlID="Button2" runat="server" />
                            <asp:Button ID="Button2"  CssClass="btnBuscarGrid" runat="server" CausesValidation="False" CommandName="Aprobar" Text="Aprobar" />
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
            <asp:GridView ID="gvAprobadas" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="154px" Width="317px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowCommand="GridView2_RowCommand" CellSpacing="2">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1"  CssClass="btnBuscarGrid" runat="server" CausesValidation="False" CommandName="Select" Text="Quitar" />
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
          
            <asp:Button ID="Button1" runat="server" Text="Terminar y Generar Acta" CssClass="auto-style2" OnClick="Button1_Click" Width="206px" BackColor="#87540E" Font-Bold="True" Height="61px" />
           
            <asp:Button ID="Button2" runat="server" Text="Salir" CssClass="auto-style2" OnClick="Button2_Click" BackColor="#87540E" Font-Bold="True" Height="42px" Width="209px" />
         
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
         
        </div>
    </form>
</body>
</html>
