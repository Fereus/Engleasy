using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engleasy
{
    class GameController
    {
        Conquista conquista = new Conquista();

        public string conquistas(int pontos)
        {
            string ret = "";

           if(pontos < 100)
            {
                ret = "Recruta";
            }else if (pontos >=100 && pontos < 200)
            {
                ret = "Soldado";
            }
            else if (pontos >= 200 && pontos < 300)
            {
                ret = "Cabo";
            }
            else if (pontos >= 300 && pontos < 400)
            {
                ret = "Terceiro-Sargento";
            }
            else if (pontos >= 400 && pontos < 500)
            {
                ret = "Segundo-Sargento";
            }
            else if (pontos >= 500 && pontos < 600)
            {
                ret = "Primeiro-Sargento";
            }
            else if (pontos >= 600 && pontos < 700)
            {
                ret = "Subtenente";
            }
            else if (pontos >= 700 && pontos < 800)
            {
                ret = "Aspirante";
            }
            else if (pontos >= 800 && pontos < 900)
            {
                ret = "Segundo-Tenente";
            }
            else if (pontos >= 900 && pontos < 1000)
            {
                ret = "Primeiro-Tenente";
            }
            else if (pontos >= 1000 && pontos < 1100)
            {
                ret = "Capitão";
            }
            else if (pontos >= 1100 && pontos < 1200)
            {
                ret = "Major";
            }
            else if (pontos >= 1200 && pontos < 1300)
            {
                ret = "Tenente-Coronel";
            }
            else if (pontos >= 1300 && pontos < 1400)
            {
                ret = "Coronel";
            }
            else if (pontos >= 1400 && pontos < 1500)
            {
                ret = "General de Brigada";
            }
            else if (pontos >= 1500 && pontos < 1600)
            {
                ret = "General de Divisão";
            }
            else if (pontos >= 1600 && pontos < 1700)
            {
                ret = "General de Divisão";
            }
            else 
            {
                ret = "Marechal";
            }




            return ret;
        }

    }
}
