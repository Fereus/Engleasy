using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Windows.Forms;
using System.Threading.Tasks;
using System.Threading;

namespace Engleasy
{
    public class Enemy
    {
        public PictureBox pb;
        public int lado = 0, posy = 0 , posx = 0;

        Random rnd = new Random();

        public Enemy()
        {  /*CIMA
            posy = rnd.Next(0, 900);
            posx = rnd.Next(0);
            */

            /*ESQUERDA
            posy = rnd.Next(0);
            posx = rnd.Next(900);
            */

            /*baixo
            posy = rnd.Next(0, 900);
            posx = rnd.Next(590, 590);
            */

            /*direita
            posy = rnd.Next(880,880);
            posx = rnd.Next(0,590);
            */
            lado = rnd.Next(1, 5);
            if (lado == 1) //esquerdo
            {
                posy = rnd.Next(0, 900);
                posx = rnd.Next(0);
            }
            if (lado == 2) //superior
            {
                posy = rnd.Next(0);
                posx = rnd.Next(900);
            }
            if (lado == 3)//direito
            {
                posy = rnd.Next(0, 900);
                posx = rnd.Next(590, 590);
            }
            if (lado == 4)//baixo
            {
                posy = rnd.Next(880, 880);
                posx = rnd.Next(0, 590);
            }


            pb = new PictureBox();
            pb.Location = new Point(posy, posx);
            pb.Size = new Size(27, 33);
            pb.Image = Properties.Resources.soldier;

           /* while (pb.Location.Y < 406 && pb.Location.X < 289)
            {
              
                pb = this.move(pb, lado);
                Thread.Sleep(1000);
            }*/
                

        }


        public PictureBox move(PictureBox pb)
        {
           
            //406; 289
                
          
                    if (pb.Location.Y < 406 )
                    {
                        pb.Location = new Point(pb.Location.Y + 5, pb.Location.X);
                    }
                    if (pb.Location.X < 289)
                    {
                        pb.Location = new Point(pb.Location.Y, pb.Location.X +5);
                    }
                    if (pb.Location.Y > 406)
                    {
                        pb.Location = new Point(pb.Location.Y - 5, pb.Location.X);
                    }
                    if (pb.Location.X > 289)
                    {
                        pb.Location = new Point(pb.Location.Y, pb.Location.X - 5);
                    }

            return pb;
        }   
    }



}
