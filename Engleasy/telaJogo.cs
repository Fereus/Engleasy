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

        int posyrnd=0, posxrnd=0, i=0, x=0, valor = 1;
        int round = 0;
        Enemy[] inimigo = new Enemy[21];
        Random rnd = new Random();
        bool stop = true;
        //Controls.Add(inimigo[i].pb);


        public telaJogo()
        {
            InitializeComponent();
            inimigo[0] = new Enemy();
            inimigo[1] = new Enemy();
            inimigo[2] = new Enemy();
            inimigo[3] = new Enemy();
            inimigo[4] = new Enemy();
            inimigo[5] = new Enemy();
            inimigo[6] = new Enemy();
            inimigo[7] = new Enemy();
            inimigo[8] = new Enemy();
            inimigo[9] = new Enemy();
            inimigo[10] = new Enemy();
            inimigo[11] = new Enemy();
            inimigo[12] = new Enemy();
            inimigo[13] = new Enemy();
            inimigo[14] = new Enemy();
            inimigo[15] = new Enemy();
            inimigo[16] = new Enemy();
            inimigo[17] = new Enemy();
            inimigo[18] = new Enemy();
            inimigo[19] = new Enemy();
            inimigo[20] = new Enemy();
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
            round = round + 1;
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

            if (round == 0)
            { 
             Controls.Add(inimigo[round].pb);
                if (inimigo[round].criado == false) { 
                    inimigo[round].posy = rnd.Next(0, 900);
                    inimigo[round].posx = rnd.Next(0);
                    inimigo[round].criado = true;
            }
            inimigo[round].pb.Location = new Point(inimigo[round].posy+5, inimigo[round].posx+5);
            }else if (round == 1)
            {
                
             Controls.Add(inimigo[round].pb);
                if (inimigo[round].criado == false)
                {
                 inimigo[round].posy = rnd.Next(0);
                 inimigo[round].posx = rnd.Next(900);
                 inimigo[round].criado = true;
                }
                inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 3, inimigo[round].pb.Location.Y + 3);
            }
            /*
            else if (round == 2)
            {
                Controls.Add(inimigo[round].pb);
                inimigo[round].lado = rnd.Next(1, 5);
                inimigo[0].pb.Location = new Point(inimigo[0].pb.Location.X + 3, inimigo[0].pb.Location.Y + 3);
                inimigo[1].pb.Location = new Point(inimigo[1].pb.Location.X + 3, inimigo[1].pb.Location.Y + 3);
                inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 3, inimigo[round].pb.Location.Y + 3);
            }
            else if (round == 3)
            {
                Controls.Add(inimigo[round].pb);
                inimigo[round].lado = rnd.Next(1, 5);
                inimigo[0].pb.Location = new Point(inimigo[0].pb.Location.X + 3, inimigo[0].pb.Location.Y + 3);
                inimigo[1].pb.Location = new Point(inimigo[1].pb.Location.X + 3, inimigo[1].pb.Location.Y + 3);
                inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 3, inimigo[2].pb.Location.Y + 3);
                inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 3, inimigo[round].pb.Location.Y + 3);
            }
            else if (round == 4)
            {
                Controls.Add(inimigo[round].pb);
                inimigo[round].lado = rnd.Next(1, 5);
                inimigo[0].pb.Location = new Point(inimigo[0].pb.Location.X + 3, inimigo[0].pb.Location.Y + 3);
                inimigo[1].pb.Location = new Point(inimigo[1].pb.Location.X + 3, inimigo[1].pb.Location.Y + 3);
                inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 3, inimigo[2].pb.Location.Y + 3);
                inimigo[3].pb.Location = new Point(inimigo[3].pb.Location.X + 3, inimigo[3].pb.Location.Y + 3);
                inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 3, inimigo[round].pb.Location.Y + 3);
            }*/

            round = round + 1;
            if (round == 5)
            {
                round = 0;
            }
        }


        private void timer2_Tick(object sender, EventArgs e)
        {
            //int i = 0;
                //textDebug.Text = ("numero : {0}" +1 + 1);
                //  Controls.Add(inimigo[i].pb);
                  //  inimigo[3].pb.Location = new Point(inimigo[i].pb.Location.X + 3, inimigo[i].pb.Location.Y + 3);
            
        }
    }


    }

