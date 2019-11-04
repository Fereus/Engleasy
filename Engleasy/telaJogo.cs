using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;

namespace Engleasy
{
    public partial class telaJogo : Form
    {
        int i = 1;
        int z = 9;
        List<Enemy> lstEnemy = new List<Enemy>();
        Enemy inimigo = new Enemy();
        
        public telaJogo()
        {
            InitializeComponent();
           // Controls.Add(inimigo.pb);
             CreateControl();
           
                Thread mensagem = new Thread(new ThreadStart(reThread));
                mensagem.Start();
        
        }

        public void reThread()
        {

            timerEventGame();
        }

        public void timerEventGame()
        {

            inimigo = new Enemy();
            Enemy moves = new Enemy();

            Controls.Add(inimigo.pb);
            int x = 2;

            lstEnemy.Add(inimigo);
            for (int i = 0; i < x; i++)
            {
                foreach (Enemy en in lstEnemy)
                {
                    moves.move(en.pb);
                    
                }

            }
            Thread.Sleep(400);
            reThread();
            /* i = i + 1;
             if (i == 9)
             {
                 i = 0;
             }*/


            //  Enemy inimigo = new Enemy();
            //  Controls.Add(inimigo.pb);
            // _PRECISA_VERIFICAR_SE_ESTA CRIANDO O OBJETO CERTINHO
            // textDebug.Text = ("criado inimigo : {0}" + i);
        }

        private void btn_gerador_Click(object sender, EventArgs e)
        {
            
            Enemy inimigo = new Enemy();
            Enemy moves = new Enemy();
            inimigo = new Enemy();
            Controls.Add(inimigo.pb);
            int x = 10;

            lstEnemy.Add(inimigo);
            for (int i = 0; i < x; i++)
            {
                foreach (Enemy en in lstEnemy)
                {
                    moves.move(en.pb);
                    Thread.Sleep(400);
                }
                
            }
           /* i = i + 1;
            if (i == 9)
            {
                i = 0;
            }*/

            




            //  Enemy inimigo = new Enemy();
            //  Controls.Add(inimigo.pb);
            // _PRECISA_VERIFICAR_SE_ESTA CRIANDO O OBJETO CERTINHO
            textDebug.Text = ("criado inimigo : {0}"+i);
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            //  TESTES PARA TENTAR MOVER IMG
            //this.SuspendLayout();
            //pb.Location = new Point(pb.Location.X + 10, pb.Location.Y);
            //this.ResumeLayout();
        }

        private void telaJogo_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
