<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="educacesso.Curso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CursoView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="tituloCurso" runat="server"></asp:Label>
    <asp:Label ID="conteudoCurso" runat="server"></asp:Label>

    <div id="container">
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">

            <asp:ListItem>
                        Selecione uma lição abaixo
            </asp:ListItem>

        </asp:DropDownList>
        <asp:Label ID="testeLabel" runat="server"> tela 1</asp:Label>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="view1" runat="server">
                <asp:FormView ID="FormView1" runat="server">
                    <ItemTemplate>

                        <div>
                            <h1>Nome:</h1>
                            <asp:Label ID="Label1" runat="server" CssClass="texto" Text='<%# Bind("NOME_CURSO") %>'></asp:Label>
                        </div>
                        <div id="titulo">
                            <h1>Titulo:</h1>
                            <asp:Label ID="tituloCurso" runat="server" CssClass="texto" Text='<%# Bind("TITULO_LICAO") %>'></asp:Label>
                        </div>
                        <div id="resumo">
                            <h1>Resumo:</h1>
                            <asp:Label ID="resumoCurso" runat="server" CssClass="texto" Text='<%# Bind("RESUMO_CURSO") %>'></asp:Label>
                        </div>
                        <div id="borda">
                            <div id="conteudo">
                                <h1>Conteudo:</h1>
                                <asp:Label ID="conteudoCurso" runat="server" CssClass="texto" Text='<%# Bind("CONTEUDO_LICAO") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:FormView>
            </asp:View>
        </asp:MultiView>


    </div>
</asp:Content>
