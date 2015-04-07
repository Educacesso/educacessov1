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
                <asp:TextBox ID="text1" runat="server" OnTextChanged="btn_buscar_Click"></asp:TextBox><img src="Imagens/icones/Search-3-64.png" />
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
                        <td>
                            <label>Cod: </label>
                            <asp:Label ID="id_curso" runat="server" Text='<%#Eval("COD_CURSO") %>' />

                        </td>
                        
                        <td>
                           
                            <asp:Label ID="tituloLabel" runat="server" Text='<%#Eval("TITULO_CURSO") %>' />


                        </td>
                        <td>
                            
                            <asp:Label ID="resumoLabel" runat="server" Text='<%#Eval("RESUMO_CURSO") %>' />
                        </td>
                       
                        <td>
                            <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select" Text="Select" />
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
                        <asp:Label ID="tituloCurso" runat="server" Text='<%#Eval("TITULO_CURSO") %>' />

                    </td>
                    <td>
                        <asp:Label ID="resumoCurso" runat="server" Text='<%#Eval("RESUMO_CURSO") %>' />
                    </td>
                    <td>
                        <asp:Label ID="conteudoCurso" runat="server" Text='<%#Eval("CONTEUDO_CURSO") %>' />
                    </td>

                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

        <asp:Button ID="btn_buscar" runat="server" Text="Buscar" OnClick="btn_buscar_Click" Width="0" Height="0" BackColor="White" Visible="false" />
        <a href="inicio.aspx">Voltar Inicio</a>
    </div>
</asp:Content>
