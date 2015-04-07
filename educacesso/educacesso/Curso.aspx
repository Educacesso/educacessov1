<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="educacesso.Curso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="tituloCurso" runat="server"></asp:Label>
    <asp:Label ID="conteudoCurso" runat="server"></asp:Label>


    <asp:FormView ID="FormView1" runat="server">
        <ItemTemplate>
            <div>
                Codigo:<asp:Label ID="idCurso" runat="server" Text='<%# Bind("COD_CURSO") %>'></asp:Label>
            </div>
            <div>
                Titulo:<asp:Label ID="tituloCurso" runat="server" Text='<%# Bind("TITULO_CURSO") %>'></asp:Label>
            </div>
            Resumo:<asp:Label ID="resumoCurso" runat="server" Text='<%# Bind("RESUMO_CURSO") %>'></asp:Label>7
            <div>
                Conteudo:<asp:Label ID="conteudoCurso" runat="server" Text='<%# Bind("CONTEUDO_CURSO") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
