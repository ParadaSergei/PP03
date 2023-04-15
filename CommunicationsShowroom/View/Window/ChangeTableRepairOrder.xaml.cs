using CommunicationsShowroom.DbEntity;
using CommunicationsShowroom.View.Window;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
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
using System.Windows.Shapes;

namespace CommunicationsShowroom.View
{
    /// <summary>
    /// Логика взаимодействия для ChangeTableRepairOrder.xaml
    /// </summary>
    public partial class ChangeTableRepairOrder
    {
        private RepairOrders _repairOrders;
        // private TableInfoViewModel _tableInfoViewModel;
        public ChangeTableRepairOrder(RepairOrders repairOrders)
        {
            InitializeComponent();
            if (repairOrders is null)
            {
                _repairOrders = repairOrders = new RepairOrders();
            }
            else
            {
                _repairOrders = repairOrders;
            }

            this.DataContext = _repairOrders;
        }
        public void btnSaveAccount_Click(object sender, RoutedEventArgs e)
        {
            using (var db = new CommunicationsShowroomEntities())
            {
                try
                {
                    var validateEntity = ValidateEntity();
                    if (validateEntity.Length > 0)
                    {
                        MessageBox.Show(validateEntity.ToString(), "Информация", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    db.RepairOrders.AddOrUpdate(_repairOrders);
                    db.SaveChanges();

                    MessageBox.Show("Данные успешно внесены", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);

                    (Owner as MainMenu)?.RefrashDataTable();
                    Owner?.Focus();
                    this.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Информация", MessageBoxButton.OK, MessageBoxImage.Error);

                }
            }
        }
        private StringBuilder ValidateEntity()
        {
            var error = new StringBuilder();
            if (_repairOrders != null)
            {
                if (_repairOrders.Id_Client < 0)
                {
                    error.AppendLine("Поле Id Клиент некорректное");
                }
                if (_repairOrders.Id_Device < 0)
                {
                    error.AppendLine("Поле Id Устройство некорректное");
                }
                if (_repairOrders.Id_Status < 0)
                {
                    error.AppendLine("Поле Статус некорректное");
                    
                }
                if (_repairOrders.Price < 0)
                {
                    error.AppendLine("Поле Стоимость некорректное");
                }


            }
            return error;
        }
        private void CloseApp_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void MinimizeWindow_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
    }
}
