using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Komis.ViewModels
{
    public class WszystkieUbezpieczeniaViewModel : WorkspaceViewModel //bo wszystkie zakładki dziedzicza po WorkspaceViewModel
    {
        #region Konstruktor
        public WszystkieUbezpieczeniaViewModel()
        {
            base.DisplayName = "Ubezpieczenia";//tu ustawiamy nazwę zakładki
        }
        #endregion
    }
}
