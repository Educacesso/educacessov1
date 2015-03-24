<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="educacesso.index" %>

	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <link href="../css/mainEstilo.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <section id="corpo">
        <h1>Noticias</h1>

        <article id="noticias">

            <a href="#"><img src="../Imagens/enem-pequeno.png" /></a>        
            <a href="#"><p>Tudo sobre o maior vestibular do país</p></a>  

        </article>
        <article id="noticias2">
            <a href="#" id="redacao"><img src="../Imagens/escrevendoo.jpg" /></a>
           <a href="#"><p>Aprenda as melhores técnicas para construir uma redação perfeita</p></a>

        </article>
    </section>
    <section id="corpo-lateral">
    <aside id="lateral">
        <h1>#Top Acessos</h1>
        <h2>Cursos em Destaque:</h2>
        <ul>
            <li>Calculo Integral</li>
            <li>Calculo 2</li>
            <li>Mapas</li>
            <li>Item</li>
            <li>outro item</li>

        </ul>

        <h2>Usuarios:</h2>
        <ul>
            <li>João PONTOS: 1200</li>
            <li>jose PONTOS: 1150</li>
            <li>Pessoa PONTOS: 900</li>
            <li>Alguem PONTOS: 732</li>
            <li>Outra pessoa PONTOS: 570</li>
        </ul>
    </aside>
    </section>
        
    

</asp:Content>

