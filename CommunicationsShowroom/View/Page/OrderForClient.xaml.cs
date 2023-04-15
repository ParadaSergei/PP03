using CommunicationsShowroom.Model;
using CommunicationsShowroom.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
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

namespace CommunicationsShowroom.View.Page
{
    /// <summary>
    /// Логика взаимодействия для OrderForClient.xaml
    /// </summary>
    public partial class OrderForClient
    {
        private PageViewModel _viewModel;

        public OrderForClient(string name)
        {
            DataContext = _viewModel = new PageViewModel(name);

            InitializeComponent();

            var info = new DirectoryInfo(@"../../../CommunicationsShowroom/Image/");

            ObservableCollection<Date> userList = new ObservableCollection<Date>();

            foreach (var item in info.GetFiles())
            {


                Date user = null;

                if (item.Name == "zFlip4.jpg")
                {
                    user = new Date()
                    {
                        Name = "Samsung Z Flip 4",
                        Image = new BitmapImage(new Uri(item.FullName))
                    };
                }

                if (item.Name == "iphonex.png")
                {
                    user = new Date()
                    {
                        Name = "Iphone X",
                        Image = new BitmapImage(new Uri(item.FullName))
                    };
                }
                if (item.Name == "iphone12.jpg")
                {
                    user = new Date()
                    {
                        Name = "Iphone 12",
                        Image = new BitmapImage(new Uri(item.FullName))
                    };
                }
                if (item.Name == "galaxyzflip45G.jpg")
                {
                    user = new Date()
                    {
                        Name = "Samsung galaxy Z Flip 4 5G",
                        Image = new BitmapImage(new Uri(item.FullName))
                    };
                }

                if (user != null)
                {
                    userList.Add(user);
                }
            }

            ners.ItemsSource = userList;
        }
    }
}
