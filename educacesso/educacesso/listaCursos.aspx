<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listaCursos.aspx.cs" Inherits="educacesso.asp.listaCursos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Categorias: <asp:DropDownList ID="dropCategorias" runat="server" onblur="enviar()" OnSelectedIndexChanged="dropCategorias_SelectedIndexChanged">
                       
                    </asp:DropDownList>

                <br />
        Pesquisa like: <asp:TextBox ID="txtPesquisa" runat="server" OnTextChanged="txtPesquisa_TextChanged"></asp:TextBox>

        <br />
        <asp:DropDownList ID="dropCursos" runat="server"></asp:DropDownList>  

        <br />
        <a href="cadastroCurso.aspx">Cadastrar curso</a> 
        <br />
        <br />
        <a href="homeCurso.aspx">Página incial de curso (TESTE)</a>     
        <script src="../js/curso.js"></script>
    </div>
    </form>
</body>
</html>
