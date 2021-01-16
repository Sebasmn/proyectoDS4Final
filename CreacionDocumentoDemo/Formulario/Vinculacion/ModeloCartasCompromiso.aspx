<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModeloCartasCompromiso.aspx.cs" Inherits="CreacionDocumentoDemo.Formulario.Vinculacion.ModeloCartasCompromiso" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnPrueba" runat="server" Text="Boton prueba" OnClick="btnPrueba_Click" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                PRUEBA<br />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </asp:Panel>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" TargetControlID="btnPrueba"
            CancelControlID="btnCancel"
            PopupControlID="Panel1" 
        runat="server"></ajaxToolkit:ModalPopupExtender>
        </div>
        
    </form>
    
</body>
</html>
