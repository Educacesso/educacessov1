<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="educacesso.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/login.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <section id="corpo">

        <h1><span>ENTRAR</span></h1>
        <div id="facebook">
            <a href="#" class="btn-fb" title="Entrar com Facebook">Entre Com <strong>Facebook</strong></a>
            <p>Ou preencha os </p>
            <p>campos ao lado</p>
        </div>
    </section>

    <aside id="lateral">
        <div>
            <asp:Label runat="server" AssociatedControlID="cNome">Nome</asp:Label>
            <asp:TextBox runat="server" ID="cNome" />

        </div>

        <div>

            <asp:Label runat="server" AssociatedControlID="cSenha">Senha:</asp:Label>
            <asp:TextBox runat="server" ID="cSenha" TextMode="Password" />

        </div>
        <a href="#"><span id="senha"><strong>Esqueceu sua senha ?</strong></span></a>
        <asp:Button runat="server" Text="ENVIAR" CssClass="btn-submit" OnClick="btn_logar_Click" />
        <asp:Label runat="server" ID="msg_logar"></asp:Label>
        <asp:CheckBox ID="Persist" runat="server" />
    </aside>

    <section id="rodape2">

        <h2>AINDA NÃO POSSUI CONTA NO EDUCACESSO ?</h2>
        <a href="cadastroUsuario.aspx">
            <h3>Cadastre-se Grátis</h3>
        </a>
    </section>

</asp:Content>
