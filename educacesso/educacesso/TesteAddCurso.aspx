<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TesteAddCurso.aspx.cs" Inherits="educacesso.TesteAddCurso" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CadastroCursoCss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:label ID="titulo" runat="server" CssClass="titulo"> </asp:label>
    
    <br />
    <br />


    <div id="tamanho">

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="view1" runat="server">
            <div class="container">
                <h3>Insira um titulo e um resumo para começar e clique em avançar</h3>
                <label>Título: </label>
                <asp:TextBox ID="txt_Titulo" runat="server"></asp:TextBox>
                <br />
                <label for="txt_Resumo">Resumo: </label>
                <asp:TextBox ID="txt_Resumo" TextMode="MultiLine" Height="130px" Width="270px" runat="server"></asp:TextBox>

            </div>
        </asp:View>

        <asp:View ID="view2" runat="server">
            <div class="container">
                <h3>Para continuar, insira um conteudo com a ajuda do editor abaixo</h3>

            </div>
            <center><CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="770px" Height="380px"></CKEditor:CKEditorControl></center>
        </asp:View>

        <asp:View ID="view3" runat="server">
            <div class="container">
                <h3 id="fim">Parabéns, para concluir clique em enviar!</h3>
            </div>

            <asp:Button ID="btn_cadastrar" runat="server" Text="Enviar" OnClick="btn_cadastrar_Click" CssClass="buttonSubmit"/>


        </asp:View>

    </asp:MultiView>
    
        <asp:Button ID="btn_avancar" runat="server" Text="Avançar" OnClick="btn_avancar_Click" CssClass="button"/>
   </div>
    <a href="inicio.aspx">Cancelar</a>
</asp:Content>
