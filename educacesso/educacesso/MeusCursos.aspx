<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MeusCursos.aspx.cs" Inherits="educacesso.MeusCursos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Meus%20Cursos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Meus Cursos publicados</h1>
    
    <label>NOME DO CURSO</label>
    <label>DATA CADASTRO</label>
    <asp:ListView ID="ListView" runat="server" OnSelectedIndexChanging="ListView_SelectedIndexChanging" ItemPlaceholderID="itemContainer">
        <EmptyDataTemplate>
            <tr>
                <td>Nenhum curso encontrado!
                </td>
            </tr>
        </EmptyDataTemplate>

        <LayoutTemplate>
            <ul class="lista">
                <asp:PlaceHolder ID="itemContainer" runat="server" />
            </ul>
        </LayoutTemplate>
        
        <ItemTemplate>
            <table>
                
                <tr runat="server">

                    

                    <td style="width:300px">
                        <asp:Label ID="id_curso" runat="server" Visible="false" Text='<%#Eval("COD_CURSO") %>' />
                        <asp:Label ID="nomeLabel" runat="server" Text='<%#Eval("NOME_CURSO") %>' />
                    </td>
                    <td style="width:180px">
                        <asp:Label ID="dataLabel" runat="server" Text='<%#Eval("dataCadastro") %>' />
                    </td>

                    <td style="width:180px">
                        <asp:ImageButton ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" CssClass="plus" ImageUrl="Imagens/icones/document_edit.png" />
                        <asp:ImageButton ID="SelectButton" runat="server" CommandName="Select" Text="Select" CssClass="plus" ImageUrl="Imagens/icones/document_add.png" />
                        <asp:ImageButton ID="DeletButton" runat="server" CommandName="Delete" Text="Deletar" CssClass="plus" ImageUrl="Imagens/icones/document_delete.png" />

                    </td>

                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemTemplate>
            <tr runat="server">
                <td>
                    <asp:Label ID="id_curso" runat="server" Text='<%#Eval("COD_CURSO") %>' />

                </td>

                <td>
                    <asp:Label ID="nomeCurso" runat="server" Text='<%#Eval("NOME_CURSO") %>' />

                </td>
                <td>
                    <asp:Label ID="dataLabel" runat="server" Text='<%#Eval("dataCadastro") %>' />
                </td>


            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

    <a href="inicio.aspx">Voltar Inicio</a>
</asp:Content>
