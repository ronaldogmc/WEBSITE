using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Abonadas : System.Web.UI.Page
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
       
        
    }
    //GRAVA CANDIDATO NO BANCO
    protected void Enviar_Click(object sender, EventArgs e)
    {
       
    }

    protected void Candidatos_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void Excluir_Click(object sender, EventArgs e)
    {
        
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
       
    }

    protected void Limpar()
    {
        //LIMPA OS DADOS DOS CONTROLES
        CandidatoId.Text = "";
        Nome.Text = "";
      
        Excluir.Enabled = false;
        LoadCandidatos();
        LoadCompetencias();
    }

    //GRAVA AS COMPETENCIAS DO CANDIDATO
    protected void SalvaCompetencias(string cod)
    {
    }
}