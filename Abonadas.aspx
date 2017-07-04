<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Abonadas.aspx.cs" Inherits="Abonadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <!--BUSCAR CANDIDATO --> 
    <div runat="server" style="width:700px;padding:10px;height:80px;background-color:white;text-align:center" >
        
    <asp:Label style="float:left;height:40px;padding:5px;text-align:center" ID="LabelBuscar" Text="Buscar Candidato:" runat="server"></asp:Label>
       
    <asp:textbox ID="Buscar" runat="server" style="float:left;width:400px;height:40px;color:blue;padding:5px"></asp:textbox>

    <asp:button runat="server" ID="BuscarCandidato" OnClick="BuscarCandidato_Click" text="Buscar" style="float:left;width:100px;height:50px;padding:5px;text-align:center" />

    </div>

   

    <br /><br /><br /><br />
    <asp:panel ID="Panel1" BackColor="White" Width="100%" Height="250px" ScrollBars="Auto" runat="server">

    <asp:GridView ID="Candidatos" Width="100%" CellPadding="8" HeaderStyle-BackColor="#DFDFDF" AutoGenerateColumns="true" AutoGenerateSelectButton="true" OnSelectedIndexChanged="Candidatos_SelectedIndexChanged" runat="server"></asp:GridView>

    </asp:panel>
    <br /><br />
    <div id="Cadastro" runat="server" visible="true">
        <div style="float: left; width: 400px; padding: 30px; background-color: #d0d0d0">
            <h2>ABONADAS!</h2>
            <h5>Gerenciamento das abonadas.</h5>
            <br />
            <asp:Label ID="MsgErro" ForeColor="Red" runat="server"></asp:Label>

            <asp:Label ID="CandidatoId" runat="server"></asp:Label>       
            <br />
            <br />
            Nome<br />
            <asp:TextBox ID="Nome"  runat="server"></asp:TextBox>
            <br />
            <br />
            Ano<br />
            <asp:TextBox ID="Ano" TextMode="Number" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
            <asp:Button ID="Excluir" OnClick="Excluir_Click" runat="server" Text="Excluir" />
             </div>
       

        <div style="float: left; margin-left: 60px; padding: 30px; background-color:lightskyblue; width: 400px;">
            <h3>1 SEMESTRE</h3>
            <hr />
           1ª ABONADA <asp:TextBox ID="PrimeiraA" TextMode="Date" runat="server"></asp:TextBox>
            <br /><br />
           2ª ABONADA  <asp:TextBox ID="SegundaA" TextMode="Date" runat="server"></asp:TextBox>
            <br /><br />
           3ª ABONADA  <asp:TextBox ID="TerceiraA" TextMode="Date" runat="server"></asp:TextBox>
            

        </div>
        <br />
         <div style="float: left; margin-left: 60px; padding: 30px; background-color:blueviolet; width: 400px;">
            <h3>2 SEMESTRE</h3>
            <hr />
           4ª ABONADA <asp:TextBox ID="QuartaA" TextMode="Date" runat="server"></asp:TextBox>
            <br /><br />
           5ª ABONADA  <asp:TextBox ID="QuintaA" TextMode="Date" runat="server"></asp:TextBox>
            <br /><br />
           6ª ABONADA  <asp:TextBox ID="SextaA" TextMode="Date" runat="server"></asp:TextBox>

        </div>


    </div>

   


    <div id="FimCadastro" runat="server" visible="false">
        <h2>Seus dados foram enviados com sucesso.</h2>
        <h4>Obrigado pela participação.</h4>
    </div>


</asp:Content>

