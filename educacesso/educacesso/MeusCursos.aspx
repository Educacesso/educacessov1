<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MeusCursos.aspx.cs" Inherits="educacesso.MeusCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Meus%20Cursos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>MEUS CURSOS PUBLICADOS</h1>

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
                        <td id="cod">
                            <label>Cod: </label>
                            <asp:Label ID="id_curso" runat="server" Text='<%#Eval("COD_CURSO") %>' />

                        </td>
                        
                        <td>
                           
                            <asp:Label ID="nomeLabel" runat="server" Text='<%#Eval("NOME_CURSO") %>' />


                        </td>
                        <td>
                            
                            <asp:Label ID="dataLabel" runat="server" Text='<%#Eval("dataCadastro") %>' />
                        </td>
                        
                        <td>
                            <asp:ImageButton ID="SelectButton" runat="server" CommandName="Select" Text="Select" CssClass="plus"  ImageUrl="Imagens/icones/plus.png" />
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
