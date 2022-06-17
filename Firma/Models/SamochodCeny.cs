using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Komis.Models
{
    public class SamochodCeny
    {
        #region Pola  

        private double kwota;
        private int ilosc;
        private double znizka;
        private double vat;

        #endregion
        #region Konstruktor
        public SamochodCeny(int ilosc, double kwota)
        {
 
            this.ilosc = ilosc;
            this.kwota = kwota;
            this.znizka = 0.05;
            this.vat = 0.23;
        }
        #endregion
        #region Funkcje



        #endregion //Konstruktor
        #region Funckje
        public double finalnaKwota()
        {
            return ilosc * kwota - (kwota*znizka) + (kwota*vat);
        }
    
        #endregion



    }



}

