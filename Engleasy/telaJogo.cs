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
        int round = 0;
        Enemy[] inimigo = new Enemy[15];
        Random rnd = new Random();
        bool stop = true;        
        string[] vet1 = new string[30];
        string[] vet2 = new string[30];




        public telaJogo()
        {


            InitializeComponent();



            vet1[0] = "sword";
            vet1[1] = "ice";
            vet1[2] = "gun";
            vet1[3] = "keyboard";
            vet1[4] = "light";
            vet1[5] = "wood";
            vet1[6] = "hammer";
            vet1[7] = "nail";
            vet1[8] = "cellphone";
            vet1[9] = "thunder";
            vet1[10] = "computer";

            vet2[0] = "espada";
            vet2[1] = "gelo";
            vet2[2] = "arma";
            vet2[3] = "teclado";
            vet2[4] = "luz";
            vet2[5] = "madeira";
            vet2[6] = "martelo";
            vet2[7] = "unha";
            vet2[8] = "celular";
            vet2[9] = "raio";
            vet2[10] = "computador";


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
            //DELETA INIMIGO

            //timer1.Enabled = true;
            // DEIXA O TIMER TRUE PRA MOVER



         //   Controls.Add(inimigo[1].pb);
           // Controls.Add(inimigo[2].pb);
            //Controls.Add(inimigo[3].pb);


              //  inimigo[1].pb.Location = new Point(inimigo[1].pb.Location.X + 3, inimigo[1].pb.Location.Y + 3);
              //  inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 25, inimigo[2].pb.Location.Y + 25);
              //  inimigo[3].pb.Location = new Point(inimigo[3].pb.Location.X + 8, inimigo[3].pb.Location.Y + 8);


            
;
            
        // criar o inimigo
        //Enemy[] inimigo = new Enemy[10];
        //inimigo[1] = new Enemy();
        //Controls.Add(inimigo[1].pb);
        // textDebug.Text = ("criado inimigo");

    }

        private void button1_Click(object sender, EventArgs e)
        {
            //PROXIMO ROUND
            //tbox_Round.Text = ("Round :" + round);
            //Controls.Add(inimigo[round].pb);
            //Controls.Add(inimigo[2].pb);
            //Controls.Add(inimigo[3].pb);
            //Controls.Add(inimigo[4].pb);
            //Controls.Add(inimigo[5].pb);


           /* for (int i = 0; i > 4; i++)
            { */
            //inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 3, inimigo[round].pb.Location.Y + 3);
            /*inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 25, inimigo[2].pb.Location.Y + 25);
            inimigo[3].pb.Location = new Point(inimigo[3].pb.Location.X + 8, inimigo[3].pb.Location.Y + 8);
            inimigo[4].pb.Location = new Point(inimigo[4].pb.Location.X + 15, inimigo[4].pb.Location.Y + 15);
            inimigo[5].pb.Location = new Point(inimigo[5].pb.Location.X + 32, inimigo[5].pb.Location.Y + 32);
            }*/
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
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), 0);
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X-5, inimigo[i].pb.Location.Y-15);
                    }
                    if (inimigo[i].lado == 2)
                    {
                        inimigo[i].pb.Image = Properties.Resources.soldireita;
                        inimigo[i].pb.Location = new Point(0, rnd.Next(900));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 3)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solcima;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), rnd.Next(590, 590));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 4)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solesquerda;
                        inimigo[i].pb.Location = new Point(rnd.Next(880, 880), rnd.Next(0, 590));
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
            if (pbVida.Value == 0)
            {
                pbox_Gameover.Visible = true;
                textDebug.Enabled = false;
                textDebug.Text = " :( ";
                timer1.Enabled = false;
                timer2.Enabled = false;
            }
            foreach (Enemy x in inimigo)
            {

                if (x.criado == true)
                {
                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y-1);
                        x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y-15);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y + 1);
                        x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y- 1);
                     x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y + 1);
                      x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y - 1);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y + 1);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y == 289))
                        x.pb.Location = new Point(x.pb.Location.X +1, x.pb.Location.Y);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y == 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y == 289) && (pbVida.Value > 0))
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
                        if (z > 14)
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
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), 0);
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 2)
                    {
                        inimigo[i].pb.Image = Properties.Resources.soldireita;
                        inimigo[i].pb.Location = new Point(0, rnd.Next(900));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 3)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solcima;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), rnd.Next(590, 590));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 4)
                    {
                    inimigo[i].pb.Image = Properties.Resources.solesquerda;
                    inimigo[i].pb.Location = new Point(rnd.Next(880, 880), rnd.Next(0, 590));
                    inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    }
                }
            textDebug.Text = "";
            }
        }
    }
}

