using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Komis.ViewModels
{
    public class WszyscyKontrahenciViewModel: WorkspaceViewModel //bo wszystkie zakładki dziedzicza po WorkspaceViewModel
    {
        #region Konstruktor
        public WszyscyKontrahenciViewModel()
        {
            base.DisplayName = "Kontrahenci";//tu ustawiamy nazwę zakładki
        }
        #endregion
    }
}
