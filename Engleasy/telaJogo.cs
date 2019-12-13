using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Engleasy
{
    public partial class telaJogo : Form
    {



        //public PictureBox xablau;
        PictureBox[] xablau = new PictureBox[30];
        int posyrnd = 0, posxrnd = 0, i = 0, r = 0, x = 0, contador = 2, vida = 100, j = 0, pontos = 0, z=0;
        Enemy[] inimigo = new Enemy[15];
        Random rnd = new Random();
        bool stop = true;
        Pontos point = new Pontos();
        GameBD bdGame = new GameBD();
        GameController controller = new GameController();
        Conquista conquista = new Conquista();

        private void telaJogo_Load(object sender, EventArgs e)
        {

        }

        private void lbn_Pontos_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.Close();
            telaJogo t5 = new telaJogo();
            t5.Show();
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {

        }

        string[] vet1 = new string[55];

        private void pictureBox3_Click_1(object sender, EventArgs e)
        {

        }

        string[] vet2 = new string[55];
        public string teste;
        List<Palavras> listPalavras = new List<Palavras>();


        public telaJogo()
        {
            int indexPalavra = 0;
;
            InitializeComponent();
            try
            {
                listPalavras = bdGame.getPalavras();
                 indexPalavra = listPalavras.Count;

            }
            catch
            {
                MessageBox.Show("Não foi possivel fazer conexão com o banco de dados");
                return;
            }

            for(int i = 0; i< indexPalavra; i++)
            {
                vet1[i] = listPalavras[i].gp_palavra_ingles;
                vet2[i] = listPalavras[i].gp_palavra_traducao;
            }
                



          

                for (int i = 0; i < 15; i++)      //  INSTANCIA  os inimigs
            {
                inimigo[i] = new Enemy();
                inimigo[i].nome.Text = vet1[j];   //  passando palavra vet 1
                inimigo[i].senha = vet2[j];       //  traducao correspondente vet 2
                j++;                              //  j garante posicao igual entre palavra/traducao
                inimigo[i].grave.Visible = false;
            }



            for (int i = 0; i < 15; i++)
            {
                xablau[i] = new PictureBox();
                xablau[i].BackColor = Color.Transparent;
                xablau[i].Size = new Size(32, 32);
                xablau[i].Image = Properties.Resources.grave;
                xablau[i].Location = new Point(400, 200);
                xablau[i].Visible = false;
                Controls.Add(xablau[i]);
            }

            pbVida.Value = 100;
        }

        public void btn_gerador_Click(object sender, EventArgs e)
        {
           

    }

        private void button1_Click(object sender, EventArgs e)
        {
           
          
        }



        private void timer1_Tick(object sender, EventArgs e)
        {
            for (i = 0; i < r; i++)
            {
                  Controls.Add(inimigo[i].pb);
                  Controls.Add(inimigo[i].nome);
                  Controls.Add(inimigo[i].grave);
                 if (inimigo[i].criado == false) {
                    inimigo[i].lado = rnd.Next(1, 5);


                    if (inimigo[i].lado == 1)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solbaixo;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 1450), 0);
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X-5, inimigo[i].pb.Location.Y-15);
                    }
                    if (inimigo[i].lado == 2)
                    {
                        inimigo[i].pb.Image = Properties.Resources.soldireita;
                        inimigo[i].pb.Location = new Point(0, rnd.Next(1450));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 3)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solcima;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 1450), rnd.Next(920, 920));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 4)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solesquerda;
                        inimigo[i].pb.Location = new Point(rnd.Next(1450, 1450), rnd.Next(0, 920));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }

                    inimigo[i].criado = true;
                }
            }

            r++;
            if (r == 15)
            {
                r = 0;
            }

        }


        


        private void timer2_Tick(object sender, EventArgs e)
        {


            if (pontos < 200)
            {
                timer2.Interval = 50;

            }
            else if (pontos >= 200 && pontos < 400)
            {
                timer2.Interval = 40;
            }
            else if (pontos >= 400 && pontos < 600)
            {
                timer2.Interval = 30;
            }
            else if (pontos >= 600 && pontos < 800)
            {
                timer2.Interval = 20;
            }
            else
            {
                timer2.Interval = 15;
            }

            if (pbVida.Value == 0)
            {

                pbox_Gameover.Visible = true;
                btn_JogarNovamente.Visible = true;
                textDebug.Enabled = false;
                textDebug.Text = " :( ";
                timer1.Enabled = false;
                timer2.Enabled = false;

                try
                {
                    point.idUsr = Usuario.SessionGame.id;
                    point.pontos = pontos;
                    bdGame.savePoints(point);
                    conquista.idUsr = Usuario.SessionGame.id;
                    conquista.conquistas = controller.conquistas(pontos);

                if (bdGame.getBestPointById(Usuario.SessionGame.id) != 0 && pontos < bdGame.getBestPointById(Usuario.SessionGame.id))
                    {
                        
                        bdGame.updateConquistas(conquista);
                                           
                    }
                    else
                    {
                        bdGame.saveConquistas(conquista);

                    }
              }
               catch (Exception)
                {
                    MessageBox.Show("Problemas em salvar dados");
                }

            }
            foreach (Enemy x in inimigo)
            {

                if (x.criado == true)
                {
                    if ((x.pb.Location.X < 695) && (x.pb.Location.Y > 430))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y-1);
                        x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y-15);

                    if ((x.pb.Location.X > 695) && (x.pb.Location.Y < 430))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y + 1);
                        x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X > 695) && (x.pb.Location.Y > 430))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y- 1);
                     x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X < 695) && (x.pb.Location.Y < 430))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y + 1);
                      x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 695) && (x.pb.Location.Y > 430))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y - 1);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 695) && (x.pb.Location.Y < 430))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y + 1);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X < 695) && (x.pb.Location.Y == 430))
                        x.pb.Location = new Point(x.pb.Location.X +1, x.pb.Location.Y);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X > 695) && (x.pb.Location.Y == 430))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 695) && (x.pb.Location.Y == 430) && (pbVida.Value > 0))
                        pbVida.Value--;
                }
            }
        }
        private void textDebug_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {

                for (i=0; i<15; i++)
                {
                    if (textDebug.Text == inimigo[i].senha)
                    {
                        if (z > 5)
                        {
                            z = 0;
                        }
                        xablau[z].Visible = true;
                        xablau[z].Location = new Point(inimigo[i].pb.Location.X, inimigo[i].pb.Location.Y);
                        z++;
                        pontos = pontos + 10;
                        lbn_Pontos.Text = ("" + pontos);
                        inimigo[i].lado = rnd.Next(1, 5);

                    if (inimigo[i].lado == 1)
                    {
                            
                        inimigo[i].pb.Image = Properties.Resources.solbaixo;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 1450), 0);
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 2)
                    {
                       
                        inimigo[i].pb.Image = Properties.Resources.soldireita;
                        inimigo[i].pb.Location = new Point(0, rnd.Next(1450));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 3)
                    {
                       
                        inimigo[i].pb.Image = Properties.Resources.solcima;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 1450), rnd.Next(920, 920));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 4)
                    {
                       
                        inimigo[i].pb.Image = Properties.Resources.solesquerda;
                        inimigo[i].pb.Location = new Point(rnd.Next(1450, 1450), rnd.Next(0, 920));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    }
                }
            textDebug.Text = "";
            }
        }
    }
}

