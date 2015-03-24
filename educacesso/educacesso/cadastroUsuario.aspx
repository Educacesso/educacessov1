<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cadastroUsuario.aspx.cs" Inherits="Cadastre_se" %>

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
            <label for="cNome">Nome:</label>
            <input type="text" name="tNome" id="cNome" size="20" maxlength="30" placeholder="Nome Completo" required="required" />
        <label for="cSenha"><span>Senha:</span></label>
            <span><input type="password" name="tSenha" id="cSenha" size="20" maxlength="8" placeholder="8 Digitos" required="required"  /></span></div>

  
        
        <div>
            <label for="cMail">E-mail:</label>
            <input type="email" name="tMail" id="cMail" size="20" maxlength="40" required="required" />
            <label for="ccSenha">Confirmar Senha:</label>
            <input type="password" name="ttSenha" id="ccSenha" size="20" maxlength="8" required="required" /></div>
        
        <button class="btn-submit1" id="btn-enviar"><strong>ENVIAR</strong></button>
    </aside>

    <section id="rodape2">

        <h2> JÁ POSSUI UMA CONTA NO EDUCACESSO?</h2>
        <a href="Logar.aspx"><h3> CLIQUE AQUI PARA ENTRAR</h3></a>
    </section>
</asp:Content>

