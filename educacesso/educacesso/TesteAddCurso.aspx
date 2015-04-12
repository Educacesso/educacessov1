﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TesteAddCurso.aspx.cs" Inherits="educacesso.TesteAddCurso" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CadastroCursoCss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="titulo" runat="server" CssClass="titulo"> </asp:Label>
    </div>
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
                <asp:Button ID="btn_pular" runat="server" Text="Pular" OnClick="btn_pular_Click" CssClass="button pularbtn" />
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
                <h3>Crie Exercicios para está lição</h3>
                <div class="pergunta">
                    <label class="pergunta_alternativa">Pergunta</label>
                    <asp:TextBox ID="txt_Pergunta" runat="server" CssClass="pergunta"></asp:TextBox>
               
                
                    <label class="pergunta_alternativa">Alternativas</label>
               </div>
                <div class="radioButton">

                    <asp:RadioButton ID="RadioButton1" runat="server" CssClass="radio"  GroupName="item1" OnCheckedChanged="RadioButton1_CheckedChanged" AutoPostBack="true"/>
                    <asp:TextBox ID="txt_Resposta_A" runat="server" CssClass="respostas"></asp:TextBox>
                    
                </div>
                     

                <div class="radioButton">
                    <asp:RadioButton ID="RadioButton2" runat="server" CssClass="radio" GroupName="item1" OnCheckedChanged="RadioButton2_CheckedChanged" AutoPostBack="true"/>
                    <asp:TextBox ID="txt_Resposta_B" runat="server" CssClass="respostas"></asp:TextBox>
                </div>
                <div class="radioButton">
                    <asp:RadioButton ID="RadioButton3" runat="server" CssClass="radio" GroupName="item1" OnCheckedChanged="RadioButton3_CheckedChanged" AutoPostBack="true"/>
                    <asp:TextBox ID="txt_Resposta_C" runat="server" CssClass="respostas"></asp:TextBox>
                </div>
                <div class="radioButton">
                    <asp:RadioButton ID="RadioButton4" runat="server" CssClass="radio" GroupName="item1" OnCheckedChanged="RadioButton4_CheckedChanged" AutoPostBack="true"/>
                    <asp:TextBox ID="txt_Resposta_D" runat="server" CssClass="respostas"></asp:TextBox>
                </div>
            </div>
        </asp:View>

        <asp:View ID="view5" runat="server">
            <div class="container">
                <h3 id="fim">Parabéns, para concluir clique em enviar!</h3>
            </div>

            <asp:Button ID="btn_cadastrar" runat="server" Text="Enviar" OnClick="btn_cadastrar_Click" CssClass="buttonSubmit" />


        </asp:View>

    </asp:MultiView>

    <asp:Button ID="btn_avancar" runat="server" Text="Avançar" OnClick="btn_avancar_Click" CssClass="button" />

    
</asp:Content>
