<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Funcionarios.aspx.cs" Inherits="Funcionarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!--BUSCAR PROFESSOR -->
    <div runat="server" style="width: 700px; padding: 10px; height: 80px; background-color: white; text-align: center">

        <asp:Label Style="float: left; height: 40px; padding: 5px; text-align: center" ID="LabelBuscar" Text="Buscar Funcionário" runat="server"></asp:Label>

        <asp:TextBox ID="Buscar" runat="server" Style="float: left; width: 400px; height: 40px; color: blue; padding: 5px"></asp:TextBox>

        <asp:Button runat="server" ID="BuscarProfessor" OnClick="BuscarProfessor_Click" Text="Buscar" Style="float: left; width: 100px; height: 50px; padding: 5px; text-align: center" />

    </div>

    <br />
    <br />
    
    <!--EXIBE FUNCIONARIOS -->
    <asp:panel ID="Panel1" BackColor="White" Width="100%" Height="250px" ScrollBars="Auto" runat="server">

    
    </asp:panel>
    <br /><br />

    <div id="Cadastro" runat="server" visible="true">
        <div style="float: left; margin-left: 2%; padding: 30px; background-color: bisque; width: 250px;">
            <h2>CONCURSO</h2>
            <hr />
            <br />
            <asp:DropDownList ID="DropConcurso" DataTextField="oi" runat="server">
                <asp:ListItem Text=""></asp:ListItem>
                <asp:ListItem Text="Coordenacao"></asp:ListItem>
                <asp:ListItem Text="Secretaria"></asp:ListItem>
                <asp:ListItem Text="Inspetor"></asp:ListItem>
                <asp:ListItem Text="Professor"></asp:ListItem>
                <asp:ListItem Text="Cozinha"></asp:ListItem>
                <asp:ListItem Text="Servente"></asp:ListItem>
                <asp:ListItem Text="Biblioteca"></asp:ListItem>
                <asp:ListItem Text="Estagiario"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <h2>FUNÇÃO</h2>
            <hr />
            <br />
            <asp:DropDownList ID="DropFuncao" DataTextField="oi" runat="server">
                <asp:ListItem Text=""></asp:ListItem>
                <asp:ListItem Text="Readaptado Escriturário"></asp:ListItem>
                <asp:ListItem Text="Readaptado Inspetor"></asp:ListItem>

            </asp:DropDownList>
            <br />
            <br />
            <br />
            <h2>GRAU DE  ESCOLARIDADE</h2>
            <hr />
            <asp:DropDownList ID="GrauEscolaridade" DataTextField="oi" runat="server">
                <asp:ListItem Text=""></asp:ListItem>
                <asp:ListItem Text="Fundamental Incompleto"></asp:ListItem>
                <asp:ListItem Text="Fundamental Completo"></asp:ListItem>
                <asp:ListItem Text="Médio Completo"></asp:ListItem>
                <asp:ListItem Text="Médio Incompleto"></asp:ListItem>
                <asp:ListItem Text="Superior Completo"></asp:ListItem>
                <asp:ListItem Text="Superior Incompleto"></asp:ListItem>
            </asp:DropDownList>
            <br />  <br />  <br />
            3º GRAU<br />
            <asp:TextBox ID="TerceiroGrau" Width="200px" runat="server"></asp:TextBox>
            <br />
            <br />
            2º GRADUAÇÃO<br />
            <asp:TextBox ID="SegundaGraduacao" Width="200px" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            PÓS GRADUAÇÃO<br />
            <asp:TextBox ID="PosGraduacao" Width="200px" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            MESTRADO<br />
            <asp:TextBox ID="Mestrado" Width="200px" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            DOUTORADO<br />
            <asp:TextBox ID="Doutorado" Width="200px" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            OUTROS<br />
            <asp:TextBox ID="Outros" Width="200px" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />

        </div>



        <div style="float: left; margin-left: 2%; margin-right: 2%; width: 400px; padding: 30px; background-color: #d0d0d0">
            <h2>DADOS PESSOAIS</h2>
            <hr />
            <asp:Label ID="MsgErro" ForeColor="Red" runat="server"></asp:Label>
            <br />
            Matricula<br />
            <asp:TextBox ID="Matricula" class="caixa" runat="server"></asp:TextBox>
            <br />
              <br />
            Nome<br />
            <asp:TextBox ID="Nome" class="caixa" runat="server"></asp:TextBox>
            <br />
              <br />
            Nascimento<br />
            <asp:TextBox ID="Nascimento" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            Início na Prefeitura<br />
            <asp:TextBox ID="InicioPrefeitura" runat="server"></asp:TextBox>
            <br />
            <br />
            Término na Prefeitura<br />
            <asp:TextBox ID="TerminoPrefeitura" runat="server"></asp:TextBox>
            <br />
            <br />
            Início na Unidade<br />
            <asp:TextBox ID="InicioUnidade" runat="server"></asp:TextBox>
            <br />
            <br />
            Término na Unidade<br />
            <asp:TextBox ID="TerminoUnidade" runat="server"></asp:TextBox>
            <br />
            <br />
            Religião<br />
            <asp:TextBox ID="Religiao" runat="server"></asp:TextBox>
            <br />
            <br />
            Estado Cívil<br />
            <asp:DropDownList ID="EstadoCivil" runat="server">
                <asp:ListItem Text=""></asp:ListItem>
                <asp:ListItem Text="Solteiro(a)"></asp:ListItem>
                <asp:ListItem Text="Casado(a)"></asp:ListItem>
                <asp:ListItem Text="Separado(a)"></asp:ListItem>
                <asp:ListItem Text="Divorciado(a)"></asp:ListItem>
                <asp:ListItem Text="Viúvo(a)"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Nº Filhos:Menores de 18 anos:<br />
            <asp:TextBox ID="FilhosMenores" runat="server"></asp:TextBox>
            <br />
            <br />
            Maiores<br />
            <asp:TextBox ID="FilhoresMaiores" runat="server"></asp:TextBox>
            <br />
            <br />
            Nome da Mãe<br />
            <asp:TextBox ID="Mae" runat="server"></asp:TextBox>
            <br />
            <br />
            Deficiência<br />
        <asp:DropDownList ID="DropDeficiencia" DataTextField="a" runat="server">
            <asp:ListItem Text="Nenhuma"></asp:ListItem>
            <asp:ListItem Text="Física"></asp:ListItem>
            <asp:ListItem Text="Auditiva"></asp:ListItem>
            <asp:ListItem Text="Visual"></asp:ListItem>
            <asp:ListItem Text="Mental"></asp:ListItem>
            <asp:ListItem Text="Múltipla"></asp:ListItem>
            <asp:ListItem Text="Readaptado"></asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
            Tipo Sanguíneo<br />
         <asp:DropDownList ID="TipoSangue" DataTextField="a" runat="server">
             <asp:ListItem Text="Não declarado"></asp:ListItem>
             <asp:ListItem Text="O+"></asp:ListItem>
             <asp:ListItem Text="A+"></asp:ListItem>
             <asp:ListItem Text="O-"></asp:ListItem>
             <asp:ListItem Text="A-"></asp:ListItem>
             <asp:ListItem Text="B-"></asp:ListItem>
             <asp:ListItem Text="AB+"></asp:ListItem>
             <asp:ListItem Text="AB-"></asp:ListItem>
         </asp:DropDownList>
            <br />
            <br />
            Habilidade Motora<br />
         <asp:DropDownList ID="HabilidadeMotora" DataTextField="a" runat="server">
             <asp:ListItem Text=""></asp:ListItem>
             <asp:ListItem Text="Canhoto"></asp:ListItem>
             <asp:ListItem Text="Destro"></asp:ListItem>
             <asp:ListItem Text="Ambidestro"></asp:ListItem>
         </asp:DropDownList>
              <br />  
            <br />
            RG<br />
            <asp:TextBox ID="RG" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            Data de Emissão<br />
            <asp:TextBox ID="Emissao" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            Orgão Emissor<br />
            <asp:TextBox ID="Orgao" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            CPF<br />
            <asp:TextBox ID="Cpf" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            PIS/PASEP<br />
            <asp:TextBox ID="PIS" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            Nº Título de Eleitor<br />
            <asp:TextBox ID="TituloEleitor" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            Zona<br />
            <asp:TextBox ID="Zona" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />
            Seção<br />
            <asp:TextBox ID="Seção" class="caixa" runat="server"></asp:TextBox>
            <br />
            <br />


        </div>

        <div style="float: left; margin-left: 2%; padding: 30px; background-color: burlywood; width: 350px;">
            <h2>CONTATO</h2>
            <hr />
            Endereço<br />
            <asp:TextBox ID="Endereco" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Bairro<br />
            <asp:TextBox ID="Bairro" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Cidade<br />
            <asp:TextBox ID="Cidade" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Telefone Fixo<br />
            <asp:TextBox ID="Telefone" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Celular<br />
            <asp:TextBox ID="Celular" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Contatos de Emergência 1<br />
            <asp:TextBox ID="Emergencia1" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Contatos de Emergência 2<br />
            <asp:TextBox ID="Emergencia2" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Contatos de Emergência 3<br />
            <asp:TextBox ID="Emergencia3" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            E-mail<br />
            <asp:TextBox ID="Email" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
             Tem convênio médico?<br />
              <asp:DropDownList ID="Convenio" DataTextField="a" runat="server">
             <asp:ListItem Text="Sim"></asp:ListItem>
             <asp:ListItem Text="Não"></asp:ListItem>
              </asp:DropDownList><br />
            Qual?
            <asp:TextBox ID="NomeConvenio" class="caixacontato" runat="server"></asp:TextBox>
            <br />
            <br />
            Help Móvel?<br />
              <asp:DropDownList ID="HelpMovel" DataTextField="a" runat="server">
             <asp:ListItem Text="Sim"></asp:ListItem>
             <asp:ListItem Text="Não"></asp:ListItem>
              </asp:DropDownList><br />
        </div>

    </div>
    <div style="clear:both"></div>

    <div id="FimCadastro" runat="server" visible="false">
        <h2>Seus dados foram enviados com sucesso.</h2>
        <h4>Obrigado pela participação.</h4>
    </div>

</asp:Content>

