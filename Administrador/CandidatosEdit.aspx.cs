using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CandidatosEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {   //Se ela nao foi recarregada por um botao..
            LoadCandidatos();
            LoadCompetencias();
            
        }
      
    }
    

    //STRING DE CONECÇÃO
    protected string conn = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/BancoDeDados.accdb") + ";Persist Security Info=False;";

    AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

    //CARREGA OS CANDIDATOS NO GRID
    protected void LoadCandidatos()
    {
        string comando = "SELECT * FROM Candidatos ORDER BY Nome ASC";
        
        db.ConnectionString = conn;
        DataTable tb = (DataTable)db.Query(comando);

        if (tb.Rows.Count > 0)
        {
            Candidatos.DataSource = tb;
            Candidatos.DataBind();
        }
        tb.Dispose();
    }

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
        {
            string comando = "";
            string cod = "";
            db.ConnectionString = conn;

            if(CandidatoId.Text != "")
            {
                //GRAVA A EDIÇÃO
                comando = "UPDATE Candidatos SET Nome='" + Nome.Text + "',Email='" + Email.Text + "',Telefone='" + Telefone.Text + "',Resumo='" + Resumo.Text + "' WHERE CandidatoId=" + CandidatoId.Text + ";";
                db.Query(comando);
                cod = CandidatoId.Text;

            }
            else
            {

            //GRAVANDO OS DADOS DO CANDITATO
             comando = "INSERT INTO Candidatos(Nome,Email,Telefone,Resumo) VALUES('" + Nome.Text + "','" +
                Email.Text + "','" + Telefone.Text + "','" + Resumo.Text + "');";
            db.ConnectionString = conn;
            db.Query(comando);

            //OBTEM ID DO CANDIDATO ULTIMO CANDIDATO
            DataTable tb = (DataTable)db.Query("SELECT MAX(CandidatoId) AS id FROM Candidatos");
                cod = tb.Rows[0]["id"].ToString();
            }
            SalvaCompetencias(cod);
            Limpar();
        }
       
    }

    protected void Candidatos_SelectedIndexChanged(object sender, EventArgs e)
    {
        string comando = "SELECT * FROM Candidatos WHERE CandidatoId=" + Candidatos.SelectedRow.Cells[1].Text.ToString();
        //conecta no banco
        db.ConnectionString = conn;
        //executa o comando
        DataTable tb = (DataTable)db.Query(comando);

        if(tb.Rows.Count == 1)
        {
            Limpar();
            CandidatoId.Text = tb.Rows[0]["CandidatoId"].ToString();
            Nome.Text = tb.Rows[0]["Nome"].ToString();
            Email.Text = tb.Rows[0]["Email"].ToString();
            Telefone.Text = tb.Rows[0]["Telefone"].ToString();
            Resumo.Text = tb.Rows[0]["Resumo"].ToString();
            Excluir.Enabled = true;
            DefineCompetencias(tb.Rows[0]["CandidatoId"].ToString());
        }
    }

    protected void Excluir_Click(object sender, EventArgs e)
    {
        db.ConnectionString = conn;
        db.Query("DELETE FROM Candidatos WHERE CandidatoId=" + CandidatoId.Text + ";");
        db.Query("DELETE FROM CandidatosCompetencias WHERE CandidatoId=" + CandidatoId.Text + ";");
        Limpar();
    }

    protected void BuscarCandidato_Click(object sender, EventArgs e)
    {
         
        string comando = "SELECT * FROM Candidatos WHERE Nome LIKE '%" + Buscar.Text + "%' ORDER BY Nome ASC";
        db.ConnectionString = conn;
        DataTable tb = (DataTable)db.Query(comando);


        if (tb.Rows.Count > 0)
        {
            Candidatos.DataSource = tb;
            Candidatos.DataBind();
        }
    }

    protected void DefineCompetencias(string cod)
    {
        db.ConnectionString = conn;
        DataTable tb = new DataTable();
        foreach(ListItem it in Competencias.Items)
        {
            tb = (DataTable)db.Query("SELECT * FROM CandidatosCompetencias WHERE CandidatoId=" + cod + " AND CompetenciaId=" + it.Value + ";");
            if(tb.Rows.Count==1)
            {
                it.Selected = true;
            }
        }
        tb.Dispose();

    }

    protected void Limpar()
    {
        //LIMPA OS DADOS DOS CONTROLES
        CandidatoId.Text = "";
        Nome.Text = "";
        Email.Text = "";
        Telefone.Text = "";
        Resumo.Text = "";
        Excluir.Enabled = false;
        LoadCandidatos();
        LoadCompetencias();
    }

    //GRAVA AS COMPETENCIAS DO CANDIDATO
    protected void SalvaCompetencias(string cod)
    {
        //DELETA TODAS AS COMPETENCIAS DO CANDIDATO PARA SALVAR AS NOVAS
        db.ConnectionString = conn;
        db.Query("DELETE FROM CandidatosCompetencias WHERE CandidatoId=" + cod + ";");


        //GRAVAR AS COMPETENCIAS DESSE CANDITATO
        for (int i = 0; i < Competencias.Items.Count - 1; i++)
        {
            if (Competencias.Items[i].Selected)
            {
                //Grava essa selecionada no banco
                    db.Query("INSERT INTO CandidatosCompetencias(CompetenciaId,CandidatoId) VALUES(" +
                    Competencias.Items[i].Value.ToString() + "," + cod + ");");
            }       
        }
    }
}