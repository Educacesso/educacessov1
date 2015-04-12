<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="educacesso.Curso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/CursoView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="tituloCurso" runat="server"></asp:Label>
    <asp:Label ID="conteudoCurso" runat="server"></asp:Label>
    

    <div id="container">
        
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" CssClass="dropDownListar">
            <asp:ListItem>
                        Selecione uma lição abaixo
            </asp:ListItem>
        </asp:DropDownList>
        
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="view1" runat="server">
                <asp:FormView ID="FormView1" runat="server">
                    <ItemTemplate>

                        <asp:Button ID="btn_atividade" runat="server" Text="Atividade da Lição" />

                        <div>
                            <h1>Curso:</h1>
                            <asp:Label ID="Label1" runat="server" CssClass="texto" Text='<%# Bind("NOME_CURSO") %>'></asp:Label>
                        </div>
                        <div id="titulo">
                            <h1>Lição:</h1>
                            <asp:Label ID="tituloCurso" runat="server" CssClass="texto" Text='<%# Bind("TITULO_LICAO") %>'></asp:Label>
                        </div>
                        <div id="resumo">
                            <h1>Resumo do curso:</h1>
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
