namespace Engleasy
{
    partial class telaInicial
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnCreditos = new System.Windows.Forms.Button();
            this.btnRank = new System.Windows.Forms.Button();
            this.btnJogar = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCreditos
            // 
            this.btnCreditos.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCreditos.Location = new System.Drawing.Point(671, 426);
            this.btnCreditos.Name = "btnCreditos";
            this.btnCreditos.Size = new System.Drawing.Size(187, 43);
            this.btnCreditos.TabIndex = 1;
            this.btnCreditos.Text = "Abrir Creditos";
            this.btnCreditos.UseVisualStyleBackColor = true;
            this.btnCreditos.Click += new System.EventHandler(this.btnCreditos_Click);
            // 
            // btnRank
            // 
            this.btnRank.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRank.Location = new System.Drawing.Point(671, 358);
            this.btnRank.Name = "btnRank";
            this.btnRank.Size = new System.Drawing.Size(187, 43);
            this.btnRank.TabIndex = 2;
            this.btnRank.Text = "Abrir Rank";
            this.btnRank.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnRank.UseVisualStyleBackColor = true;
            this.btnRank.Click += new System.EventHandler(this.btnRank_Click);
            // 
            // btnJogar
            // 
            this.btnJogar.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnJogar.Location = new System.Drawing.Point(671, 298);
            this.btnJogar.Name = "btnJogar";
            this.btnJogar.Size = new System.Drawing.Size(187, 43);
            this.btnJogar.TabIndex = 3;
            this.btnJogar.Text = "Jogar";
            this.btnJogar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnJogar.UseVisualStyleBackColor = true;
            this.btnJogar.Click += new System.EventHandler(this.btnJogar_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::Engleasy.Properties.Resources._69d604ce2cbf28f299680c211c5c9f22;
            this.pictureBox1.Location = new System.Drawing.Point(283, 52);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(348, 62);
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // telaInicial
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::Engleasy.Properties.Resources.tela_inicial;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(934, 611);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnJogar);
            this.Controls.Add(this.btnRank);
            this.Controls.Add(this.btnCreditos);
            this.Name = "telaInicial";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Engleasy";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnCreditos;
        private System.Windows.Forms.Button btnRank;
        private System.Windows.Forms.Button btnJogar;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}

