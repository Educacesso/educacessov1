<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="educacesso.Buscar" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Buscar.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <h1>Encontre cursos de outros usuários -></h1>
            <div id="inside-buscar">
                <asp:TextBox ID="text1" runat="server"></asp:TextBox><img src="Imagens/icones/Search-3-64.png" />
            </div>
            <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server"
                TargetControlID="text1"
                EnableCaching="true"
                MinimumPrefixLength="1"
               
                ServiceMethod="GetConteudo"
                CompletionListCssClass="completionList"
                CompletionListItemCssClass="listItem"
                CompletionListHighlightedItemCssClass="itemHighlighted">
            </cc1:AutoCompleteExtender>
        </div>
        <a href="inicio.aspx">Voltar Inicio</a>
    </div>
</asp:Content>
