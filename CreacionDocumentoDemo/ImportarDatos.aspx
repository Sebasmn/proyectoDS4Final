<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImportarDatos.aspx.cs" Inherits="CreacionDocumentoDemo.ImportarDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUploadFile" runat="server" Text="Label"></asp:Label>
        <br />
            <asp:FileUpload ID="userFileUpload" runat="server" />
            <br />
            <asp:Button ID="UploadButton" runat="server" Text="upload" OnClick="UploadButton_Click" />
            <asp:Button ID="SaveData" runat="server" Text="ejecutar" OnClick="SaveData_Click" />
        </div>
    </form>
</body>
</html>
