using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GestionBiblio
{
    public partial class chartemp : Form
    {
        string parametres = "SERVER=127.0.0.1; DATABASE=gestion_bibliotheque; UID=root; PASSWORD=";
        private MySqlConnection maconnexion;
        public chartemp()
        {
            InitializeComponent();
        }

        private void chart1_Click(object sender, EventArgs e)
        {
            maconnexion = new MySqlConnection(parametres);
            DataSet ds = new DataSet();
            maconnexion.Open();
            string request = "Select count(*) as number_x,client from emprunteurs group by client";
            MySqlCommand cmd = new MySqlCommand(request, maconnexion);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(ds);
            chart1.DataSource = ds;
            //set the member of the chart data source used to data bind to the X-values of the series  
            chart1.Series["emprunteurs"].XValueMember = "client";
            //set the member columns of the chart data source used to data bind to the X-values of the series  
            chart1.Series["emprunteurs"].YValueMembers = "number_x";
            chart1.Titles.Add("Nombre des Emprunts Par Emprunteurs");
            maconnexion.Close();
        }

        private void label3_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
