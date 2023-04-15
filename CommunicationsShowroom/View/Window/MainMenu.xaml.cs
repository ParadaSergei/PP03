using CommunicationsShowroom.DbEntity;
using CommunicationsShowroom.View.Page;
using CommunicationsShowroom.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CommunicationsShowroom.View.Window
{
    /// <summary>
    /// Логика взаимодействия для MainMenu.xaml
    /// </summary>
    public partial class MainMenu
    {
        public InfoEmployees infoEmployees;
        public int role = 1;
        private AccountEmployees _accountEmployees;
        public static MainMenu mainMenu;
        private readonly AccountClientVM _accountClientVM;
        private readonly DevicePageVM _devicePageVM;
        private readonly RepairOrdersVM _repairOrdersVM;
        private readonly AccountEmployeesVM _accountEmployeesVM;
        private readonly SalesVM _salesVM;
        private readonly InfoClientVM _infoClientVM;
        private readonly InfoEmployeesVM _infoEmployeesVM;

        public AccountEmployees AccountEmployees
        {
            get => _accountEmployees;
            set
            {
                _accountEmployees = value;
            }
        }
        public MainMenu(AccountEmployees accountEmployees, int role)
        {

            _accountClientVM = new AccountClientVM();
            _devicePageVM = new DevicePageVM();
            _repairOrdersVM = new RepairOrdersVM();
            _accountEmployeesVM = new AccountEmployeesVM();
            _salesVM = new SalesVM();
            _infoClientVM = new InfoClientVM();
            _infoEmployeesVM = new InfoEmployeesVM();

            InitializeComponent();
            FramePageAdmin.NavigationUIVisibility = NavigationUIVisibility.Hidden;
            mainMenu = this;
            TableComboAdmin.SelectedIndex = 0;
            if (role == 1)
            {
                TableComboAdmin.ItemsSource = new Table[]
             {
                new Table { Name = "Устройства"},
                new Table { Name = "Заказы на ремонт"},
                new Table { Name = "Аккаунты клиентов"},
                new Table { Name = "Аккаунты сотрудников"},
                new Table { Name = "Продажи"},
                new Table { Name = "Инф. клиентов"},
                new Table { Name = "Инф. сотрудников"}
             };
                DeleteButton.Visibility = Visibility.Visible;
                EditButton.Visibility = Visibility.Visible;
                InsertButton.Visibility = Visibility.Visible;
                Position.Content = " Администратор";
            }
            if (role == 2)
            {
                TableComboAdmin.ItemsSource = new Table[]
              {
                new Table { Name = "Устройства"},
                new Table { Name = "Заказы на ремонт"},
                new Table { Name = "Продажи"},
                new Table { Name = "Инф. клиентов"},
                new Table { Name = "Инф. сотрудников"}
              };
                
                EditButton.Visibility = Visibility.Visible;
                InsertButton.Visibility = Visibility.Visible;
                Position.Content = "Менеджер";
            }
            if (role == 4)
            {
                
                InsertButton.Visibility = Visibility.Visible;
                Position.Content = "Сотрудник";
                TableComboAdmin.ItemsSource = new Table[]
             {
                new Table { Name = "Устройства"},
                new Table { Name = "Заказы на ремонт"},
                new Table { Name = "Продажи"}
             };
            }
        }
        private void Drag(object sender, RoutedEventArgs e)
        {
            if (Mouse.LeftButton == MouseButtonState.Pressed)
            {
                MainMenu.mainMenu.DragMove();
            }
        }
        private void CloseApp_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void MinimizeWindow_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void backButton_Click(object sender, RoutedEventArgs e)
        {
            Autorization autorization = new Autorization();
            autorization.Show();
            this.Close();
        }

        private void adminComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (TableComboAdmin.SelectedIndex)
            {
                case 0:
                    {
                        FramePageAdmin.Navigate(new DevicePage { DataContext = _devicePageVM });
                    }
                    break;
                case 1:
                    {
                        FramePageAdmin.Navigate(new RepairOrdersPage { DataContext = _repairOrdersVM });
                    }
                    break;
                case 2:
                    {
                        FramePageAdmin.Navigate(new AccountClientPage { DataContext = _accountClientVM });
                    }
                    break;
                case 3:
                    {
                        FramePageAdmin.Navigate(new AccountEmployeesPage { DataContext = _accountEmployeesVM });
                    }
                    break;
                case 4:
                    {
                        FramePageAdmin.Navigate(new SalesPage { DataContext = _salesVM });
                    }
                    break;
                case 5:
                    {
                        FramePageAdmin.Navigate(new InfoClientPage { DataContext = _infoClientVM });
                    }
                    break;
                case 6:
                    {
                        FramePageAdmin.Navigate(new InfoEmployeesPage { DataContext = _infoEmployeesVM });
                    }
                    break;
                default:
                    break;
            }
        }

        public void RefrashDataTable()
        {
            (DataContext as DevicePageVM).LoadData();
        }

        public class Table
        {
            public string Name { get; set; } = "";
            public override string ToString() => $"{Name}";
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            switch (TableComboAdmin.SelectedIndex)
            {
                case 0:
                    {
                        _devicePageVM.DeleteData();
                    }
                    break;
                case 1:
                    {
                        _repairOrdersVM.DeleteData();
                    }
                    break;
                case 2:
                    {
                        _accountClientVM.DeleteData();
                    }
                    break;
                case 3:
                    {
                        _devicePageVM.DeleteData();
                    }
                    break;
                case 4:
                    {
                        _infoClientVM.DeleteData();
                    }
                    break;
                case 5:
                    {
                        _salesVM.DeleteData();
                    }
                    break;
                case 6:
                    {   
                        _accountEmployeesVM.DeleteData();
                    }
                    break;
                default:
                    break;
            }
        }
        private void InsertButton_Click(object sender, RoutedEventArgs e)
        {
            switch (TableComboAdmin.SelectedIndex)
            {
                case 0:
                    {
                        var changeTableDevice = new ChangeTableDevice(null);
                        changeTableDevice.Show();
                    }
                    break;
                case 1:
                    {
                        var changeTableDevice = new ChangeTableRepairOrder(null);
                        changeTableDevice.Show();
                    }
                    break;
                case 2:
                    {
                        var changeTableAccountClient = new ChangeTableAccountClient(null);
                        changeTableAccountClient.Show();
                    }
                    break;
                case 3:
                    {
                        var changeTableAccountClient = new ChangeTableAccountEmployees(null);
                        changeTableAccountClient.Show();
                    }
                    break;
                case 4:
                    {
                        var сhangeTableSales = new ChangeTableSales(null);
                        сhangeTableSales.Show();
                    }
                    break;
                case 5:
                    {
                        var changeInfoClient = new ChangeInfoClient(null);
                        changeInfoClient.Show();
                    }
                    break;
                case 6:
                    {
                        var changeInfoEmployees = new ChangeInfoEmployees(null);
                        changeInfoEmployees.Show();
                    }
                    break;
                default:
                    break;
            }
        }


        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            switch (TableComboAdmin.SelectedIndex)
            {
                case 0:
                    {
                        var changeTableDevice = new ChangeTableDevice(_devicePageVM.SelectDevice);
                        changeTableDevice.Show();
                    }
                    break;
                case 1:
                    {
                        var changeTableRepairOrder = new ChangeTableRepairOrder(_repairOrdersVM.SelectRepairOrders);
                        changeTableRepairOrder.Show();
                    }
                    break;
                case 2:
                    {
                        var changeTableAccountClient = new ChangeTableAccountClient(_accountClientVM.SelectedAccountClient);
                        changeTableAccountClient.Show();
                    }
                    break;
                case 3:
                    {
                        var changeTableAccountClient = new ChangeTableAccountEmployees(_accountEmployeesVM.SelectAccountEmployees);
                        changeTableAccountClient.Show();
                    }
                    break;
                case 4:
                    {
                        var changeTableAccountClient = new ChangeTableSales(_salesVM.SelectSales);
                        changeTableAccountClient.Show();
                    }
                    break;
                case 5:
                    {
                        var changeInfoClient = new ChangeInfoClient(_infoClientVM.SelectClient);
                        changeInfoClient.Show();
                    }
                    break;
                case 6:
                    {
                        var changeInfoEmployees = new ChangeInfoEmployees((DataContext as InfoEmployeesVM).SelectInfoEmployees);
                        changeInfoEmployees.Show();
                    }
                    break;
                default:
                    break;

            }
        }

    }
}
