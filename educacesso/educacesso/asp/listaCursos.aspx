﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listaCursos.aspx.cs" Inherits="educacesso.asp.listaCursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Categorias: <asp:DropDownList ID="dropCategorias" runat="server" onblur="enviar()" OnSelectedIndexChanged="dropCategorias_SelectedIndexChanged"></asp:DropDownList>
                <br />
        Cursos: <asp:DropDownList ID="dropCursos" runat="server"></asp:DropDownList>            
    </div>
    </form>
    <script src="../_javascript/cursos.js"></script>
</body>
</html>