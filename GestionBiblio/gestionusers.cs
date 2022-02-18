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
    public partial class gestionusers : Form
    {
        string parametres = "SERVER=127.0.0.1; DATABASE=gestion_biblio; UID=root; PASSWORD=";
        public gestionusers()
        {
            InitializeComponent();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {
            DialogResult dialogClose = MessageBox.Show("Voulez vous vraiment fermer l'application ?", "Quitter le programme", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            if (dialogClose == DialogResult.OK)
            {
                Application.Exit();
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            dashboard a = new dashboard();
            this.Hide();
            a.Show();
        }

        private void button7_Click_1(object sender, EventArgs e)
        {
            dashboard a = new dashboard();
            this.Hide();
            a.Show();
        }

        private void gestionusers_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection(parametres);
            connection.Open();

            String request = "select login from users where login='" + textBox1.Text + "'";
            MySqlCommand cmd1 = new MySqlCommand(request, connection);

            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd1);
            MySqlDataReader dr = cmd1.ExecuteReader();
            if (textBox1.Text == "" || textBox2.Text == "")
            {
                MessageBox.Show("Login ou mot de passe vide");
            }
            else if (dr.Read() == true)
            {
                MessageBox.Show("Ce Login est déjà utilisé !");
                textBox1.Clear();
                textBox2.Clear();
            }
            else
            {
                string login = textBox1.Text;
                string pass = textBox2.Text;
                dr.Close();
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandText = "insert into users(login,password) values(@login, @pass)";
                cmd.Parameters.AddWithValue("@login", login);
                cmd.Parameters.AddWithValue("@pass", pass);
                cmd.ExecuteNonQuery();
                connection.Close();
                textBox1.Clear();
                textBox2.Clear();
                MessageBox.Show("Compte bien créer !");
            }
        }
    }
}
