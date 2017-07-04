<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CandidatosEdit.aspx.cs" Inherits="CandidatosEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
            <h2>TRABALHE CONOSCO!</h2>
            <h5>Deixe seus dados abaixo que entraremos em contato com você!</h5>
            <br />
            <asp:Label ID="MsgErro" ForeColor="Red" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="CandidatoId" runat="server"></asp:Label>       
            <br />
            <br />
            Nome<br />
            <asp:TextBox ID="Nome"  runat="server"></asp:TextBox>
            <br />
            <br />
            Email<br />
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <br />
            <br />
            Telefone<br />
            <asp:TextBox ID="Telefone" runat="server"></asp:TextBox>
            <br />
            <br />
            Resumo<br />
            <asp:TextBox ID="Resumo" textmode="MultiLine" rows="5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
            <asp:Button ID="Excluir" OnClick="Excluir_Click" runat="server" Text="Excluir" />
             
          <ajaxToolkit:ConfirmButtonExtender  ID="ConfirmButtonExtender1" ConfirmText="Você tem certeza que deseja excluir?" TargetControlID="Excluir" runat="server" />
        </div>


        <div style="float: left; margin-left: 60px; padding: 30px; background-color:lightskyblue; width: 400px;">
            <h3>ASSINALE SUAS COMPETÊNCIAS</h3>
            <hr />
            <asp:CheckBoxList ID="Competencias" Font-Size="14px" RepeatDirection="Vertical" runat="server"></asp:CheckBoxList>
        </div>


    </div>


    <div id="FimCadastro" runat="server" visible="false">
        <h2>Seus dados foram enviados com sucesso.</h2>
        <h4>Obrigado pela participação.</h4>
    </div>


</asp:Content>

