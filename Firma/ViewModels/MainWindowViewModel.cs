using Komis.Helpers;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Input;



using System.Windows;
using Komis.Models;

namespace Komis.ViewModels
{
    public class MainWindowViewModel : BaseViewModel
    {

        #region Konstruktor

        public MainWindowViewModel()
        { 
        }
        #endregion

        // zamykajaca aplikacje
        private void closeClick()
        {
            Application.Current.Shutdown();
        }



        //będzie zawierała kolekcje komend, które pojawiają się w menu lewym oraz kolekcje zakładek 
        #region Komendy menu i paska narzedzi
        public ICommand ZakonczCommand
        {
            get
            {
                return new BaseCommand(closeClick);
            }

        }
        public ICommand NowySamochodCommand //ta komenda zostanie podpieta pod menu i pasek narzedzi
        {
            get
            {
                return new BaseCommand(() => createView(new NowySamochodViewModel()));//to jest komenda, która wyw. funkcję createTowar
            }
        }
        public ICommand SamochodyCommand
        {
            get
            {
                return new BaseCommand(showAllSamochody);
            }
        }
        public ICommand NowaFakturaCommand
        {
            get
            {
                return new BaseCommand(() => createView(new NowaFakturaViewModel()));
            }
        }
        public ICommand FakturyCommand
        {
            get
            {
                return new BaseCommand(showAllFaktury);
            }
        }
        public ICommand NowyKontrahentCommand
        {
            get
            {
                return new BaseCommand(() => createView(new NowyKontrahentViewModel()));
            }
        }
        public ICommand WszyscyKontrahenciCommand
        {
            get
            {
                return new BaseCommand(showAllKontrahenci);
            }
        }
        public ICommand NoweUbezpieczenieCommand
        {
            get
            {
                return new BaseCommand(() => createView(new NoweUbezpieczenieViewModel()));
            }
        }
        public ICommand WszystkieUbezpieczeniaCommand
        {
            get
            {
                return new BaseCommand(showAllUbezpieczenia);
            }
        }
        #endregion

        #region Przyciski w menu z lewej strony
        private ReadOnlyCollection<CommandViewModel> _Commands;//to jest kolekcja komend w emnu lewym
        public ReadOnlyCollection<CommandViewModel> Commands
        {
            get
            {
                if (_Commands == null)//sprawdzam czy przyciski z lewej strony menu nie zostały zainicjalizowane
                {
                    List<CommandViewModel> cmds = this.CreateCommands();//tworzę listę przyciskow za pomocą funkcji CreateCommands
                    _Commands = new ReadOnlyCollection<CommandViewModel>(cmds);//tę listę przypisuje do ReadOnlyCollection (bo readOnlyCollection można tylko tworzyć, nie można do niej dodawać)
                }
                return _Commands;
            }
        }
        private List<CommandViewModel> CreateCommands()//tu decydujemy jakie przyciski są w lewym menu
        {
            return new List<CommandViewModel>
            {
                new CommandViewModel("Samochody",new BaseCommand(showAllSamochody), "pack://application:,,,/Views/Icons/cars-white.png",
                "pack://application:,,,/Views/Icons/cars-back.png"),
                new CommandViewModel("Samochod",new BaseCommand(()=>createView(new NowySamochodViewModel())), "pack://application:,,,/Views/Icons/tesla-kolor.png",
                "pack://application:,,,/Views/Icons/tesla-back.png"),
                new CommandViewModel("Faktura",new BaseCommand(()=>createView(new NowaFakturaViewModel())),"pack://application:,,,/Views/Icons/docs-kolor.png",
                "pack://application:,,,/Views/Icons/docs-black.png"),
                new CommandViewModel("Faktury",new BaseCommand(showAllFaktury),"pack://application:,,,/Views/Icons/books-kolor.png",
                "pack://application:,,,/Views/Icons/books-black.png"),
                new CommandViewModel("Kontrahent",new BaseCommand(()=>createView(new NowyKontrahentViewModel())), "pack://application:,,,/Views/Icons/klient-kolor.png",
                "pack://application:,,,/Views/Icons/klient-back.png"),
                new CommandViewModel("Kontrahenci",new BaseCommand(showAllKontrahenci),"pack://application:,,,/Views/Icons/klienci-kolor.png",
                "pack://application:,,,/Views/Icons/klienci-black.png"),
                new CommandViewModel("Ubezpieczenie",new BaseCommand(()=>createView(new NoweUbezpieczenieViewModel())),"pack://application:,,,/Views/Icons/medal-kolor.png",
                "pack://application:,,,/Views/Icons/medal-black.png"),
                new CommandViewModel("Ubezpieczenia",new BaseCommand(showAllUbezpieczenia),"pack://application:,,,/Views/Icons/medals-kolor.png",
                "pack://application:,,,/Views/Icons/medals-black.png"),
            };
        }
        #endregion

