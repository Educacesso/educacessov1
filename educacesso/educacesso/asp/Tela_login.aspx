<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tela_login.aspx.cs" Inherits="educacesso.asp.Tela_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="../_css/Login.css" rel="stylesheet" />
	<link href="../_css/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <script src="../_javascript/funcoes.js"></script>
    <div id="interface">
        <header id="cabecalho">

			<img id="logoeduca" src="../_imagens/logoEducacesso.png" />

            <img id="icone" src="_imagens/glass-oculos-preto-peq.png" />
            <!--<del>ok</del>-->
            <nav id="menu">
                <h1>Menu Principal</h1>
                <ul>
                    <li onmouseover="mudaFoto('_imagens/home.png')" onmouseout="mudaFoto('_imagens/glass-oculos-preto-peq.png')"><a href="index.html">Home</a></li>

                    <li onmouseover="mudaFoto('_imagens/especificacoes.png')" onmouseout="mudaFoto('_imagens/glass-oculos-preto-peq.png')"><a href="specs.html">Especificações</a></li>
                    <li onmouseover="mudaFoto('_imagens/fotos.png')" onmouseout="mudaFoto('_imagens/glass-oculos-preto-peq.png')">
                        <a href="fotos.html">Fotos</a>
                    </li>
                    <li onmouseover="mudaFoto('_imagens/multimidia.png')" onmouseout="mudaFoto('_imagens/glass-oculos-preto-peq.png')"><a href="multimidia.html">Multimídia</a></li>
                    <li onmouseover="mudaFoto('_imagens/contato.png')" onmouseout="mudaFoto('_imagens/glass-oculos-preto-peq.png')"><a href="fale-conosco.html">Fale conosco</a></li>
                </ul>
            </nav>
        </header>

		<section id="corpo">
			<article id="cadastro">
				<h1>Novo por aqui?</h1>
				<h2> Junte-se a nós :)</h2>
				<div>
					<label>Nome</label>
					<input type="text" id="txtNome" />
				</div>
					
				<div>
					<label>Email</label>
					<input type="email" id="txtEmail"/>
				</div>

				<div>
					<label>Senha</label>
					<input type="password" id="txtPassword"/>
				</div>

				<div>
					<label>Confirmar Senha</label>
					<input type="password" id="txtPassordConfirma"/>
				</div>

				<div>
					<button type="button" id="btnEnviar">Enviar</button>
				</div>
			</article>
		</section>
		<section id="cadastrado">
		<aside id="logartela">
			<h1>Já tem cadastro?</h1>
			<h2> Logar</h2>

			<div>
				<label">Usuario</label>
				<input type="text" id="txt_user"/>
			</div>

			<div>
				<label>Senha</label>
				<input type="password" id="txt_password"/>
			</div>
			<div>
				<h2>Ou logar por</h2>
				
				<img id="logoFacebook" src="../_imagens/fb_icon_325x325.png" />
			</div>

		</aside>
    </section>
		<footer id="rodape">
            <p>
               Educacesso<br />
                <a href="http://facebook.com" target="_blank">Facebook</a> |
                <a href="http://www.twitter.com" target="_blank">Twitter</a>
            </p>
        </footer>
    </div>
    
    </form>
</body>
</html>
