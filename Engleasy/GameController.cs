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

        public int conquistas(int pontos)
        {
            int ret = 0;

           if(pontos < 100)
            {
                ret = 1;
            }else if (pontos >=100 && pontos < 200)
            {
                ret = 2;
            }
            else if (pontos >= 200 && pontos < 300)
            {
                ret = 3;
            }
            else if (pontos >= 300 && pontos < 400)
            {
                ret = 4;
            }
            else if (pontos >= 400 && pontos < 500)
            {
                ret = 5;
            }
            else if (pontos >= 500 && pontos < 600)
            {
                ret = 6;
            }
            else if (pontos >= 600 && pontos < 700)
            {
                ret = 7;
            }
            else if (pontos >= 700 && pontos < 800)
            {
                ret = 8;
            }
            else if (pontos >= 800 && pontos < 900)
            {
                ret = 9;
            }
            else if (pontos >= 900 && pontos < 1000)
            {
                ret = 10;
            }
            else if (pontos >= 1000 && pontos < 1100)
            {
                ret = 11;
            }
            else if (pontos >= 1100 && pontos < 1200)
            {
                ret = 12;
            }
            else if (pontos >= 1200 && pontos < 1300)
            {
                ret = 13;
            }
            else if (pontos >= 1300 && pontos < 1400)
            {
                ret = 14;
            }
            else if (pontos >= 1400 && pontos < 1500)
            {
                ret = 15;
            }
            else if (pontos >= 1500 && pontos < 1600)
            {
                ret = 16;
            }
            else if (pontos >= 1600 && pontos < 1700)
            {
                ret = 17;
            }
            else 
            {
                ret = 18;
            }




            return ret;
        }

    }
}
