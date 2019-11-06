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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(telaJogo));
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btn_gerador = new System.Windows.Forms.Button();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.textDebug = new System.Windows.Forms.TextBox();
            this.btnMover = new System.Windows.Forms.Button();
            this.timer2 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(406, 289);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(27, 33);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // btn_gerador
            // 
            this.btn_gerador.Location = new System.Drawing.Point(326, 402);
            this.btn_gerador.Name = "btn_gerador";
            this.btn_gerador.Size = new System.Drawing.Size(89, 36);
            this.btn_gerador.TabIndex = 1;
            this.btn_gerador.Text = "Gerar Enemy";
            this.btn_gerador.UseVisualStyleBackColor = true;
            this.btn_gerador.Click += new System.EventHandler(this.btn_gerador_Click);
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // textDebug
            // 
            this.textDebug.Location = new System.Drawing.Point(311, 355);
            this.textDebug.Name = "textDebug";
            this.textDebug.Size = new System.Drawing.Size(337, 20);
            this.textDebug.TabIndex = 2;
            // 
            // btnMover
            // 
            this.btnMover.Location = new System.Drawing.Point(459, 402);
            this.btnMover.Name = "btnMover";
            this.btnMover.Size = new System.Drawing.Size(109, 36);
            this.btnMover.TabIndex = 3;
            this.btnMover.Text = "Mover Inimigo";
            this.btnMover.UseVisualStyleBackColor = true;
            this.btnMover.Click += new System.EventHandler(this.button1_Click);
            // 
            // timer2
            // 
            this.timer2.Enabled = true;
            this.timer2.Interval = 1000;
            this.timer2.Tick += new System.EventHandler(this.timer2_Tick);
            // 
            // telaJogo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Engleasy.Properties.Resources.tela_inicio;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ClientSize = new System.Drawing.Size(896, 620);
            this.Controls.Add(this.btnMover);
            this.Controls.Add(this.textDebug);
            this.Controls.Add(this.btn_gerador);
            this.Controls.Add(this.pictureBox1);
            this.Name = "telaJogo";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btn_gerador;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.TextBox textDebug;
        private System.Windows.Forms.Button btnMover;
        private System.Windows.Forms.Timer timer2;
    }
}