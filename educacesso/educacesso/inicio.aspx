<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="educacesso.inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/inicioUser.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Submit1" OnClick="Signout_Click" Text="Sair" runat="server" />
    <span id="label">
        <asp:Label ID="Bemvindo" runat="server" /></span>


   <h1>Escolha uma opção abaixo para começar :)</h1>
        <ul id="lista-ferramentas">
            <li id="make_curso"><span>Crie seus cursos</span></li>
            <li id="view_curso"><span>Veja seus cursos</span></li>
            <li id="search_curso"><span>Encontre cursos</span></li>
        </ul>
    
    
</asp:Content>
