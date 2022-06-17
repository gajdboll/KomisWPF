using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Komis
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void MenuVersion_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Version 1.0 build 13.06.2002", "Version info");

        }
        private void MenuTworcy_Click(object sender, RoutedEventArgs e)
        {

            MessageBox.Show("Created by: \n Krzysztof Gajdosz", "Created By info");
        }
        private void MenuFAQ_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("FAQ site: \n https://docs.microsoft.com/en-us/answers/support/", "FAQ Info");

        }
        private void MenuHelp_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Help on : \n https://docs.microsoft.com/en-us/dotnet/", "Help Info");

        }
        private void MenuExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();

        }



    }

}