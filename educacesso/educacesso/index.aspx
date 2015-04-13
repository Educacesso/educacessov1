<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="educacesso.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../css/mainEstilo.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section id="corpoA">
        <div class="backImg">
            <img class="background" src="Imagens/IdeiaSchool.jpg" />
            <h1>Crie seus cursos</h1>
            <p class="imgP">No educacesso você pode criar seus próprios cursos e compartilhar com quem quiser. Com as nossas ferramentas fica fácil ter seus cursos online, <a id="linkImg" href="inicio.aspx"> venha conferir!</a></p>
        </div>
        <div class="backImg2">
            <h1>Aprenda</h1>
            <p class="imgP">Aprenda fazendo cursos sobre qualquer tema disponivel no educacesso, tenha acesso a todos os cursos feitos por outros usuários, faça exercícios, cresça no ranking e tudo isso grátis!</p>
            <img class="background" src="Imagens/conhecimento.jpg" />
        </div>
       

    </section>


</asp:Content>

