<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="educacesso.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../css/mainEstilo.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <section id="corpoA">

        <div id="tituloA">
            <asp:Label ID="h1Info" runat="server"></asp:Label>
        </div>

        <div id="infoA">
            <asp:Label ID="informacoes" runat="server"></asp:Label>
        </div>

        <div id="btn_imgTutorial">
            <asp:ImageButton src="Imagens/icones/vector_313_23-256.png" ID="criarCurso" runat="server" Width="100px" Height="100px" OnClick="criarMeuCurso_Click" CssClass="img_btnTutorial" />
            <asp:ImageButton src="Imagens/icones/Book-2.png" ID="meuCurso" runat="server" Width="100px" Height="100px" OnClick="meuCurso_Click" CssClass="img_btnTutorial" />
            <asp:ImageButton src="Imagens/icones/search-256.png" ID="pesquisarCurso" runat="server" Width="100px" Height="100px" OnClick="pesquisarMeuCurso_Click" CssClass="img_btnTutorial" />
        </div>

    </section>
   

</asp:Content>

