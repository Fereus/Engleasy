namespace Engleasy
{
    partial class telaJogo
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.textDebug = new System.Windows.Forms.TextBox();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            this.pbVida = new System.Windows.Forms.ProgressBar();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.lbn_Pontos = new System.Windows.Forms.Label();
            this.pbox_Gameover = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbox_Gameover)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::Engleasy.Properties.Resources.arma1;
            this.pictureBox1.Location = new System.Drawing.Point(388, 290);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(58, 59);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 4000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // textDebug
            // 
            this.textDebug.Location = new System.Drawing.Point(327, 376);
            this.textDebug.Name = "textDebug";
            this.textDebug.Size = new System.Drawing.Size(190, 20);
            this.textDebug.TabIndex = 2;
            this.textDebug.KeyDown += new System.Windows.Forms.KeyEventHandler(this.textDebug_KeyUp);
            // 
            // timer2
            // 
            this.timer2.Enabled = true;
            this.timer2.Interval = 50;
            this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
            // 
            // pbVida
            // 
            this.pbVida.Location = new System.Drawing.Point(180, 12);
            this.pbVida.Name = "pbVida";
            this.pbVida.Size = new System.Drawing.Size(253, 23);
            this.pbVida.TabIndex = 5;
            // 
            // pictureBox2
            // 
            this.pictureBox2.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox2.Image = global::Engleasy.Properties.Resources.cd272634d89f773268cc79d22868f8051;
            this.pictureBox2.Location = new System.Drawing.Point(12, 3);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(162, 40);
            this.pictureBox2.TabIndex = 6;
            this.pictureBox2.TabStop = false;
            // 
            // pictureBox3
            // 
            this.pictureBox3.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox3.Image = global::Engleasy.Properties.Resources._5cea09a0671775a8feb5c3eb9b679e43;
            this.pictureBox3.Location = new System.Drawing.Point(459, 3);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(259, 40);
            this.pictureBox3.TabIndex = 7;
            this.pictureBox3.TabStop = false;
            // 
            // lbn_Pontos
            // 
            this.lbn_Pontos.AutoSize = true;
            this.lbn_Pontos.Font = new System.Drawing.Font("Candara", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbn_Pontos.Location = new System.Drawing.Point(724, 12);
            this.lbn_Pontos.Name = "lbn_Pontos";
            this.lbn_Pontos.Size = new System.Drawing.Size(18, 19);
            this.lbn_Pontos.TabIndex = 8;
            this.lbn_Pontos.Text = "0";
            // 
            // pbox_Gameover
            // 
            this.pbox_Gameover.BackColor = System.Drawing.Color.Transparent;
            this.pbox_Gameover.Image = global::Engleasy.Properties.Resources._9abe1ed209bdf06f2b322b588b332c41;
            this.pbox_Gameover.Location = new System.Drawing.Point(215, 234);
            this.pbox_Gameover.Name = "pbox_Gameover";
            this.pbox_Gameover.Size = new System.Drawing.Size(421, 59);
            this.pbox_Gameover.TabIndex = 9;
            this.pbox_Gameover.TabStop = false;
            this.pbox_Gameover.Visible = false;
            // 
            // telaJogo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Engleasy.Properties.Resources.telona_do_fim;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(894, 620);
            this.Controls.Add(this.pbox_Gameover);
            this.Controls.Add(this.lbn_Pontos);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pbVida);
            this.Controls.Add(this.textDebug);
            this.Controls.Add(this.pictureBox1);
            this.DoubleBuffered = true;
            this.Name = "telaJogo";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbox_Gameover)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.TextBox textDebug;
        private System.Windows.Forms.Timer timer2;
        private System.Windows.Forms.ProgressBar pbVida;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.Label lbn_Pontos;
        private System.Windows.Forms.PictureBox pbox_Gameover;
    }
}