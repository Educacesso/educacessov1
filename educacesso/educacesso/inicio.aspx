<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="educacesso.inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/inicioUser.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


   <h1>Escolha uma opção abaixo para começar :)</h1>
        <ul id="lista-ferramentas">
           <a href="TesteAddCurso.aspx"> <li id="make_curso"><span>Crie seus cursos</span></li></a>
           <a href="MeusCursos.aspx"> <li id="view_curso"><span>Veja seus cursos</span></li></a>
            <a href="Buscar.aspx"><li id="search_curso"><span>Encontre cursos</span></li></a>
        </ul>
    
    
</asp:Content>
