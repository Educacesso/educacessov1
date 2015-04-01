<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cadastroUsuario.aspx.cs" Inherits="educacesso.cadastroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../css/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="corpo">

        <h1><span>CADASTRAR</span></h1>
        <div id="facebook">
            <a href="#" class="btn-fb" title="Entrar com Facebook">Entre Com <strong>Facebook</strong></a>
            <p>Ou preencha os </p>
            <p>campos ao lado</p>
        </div>
    </section>

    <aside id="lateral">
        <div>
            <asp:Label runat="server" AssociatedControlID="cNome">Nome:</asp:Label>
            <asp:TextBox runat="server" ID="cNome" />

            <asp:Label runat="server" AssociatedControlID="cSenha"><span>Senha:</span></asp:Label>
            <span>
                <asp:TextBox runat="server" ID="cSenha" TextMode="Password"/></span>
            </div>
        
        <div>
            <asp:Label runat="server" AssociatedControlID="cMail">E-mail:</asp:Label>
            <asp:TextBox runat="server" ID="cMail" TextMode="Email" />

            <asp:Label runat="server" AssociatedControlID="ccSenha">Confirmar Senha:</asp:Label>
            <asp:TextBox runat="server" ID="ccSenha" TextMode="Password" />
            </div>
    </aside>
        <asp:Button runat="server" CommandName="MoveNext" Text="ENVIAR" CssClass="btn-submit1" OnClick="Unnamed5_Click" />
    <section id="rodape2">

        <h2> JÁ POSSUI UMA CONTA NO EDUCACESSO?</h2>
        <a href="login.aspx"><h3> CLIQUE AQUI PARA ENTRAR</h3></a>
    </section>
</asp:Content>

