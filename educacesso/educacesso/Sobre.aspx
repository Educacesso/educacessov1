<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="educacesso.Sobre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<link href="css/sobre.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="container">
		<section id="corpo">
			<h1>FALE CONOSCO</h1>

			<article id="dados">
				<p>
					Nome<br />
					<span class="your-name">
						<input type="text" id="dads" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" /></span>
				</p>
				<p>
					E-mail<br />
					<span class="your-email">
						<input type="email" id="dads"  name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" /></span>
				</p>
				<p>
					Cidade<br />
					<span class="cidade">
						<input type="text" id="dads"  name="cidade" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" /></span>
				</p>
				<p>
					Estado<br />
					<span class="estado">
						<input type="text" id="dads"  name="estado" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" /></span>
				</p>
				<p>
					Mensagem<br />
					<span class="your-message">
						<textarea name="your-message" id="dads"  cols="40" rows="10" class="textarea" aria-invalid="false"></textarea></span>
				</p>
				<p>
					<input type="submit" value="Enviar" class="submit" /></p>


			</article>
		</section>
	</div>
	<aside id="lateral">
		<h1>ENDEREÇO</h1>
		<article id="endereco">
			<br>
			Rua Estela, 268<br>
			Paraíso - São Paulo<br>
			Brasil<p></p>
		</article>

		<h2>SOBRE NÓS</h2>
		<article id="sobre">
			
Somos um grupo de estudantes da faculdade Bandtec. Criamos o site com o intuito de prover um ferramenta educacional interativa, na qual o usuário pode criar cursos e atividades e disponibilizá-los a outros usuários.			<div id="coaching-button" class="center-button"></div>
		</article>

        <h3>EQUIPE</h3>
        <article id="Equipe">
		
        <a href="https://br.linkedin.com/in/vrjusto"><img src="Imagens/Vini.png" />
        <a href="https://br.linkedin.com/in/andrezacristina"><img src="Imagens/andreza.png" />
        <a href="https://br.linkedin.com/pub/thiago-cavalcante-villaverde/8b/30b/572"> <img src="Imagens/Thiago.png" />
        <a href="https://br.linkedin.com/pub/flávia-gabanela/70/70b/522"> <img src="Imagens/Flavia.png" />
            </article>
	</aside>


</asp:Content>
