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
						<input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" /></span>
				</p>
				<p>
					E-mail<br />
					<span class="your-email">
						<input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" /></span>
				</p>
				<p>
					Cidade<br />
					<span class="cidade">
						<input type="text" name="cidade" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" /></span>
				</p>
				<p>
					Estado<br />
					<span class="estado">
						<input type="text" name="estado" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" /></span>
				</p>
				<p>
					Mensagem<br />
					<span class="your-message">
						<textarea name="your-message" cols="40" rows="10" class="textarea" aria-invalid="false"></textarea></span>
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
			Rua Estela, 100<br>
			Paraíso - São Paulo<br>
			Brasil<p></p>
		</article>

		<h2>SOBRE NÓS</h2>
		<article id="sobre">
			Ferramentas gratuitas para pais e professores<br>
			Estamos trabalhando para garantir que a Khan Academy habilite os tutores de todos os tipos a compreender melhor o que seus filhos ou alunos estão fazendo e como melhor ajudá-los. Veja com facilidade se um filho ou aluno está tendo dificuldades, ou se ele deu um salto e agora está na frente do resto da turma. Nosso painel do tutor fornece um resumo do desempenho da turma como um todo além de perfis detalhados dos alunos.
			<div id="coaching-button" class="center-button"></div>
		</article>

	</aside>


</asp:Content>
