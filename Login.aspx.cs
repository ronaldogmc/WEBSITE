using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; //NECESSÁRIO PARA AUTENTICAÇÃO

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Entrar_Click(object sender, EventArgs e)
    {
        if (Nome.Text == "ronaldo" && Senha.Text == "12345")
        {
            FormsAuthentication.Initialize();
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, Nome.Text, DateTime.Now, DateTime.Now.AddMinutes(30), false, "",FormsAuthentication.FormsCookiePath);
            //GRAVA O COOKIE
            Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName,FormsAuthentication.Encrypt(ticket)));
            Response.Redirect(FormsAuthentication.GetRedirectUrl(Nome.Text, false));
        }
        else Msg.Text = "Dados de acesso inválidos!";
    }
}