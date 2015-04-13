<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovaLicao.aspx.cs" Inherits="educacesso.NovaLicao" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CadastroCursoCss.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="titulo" runat="server" CssClass="titulo"> </asp:Label>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="view" runat="server">
            <div class="container">
                <h3>Você quer inserir um novo exercicio ou uma nova lição em seu curso?</h3>
                <asp:Button ID="btn_licao" runat="server" Text="Nova Licão" OnClick="btn_licao_Click" />
                <asp:Button ID="btn_exercicio" runat="server" Text="Novo Exercicio" OnClick="btn_exercicio_Click" />
            </div>
        </asp:View>
        <asp:View ID="view1" runat="server">
            <div class="container">
                <h3>Inseria uma nova lição em seu curso de:</h3>
                <label>Titulo da licao: </label>
                <asp:TextBox ID="txt_Titulo" runat="server"></asp:TextBox>
                <br />
            </div>
        </asp:View>

        <asp:View ID="view2" runat="server">
            <div class="container">
                <h3>Para continuar, insira um conteudo com a ajuda do editor abaixo</h3>

            </div>
            <div id="espaco">
                <center><CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="770px" Height="380px" ></CKEditor:CKEditorControl></center>
            </div>
        </asp:View>

        <asp:View ID="view3" runat="server">
            <div class="container">
                <h3 id="fim">Parabéns, para concluir clique em enviar!</h3>
            </div>

            <asp:Button ID="btn_cadastrar" runat="server" Text="Enviar" OnClick="btn_cadastrar_Click" CssClass="buttonSubmit" />
        </asp:View>

        <asp:View ID="view4" runat="server">
            <div class="container">
                <h3>insira o exercicio</h3>
            </div>

            <div class="pergunta">
                <div class="container2">

                    <label class="pergunta_alternativa">Pergunta</label>
                    <asp:TextBox ID="txt_Pergunta" runat="server" CssClass="pergunta2"></asp:TextBox>


                    <label class="pergunta_alternativa">Alternativas</label>
                </div>
            </div>
            <div class="radioButton">

                <asp:RadioButton ID="RadioButton1" runat="server" CssClass="radio" GroupName="item1" />
                <asp:TextBox ID="txt_Resposta_A" runat="server" CssClass="respostas"></asp:TextBox>

            </div>


            <div class="radioButton">
                <asp:RadioButton ID="RadioButton2" runat="server" CssClass="radio" GroupName="item1" />
                <asp:TextBox ID="txt_Resposta_B" runat="server" CssClass="respostas"></asp:TextBox>
            </div>
            <div class="radioButton">
                <asp:RadioButton ID="RadioButton3" runat="server" CssClass="radio" GroupName="item1" />
                <asp:TextBox ID="txt_Resposta_C" runat="server" CssClass="respostas"></asp:TextBox>
            </div>
            <div class="radioButton">
                <asp:RadioButton ID="RadioButton4" runat="server" CssClass="radio" GroupName="item1" />
                <asp:TextBox ID="txt_Resposta_D" runat="server" CssClass="respostas"></asp:TextBox>
            </div>
        </asp:View>
        <asp:View ID="view5" runat="server">
            <div class="container">
                <h3>Parabéns, para concluir clique em enviar!</h3>
            </div>
            <asp:Button ID="btn_cadastrar_exercicio" runat="server" Text="Novo Exercicio" CssClass="buttonSubmit" OnClick="btn_cadastrar_exercicio_Click" />
        </asp:View>
    </asp:MultiView>

    <asp:Button ID="btn_avancar" runat="server" Text="Avançar" OnClick="btn_avancar_Click" CssClass="button" />

</asp:Content>
