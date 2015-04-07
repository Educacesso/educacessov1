<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="homeCurso.aspx.cs" Inherits="educacesso.homeCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span>Curso Teste 2</span>
    <!-- (Aparecer no canto direito da página alinhado ao nome do curso) -->
    <button type="button" style="margin-left:800px;">Faça os exercícios desse capítulo!</button>
    <br />
    
    <p>Desenvolvido por: <asp:Label ID="lblCriadorCurso" runat="server" Text="(Puxar do banco)"></asp:Label> </p> 

    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem >Algebra Linear</asp:ListItem>
        <asp:ListItem>Trigonometria</asp:ListItem>
        <asp:ListItem>Equação de primeiro grau</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View runat="server" ID="view1">
    <div id="menu-right" style="border:1px solid black; text-align:center;">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a erat id odio cursus elementum. 
        Suspendisse venenatis, augue sit amet venenatis sollicitudin, nibh felis ultricies elit, quis congue velit mi 
        nec dolor. Nam ac est vel nibh vehicula dapibus sit amet id diam. Sed molestie fermentum erat sit amet lobortis. 
        Curabitur maximus neque vitae nisl ultrices, in tempus purus fringilla. Fusce eu bibendum magna. Fusce vestibulum 
        est et quam iaculis, sit amet efficitur nunc rutrum.
        Sed ligula justo, pharetra sit amet mollis id, eleifend vitae odio. Donec feugiat tellus a ultricies vehicula. 
        In at ligula et orci porta tempus vel et purus. Quisque turpis leo, dictum eu mollis ut, ultricies at orci. 
        Morbi pulvinar tempus auctor. Etiam ultricies est ac mattis accumsan. Pellentesque habitant morbi tristique 
        senectus et netus et malesuada fames ac turpis egestas. Sed in tempor nulla. Aenean egestas at turpis sed bibendum. 
        Suspendisse non justo id neque dapibus convallis a vel purus. Vestibulum lorem enim, viverra nec convallis at, 
        dapibus vitae risus. Praesent non egestas nibh. Quisque commodo quis lectus nec efficitur. Etiam sed iaculis massa.
        Curabitur vel suscipit mi, nec venenatis leo. Integer vel bibendum quam, vel commodo est.
    </div>
        </asp:View>

        <asp:View ID="view2" runat="server">

        </asp:View>
    </asp:MultiView>

</asp:Content>
