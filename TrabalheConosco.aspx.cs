using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrabalheConosco : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {   //Se ela nao foi recarregada por um botao..
             LoadCompetencias();
        }
      
    }

    //STRING DE CONECÇÃO
    protected string conn = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/BancoDeDados.accdb") + ";Persist Security Info=False;";

    AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

    protected void LoadCompetencias()
    {
        string comando = "SELECT * FROM Competencias ORDER BY Nome";
        db.ConnectionString = conn;
        //Executa SQL e coloca o resultado no checkboxlist
        DataTable tb = (DataTable)db.Query(comando);
        if(tb.Rows.Count>0)
          {
            Competencias.Items.Clear();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                Competencias.Items.Add(new ListItem(tb.Rows[i]["Nome"].ToString(),
                    tb.Rows[i]["CompetenciaId"].ToString()));
            }
        }
        
    }
    //GRAVA CANDIDATO NO BANCO
    protected void Enviar_Click(object sender, EventArgs e)
    {
        if (Nome.Text.Trim()=="")
        {
            MsgErro.Text = "O nome deve ser informado";
        }
        else if(Email.Text.Trim()=="")
        {
            MsgErro.Text = "O email deve ser informado";
        }
        else if (Telefone.Text.Trim() == "")
        {
            MsgErro.Text = "O Telefone deve ser informado";
        }
        else if (Resumo.Text.Trim() == "")
        {
            MsgErro.Text = "O Resumo deve ser informado";
        }
      
        else
        {   //GRAVANDO OS DADOS DO CANDITATO
            string comando = "INSERT INTO Candidatos(Nome,Email,Telefone,Resumo) VALUES('" + Nome.Text + "','" +
                Email.Text + "','" + Telefone.Text + "','" + Resumo.Text + "');";
            db.ConnectionString = conn;
            db.Query(comando);

            //OBTEM ID DO CANDIDATO ULTIMO CANDIDATO
            DataTable tb = (DataTable)db.Query("SELECT MAX(CandidatoId) AS id FROM Candidatos");
            string candidatoId = tb.Rows[0]["id"].ToString();

            if (Competencias.Items.Count==0)
            {
                MsgErro.Text = "Escolha as competencias!";
            }
            //GRAVAR AS CONFERENCIAS DESSE CANDITATO
            for (int i = 0; i < Competencias.Items.Count-1; i++)
            {
                if (Competencias.Items[i].Selected)
                {
                    //Grava essa selecionada no banco
                    comando = "INSERT INTO CandidatosCompetencias(CompetenciaId,CandidatoId) VALUES(" +
                        Competencias.Items[i].Value.ToString() + "," + candidatoId + ");";
                    db.ConnectionString = conn;
                    db.Query(comando);
                }
                else
                {
                    MsgErro.Text = "Escolha as Competencias";
                }
            }

            Cadastro.Visible = false;
            FimCadastro.Visible = true;


        }
        Nome.Text = "";
        Telefone.Text = "";
        Email.Text = "";
        Resumo.Text = "";
    }
}