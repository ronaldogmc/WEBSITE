<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- BANNERS -->
    <!-- REF: http://flexslider.woothemes.com/ -->
    <div class="banners">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="images/emef1.jpg" />
                </li>
                <li>
                    <img src="images/emef3.jpg" />
                </li>
                 <li>
                    <img src="images/emef2.jpg" />
                </li>
            </ul>
        </div>
    </div>

    <!-- JAVASCRIPT PARA CONFIGURAR OS BANNERS -->
    <script type="text/javascript">
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });

    </script>

    <div style="margin-top: 60px;">
        <!--BOX 1 -->
        <div style="float: left; margin-left: 6%; height: 550px; background-color: #91f5d6; color: #515151; width: 28%;">
            <div style="padding:30px; text-align:center">
                <h2>CADASTRAR FUNCIONARIO</h2>
                <br />
                    Neste cadastro deverá constar o nome completo do funcionário, bem como seu endereço e contato. 
                   Seus cursos realidados seja graduação, pós, mestrado ou doutorado. 
                   <br /> <br /><br /><br /><br /><br />
                   
                <a href="Funcionarios.aspx"> <img src="images/func.png" /></a>

            </div>
        </div>
        <!--BOX 2 -->
        <div style="float: left; height: 550px; margin-left: 2%; margin-right: 2%; background-color: #91f5d6; color: #515151; width: 28%;">
            <div style="padding: 30px; text-align: center;">
                <h2>ABONADAS</h2>
           
                    <br /><br />
                   É possível realizar 6 abonadas por ano, sendo 3 por semestre e 1 por mês.
                    
                    <br /><br /><br /><br /><br /><br /><br /><br />
                    <a href="Abonada.aspx"><img src="images/com.png" /></a>

            </div>
        </div>
        <!--BOX 3-->
        <div style="float: left; height: 550px; margin-right: 6%; background-color: #91f5d6; color: #515151; width: 28%;">
            <div style="padding:30px; text-align:center;">
        <h2>HORÁRIOS</h2>
            <h3>LEMBRETES/RELATORIOS</h3>
            <br />
                Consultar que dia o professor estará na escola, bem como o horário de estudo.
                <br /><br /><br />
           <img src="images/ano.png" />
            </div>
            
        </div>

    </div>
</asp:Content>

