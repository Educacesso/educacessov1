<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TesteAddCurso.aspx.cs" Inherits="educacesso.TesteAddCurso" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <label>Titulo</label> <asp:TextBox ID="txt_Titulo" runat="server"></asp:TextBox>
    <br />
    <label>Resumo</label> <asp:TextBox ID="txt_Resumo" runat="server"></asp:TextBox>
    <center><CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Width="700px"></CKEditor:CKEditorControl></center>
    <asp:Button ID="btn_cadastrar" runat="server" Text="Enviar" OnClick="btn_cadastrar_Click" />
</asp:Content>
