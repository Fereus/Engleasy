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

        int posyrnd=0, posxrnd=0, i=0, r=0, x=0, contador = 2;
        int round = 0;
        Enemy[] inimigo = new Enemy[50];
        Random rnd = new Random();
        bool stop = true;
        //Controls.Add(inimigo[i].pb);


        public telaJogo()
        {
            InitializeComponent();
            for (int i = 0; i < 50; i++)
            {
                inimigo[i] = new Enemy();
                
                
            }
            /*
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
            inimigo[20] = new Enemy();*/
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

      

            for (i = 0; i < r; i++)
            {
                  Controls.Add(inimigo[i].pb);
                 if (inimigo[i].criado == false) {
                    inimigo[i].lado = rnd.Next(1, 5);


                    if (inimigo[i].lado == 1)
                    {
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), 0);
                    }
                    if (inimigo[i].lado == 2)
                    {
                        inimigo[i].pb.Location = new Point(0, rnd.Next(900));
                    }
                    if (inimigo[i].lado == 3)
                    {
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), rnd.Next(590, 590));
                    }
                    if (inimigo[i].lado == 4)
                    {
                        inimigo[i].pb.Location = new Point(rnd.Next(880, 880), rnd.Next(0, 590));
                    }

                    inimigo[i].criado = true;

                    

                    //inimigo[i].pb.Location = new Point(rnd.Next(0, 900), 0);
                    //inimigo[i].pb.Location = new Point(0, rnd.Next(900));
                    //inimigo[i].pb.Location = new Point(rnd.Next(0, 900), rnd.Next(590, 590));
                    //inimigo[i].pb.Location = new Point(rnd.Next(880, 880), rnd.Next(0, 590));
                }
            }

            r++;
            if (r == 50)
            {
                r = 0;
            }

        }

            /*
            if (round == 0)
            { 
             Controls.Add(inimigo[round].pb);
                if (inimigo[round].criado == false) { 
                    inimigo[round].posy = rnd.Next(0, 900);
                    inimigo[round].posx = rnd.Next(0);
                    inimigo[round].criado = true;
            }
            //inimigo[round].pb.Location = new Point(inimigo[round].posy+5, inimigo[round].posx+5);
                inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 3, inimigo[round].pb.Location.Y + 3);
            }
            else if (round == 1)
            {
                
             Controls.Add(inimigo[round].pb);
                if (inimigo[round].criado == false)
                {
                 inimigo[round].posy = rnd.Next(0);
                 inimigo[round].posx = rnd.Next(900);
                 inimigo[round].criado = true;
                }
                inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 10, inimigo[round].pb.Location.Y + 10);
            }*/
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

            /*round = round + 1;
            if (round == 5)
            {
                round = 0;
            }*/
        


        private void timer2_Tick(object sender, EventArgs e)
        {
            //406; 289
            foreach (Enemy x in inimigo)
            {

                if (x.criado == true)
                {
                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y-1);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y + 1);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y- 1);

                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y + 1);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y - 1);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y + 1);

                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y == 289))
                        x.pb.Location = new Point(x.pb.Location.X +1, x.pb.Location.Y);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y == 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y);




                }
            }
        }
    }


    }

