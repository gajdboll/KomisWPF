using Komis.Helpers;
using Komis.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Komis.ViewModels
{
    public class NowySamochodViewModel : WorkspaceViewModel
    {
        #region Konstruktor
        public NowySamochodViewModel()
        {
            base.DisplayName = "Samochod";
            Ilosc = 0;
            Znizka = 0;
            Kwota = 0;
            CenaBrutto = 0;
        }
        #endregion

        #region Pola i Wlasciwosci

        private int _Ilosc;
        public int Ilosc
        {
            get
            {
                return _Ilosc;
            }
            set
            {
                if (value != _Ilosc)
                {
                    _Ilosc = value;
                    OnPropertyChanged(() => Ilosc);
                }
            }
        }
        private double _Znizka;
        public double Znizka
        {
            get
            {
                return _Znizka;
            }
            set
            {
                if (value != _Znizka)
                {
                    _Znizka = value;
                    OnPropertyChanged(() => Znizka);
                }
            }
        }
        private double _Kwota;
        public double Kwota
        {
            get
            {
                return _Kwota;
            }
            set
            {
                if (value != _Kwota)
                {
                    _Kwota = value;
                    OnPropertyChanged(() => Kwota);
                }
            }
        }

        private double _CenaBrutto;
        public double CenaBrutto
        {
            get
            {
                return _CenaBrutto;
            }
            set
            {
                if (value != _CenaBrutto)
                {
                    _CenaBrutto = value;
                    OnPropertyChanged(() => CenaBrutto);
                }
            }
        }

        #endregion
        #region konstruktor
 
        #endregion
        #region Komendy

        public ICommand ObliczCommand
        {
            get
            {
                return new BaseCommand(obliczClick);
            }
        }

        #endregion //Komendy
        #region FunkcjePomocnicze
        private void obliczClick()
        {
            SamochodCeny samochod = new SamochodCeny(Ilosc, Kwota);
            CenaBrutto = samochod.finalnaKwota();

        }
        #endregion


    }
}
