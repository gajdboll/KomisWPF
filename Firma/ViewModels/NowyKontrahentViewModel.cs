using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Komis.ViewModels
{
    public class NowyKontrahentViewModel:WorkspaceViewModel //bo wszystkie zakładki dziedzicza po workspaceVM
    {
        #region Konstruktor
        public NowyKontrahentViewModel()
        {
            base.DisplayName = "Kontrahent";
        }
        #endregion
    }
}
