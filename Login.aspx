<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br /><br /><br />
    <h1>Entrar</h1>
    <hr />
    <asp:Label ID="Msg" ForeColor="red" Font-Size="14px" runat="server"></asp:Label>
    <br /><br />
    Nome<br />
    <asp:TextBox ID="Nome" runat="server"></asp:TextBox><br /><br />
    Senha<br />
    <asp:TextBox ID="Senha" TextMode="Password" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Button ID="Entrar" runat="server" Text="Entrar" OnClick="Entrar_Click" />

</asp:Content>

