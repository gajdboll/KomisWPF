using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Komis.ViewModels
{
    public class WszystkieSamochodyViewModel: WorkspaceViewModel //bo wszystkie zakładki dziedzicza po WorkspaceViewModel
    {
        #region Konstruktor
        public WszystkieSamochodyViewModel()
        {
            base.DisplayName = "Samochody";//tu ustawiamy nazwę zakładki
        }
        #endregion
    }
}
