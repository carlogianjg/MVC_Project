using Microsoft.SqlServer.Server;
using MVCDemo.Controllers;
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
using MVCDemo.Utils;
using System.Data;
using MVCDemo.Views.Pages;

namespace MVCDemo
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        PersonController person = new PersonController();
        List<PersonController> personList = new List<PersonController>();
        ContactsController contactsObj = new ContactsController();


        DataTable dt;
        public MainWindow()
        {
            InitializeComponent();
            //dt = contactsObj.GetContacts("");
        }

        private void ListViewMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
         
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
    
        }

        private void lvi_MouseUp(object sender, MouseButtonEventArgs e)
        {
            try
            {
                if (sender == lviCRUD)
                {
                    MainFrame.Navigate(new ContactPage());
                    txtTitleBlock.Text = $"CREATE - UPDATE - VIEW CONTACT";
                }

                else if (sender == lviBULK)
                {
                    MainFrame.Navigate(new BulkInsertPage());
                    txtTitleBlock.Text = $"BULK INSERT";
                }
                    

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
