<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TesteAddCurso.aspx.cs" Inherits="educacesso.TesteAddCurso" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CadastroCursoCss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="titulo" runat="server" CssClass="titulo"> </asp:Label>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="view1" runat="server">
            <div class="container">
                <h3>Insira o nome do seu curso, ex: Curso básico de Java</h3>
                <label>Nome para o Curso: </label>
                <asp:TextBox ID="txt_nome" runat="server"></asp:TextBox>
                <br />
                <label for="txt_Resumo">Resumo: </label>
                <asp:TextBox ID="txt_Resumo" TextMode="MultiLine" Height="130px" Width="270px" runat="server"></asp:TextBox>
            </div>
        </asp:View>

        <asp:View ID="view" runat="server">
            <div class="container">
                <h3>Você gostaria de inserir uma lição no seu curso?</h3>
                
            </div>
        </asp:View>

        <asp:View ID="view2" runat="server">
            <div class="container">
                <h3>Insira um titulo para começar e clique em avançar</h3>
                <label>Título: </label>
                <asp:TextBox ID="txt_Titulo" runat="server"></asp:TextBox>
            </div>
        </asp:View>

        <asp:View ID="view3" runat="server">
            <div class="container">
                <h3>Para continuar, insira um conteudo com a ajuda do editor abaixo</h3>

            </div>
            <div id="espaco">
                <center><CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="770px" Height="380px" ></CKEditor:CKEditorControl></center>
            </div>
        </asp:View>

        <asp:View ID="view4" runat="server">
            <div class="container">
                <h3 id="fim">Parabéns, para concluir clique em enviar!</h3>
            </div>

            <asp:Button ID="btn_cadastrar" runat="server" Text="Enviar" OnClick="btn_cadastrar_Click" CssClass="buttonSubmit" />


        </asp:View>

    </asp:MultiView>

    <asp:Button ID="btn_avancar" runat="server" Text="Avançar" OnClick="btn_avancar_Click" CssClass="button" />

    <a href="inicio.aspx">Cancelar</a>
</asp:Content>