        #region Zakładki
        private ObservableCollection<WorkspaceViewModel> _Workspaces; //to jest kolekcja zakładek
        public ObservableCollection<WorkspaceViewModel> Workspaces
        {
            get
            {
                if (_Workspaces == null)
                {
                    _Workspaces = new ObservableCollection<WorkspaceViewModel>();
                    _Workspaces.CollectionChanged += this.onWorkspacesChanged;
                }
                return _Workspaces;
            }
        }
        private void onWorkspacesChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null && e.NewItems.Count != 0)
                foreach (WorkspaceViewModel workspace in e.NewItems)
                    workspace.RequestClose += this.onWorkspaceRequestClose;

            if (e.OldItems != null && e.OldItems.Count != 0)
                foreach (WorkspaceViewModel workspace in e.OldItems)
                    workspace.RequestClose -= this.onWorkspaceRequestClose;
        }
        private void onWorkspaceRequestClose(object sender, EventArgs e)
        {
            WorkspaceViewModel workspace = sender as WorkspaceViewModel;
            //workspace.Dispos();
            this.Workspaces.Remove(workspace);
        }
        #endregion
        #region Funkcje pomocnicze
        private void createView(WorkspaceViewModel workspace)
        {
            this.Workspaces.Add(workspace);
            this.setActiveWorkspace(workspace);
        }
        private void showAllFaktury()
        {
            WszystkieFakturyViewModel workspace = this.Workspaces.FirstOrDefault(vm => vm is WszystkieFakturyViewModel) as WszystkieFakturyViewModel;
            if (workspace == null)
            {
                workspace = new WszystkieFakturyViewModel();
                this.Workspaces.Add(workspace);
            }
            this.setActiveWorkspace(workspace);
        }
        private void showAllKontrahenci()
        {
            WszyscyKontrahenciViewModel workspace = this.Workspaces.FirstOrDefault(vm => vm is WszyscyKontrahenciViewModel) as WszyscyKontrahenciViewModel;
            if (workspace == null)
            {
                workspace = new WszyscyKontrahenciViewModel();
                this.Workspaces.Add(workspace);
            }
            this.setActiveWorkspace(workspace);
        }
        private void showAllUbezpieczenia()
        {
            WszystkieUbezpieczeniaViewModel workspace = this.Workspaces.FirstOrDefault(vm => vm is WszystkieUbezpieczeniaViewModel) as WszystkieUbezpieczeniaViewModel;
            if (workspace == null)
            {
                workspace = new WszystkieUbezpieczeniaViewModel();
                this.Workspaces.Add(workspace);
            }
            this.setActiveWorkspace(workspace);
        }

        private void showAllSamochody()
        {
            //sz....
            WszystkieSamochodyViewModel workspace = this.Workspaces.FirstOrDefault(vm => vm is WszystkieSamochodyViewModel) as WszystkieSamochodyViewModel;
            //jezeli ....
            if (workspace == null)
            {
                //tworzymy nowa zakladke Wszystkie towary
                workspace = new WszystkieSamochodyViewModel();
                //i dodajemy ja do kolekcji zakladek
                this.Workspaces.Add(workspace);
            }
            //aktywujemy zakladke
            this.setActiveWorkspace(workspace);
        }
        private void setActiveWorkspace(WorkspaceViewModel workspace)
        {
            Debug.Assert(this.Workspaces.Contains(workspace));

            ICollectionView collectionView = CollectionViewSource.GetDefaultView(this.Workspaces);
            if (collectionView != null)
                collectionView.MoveCurrentTo(workspace);
        }

        #endregion
    }
}

