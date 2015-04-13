﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="educacesso.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="css/indexEstilo.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section id="indexCorpo">
        <div id="tituloCorpo"><h1 id="h1Corpo">O que posso fazer no educacesso?</h1></div>

        <div class="backImagem">

            <img class="fundoImagem" src="Imagens/IdeiaSchool.jpg" />
            <h1 class="indexTitulo">Crie seus cursos</h1>
            <p class="imagemP">No educacesso você pode criar seus próprios cursos e compartilhar com quem quiser. Com as nossas ferramentas fica fácil ter seus cursos online. <a id="linkImagem" href="#"> venha conferir!</a></p>
        </div>

        <div class="backImagem2">

            <h1 class="indexTitulo">Aprenda</h1>
            <p class="imagemP">Aprenda fazendo cursos sobre qualquer tema disponivel no educacesso, tenha acesso a todos os cursos feitos por outros usuários, faça exercícios, cresça no ranking e tudo isso grátis!.</p>
            <img class="fundoImagem" src="Imagens/conhecimento.jpg" />

        </div>
       
    </section>



</asp:Content>

