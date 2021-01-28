<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="CreacionDocumentoDemo.Inicio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FISEI</title>
   <!-- <link rel="stylesheet" href="../Estilos/estilos.css"  type="text/css" /> -->
     <link rel="icon" type="image/png" href="../Images/EscudoUTA.png"/>
        <link rel="stylesheet" href="../Content/bootstrap.css"/>
    <link rel="stylesheet" href="../Content/bootstrap-grid.css"/>
    <link rel="stylesheet" href="../Content/bootstrap.min.css"/>
    <style type="text/css">
        body{
            text-align:center;
            background-color: #D8C99B;
        }
    #formularioLogin{
        width:400px;
        height:250px;
        margin:auto;

    }
    #contenedor{
        
        width:100%;
        float:left;
        padding-left:10px;
    }
    h1{
        color:#613A09;
    }
    </style>


</head>
<body id="bodyLogin">
    <form id="form1" runat="server">
        <div id="formularioLogin">
            <asp:Image ID="escudoLogin" runat="server" 
                    ImageUrl="~/Images/EscudoUTA.png"
                    />
            <h1>
                Ingreso de Usuario
            </h1>
            <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Medium" ForeColor="#785E37" Text="Digite su cédula y clave"></asp:Label>
                    <hr />
            <div id="contenedor">
                <div class="form-group">
            <asp:Label ID="Label5" runat="server"  Text="Contraseña: " for="TextBox1" CssClass="form-label" 
                 style="float:left; margin-bottom:8px;"
                Font-Bold="False" ForeColor="#74420A" ></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" required="true" 
                class="form-control"
                placeholder="Ejm: 1804156112" ></asp:TextBox>
                </div>
             <div class="form-group">
                    <asp:Label ID="Label2" runat="server"  Text="Cédula: "  for="TextBox2" 
                        CssClass="form-label"
                         style="float:left; margin-bottom:6px;"
                        Font-Bold="False" ForeColor="#74420A" ></asp:Label>
            <asp:TextBox ID="TextBox2" 
                runat="server" required="true" placeholder="*********"  class="form-control"  
                TextMode="Password"></asp:TextBox>
            </div>
            
                 <asp:CheckBox ID="cbConsejo" 
                runat="server" Font-Italic="True" Font-Size="12pt" 
                      style="float:left"
                OnCheckedChanged="cbConsejo_CheckedChanged" Text="Ingresar como consejo" ForeColor="#663300" />
                
                  <asp:Button ID="botonLogin" runat="server" 
                CssClass="btn btn-primary"  style="float:right" Text="Ingresar" OnClick="botonLogin_Click"  />
            </div>
            
            <br />
       
            <br />
            <br />
          
        </div>
    </form>
        <!-- JavaScript Bundle with Popper -->
   <script src="Scripts/jquery-3.0.0.min.js"></script>
       <script src="Scripts/bootstrap.min.js"></script>
           <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/popper.js"></script>
</body>
</html>
