<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="educacesso.Curso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="css/Cursoview.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	<asp:Label ID="tituloCurso" runat="server"></asp:Label>
	<asp:Label ID="conteudoCurso" runat="server"></asp:Label>

	<div id="container">
	<asp:FormView ID="FormView1" runat="server">
		<ItemTemplate>
			
				<div id="titulo">
					<h1>Titulo:</h1><asp:Label ID="tituloCurso" runat="server" CssClass="texto" Text='<%# Bind("TITULO_CURSO") %>'></asp:Label>
				</div>
				<div id="resumo">
					<h1>Resumo:</h1><asp:Label ID="resumoCurso" runat="server" CssClass="texto" Text='<%# Bind("RESUMO_CURSO") %>'></asp:Label>
				</div>
			<div id="borda">
				<div id="conteudo">
					<h1>Conteudo:</h1><asp:Label ID="conteudoCurso" runat="server" CssClass="texto" Text='<%# Bind("CONTEUDO_CURSO") %>'></asp:Label>
				</div>
			</div>
		</ItemTemplate>
	</asp:FormView>
		</div>
</asp:Content>
