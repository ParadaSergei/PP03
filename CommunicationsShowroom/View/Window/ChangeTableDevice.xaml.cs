using CommunicationsShowroom.DbEntity;
using CommunicationsShowroom.View.Window;
using CommunicationsShowroom.ViewModel;
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
    /// Логика взаимодействия для ChangeTableDevice.xaml
    /// </summary>
    public partial class ChangeTableDevice
    {
       private Device _device;
       // private TableInfoViewModel _tableInfoViewModel;
       public ChangeTableDevice(Device device)
       {
            InitializeComponent();
            if (device is null)
                {
                    _device = device = new Device();
                }
                else
                {
                    _device = device;
                }

                this.DataContext = _device;
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
                    db.Device.AddOrUpdate(_device);
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
                if (_device != null)
                {
                if (string.IsNullOrEmpty(_device.Brand))
                {
                    error.AppendLine("Поле Бренд пустое , или некорректное");
                }
                if (string.IsNullOrEmpty(_device.DeviceType))
                {
                    error.AppendLine("Поле Тип устройства пустое, или некорректное");
                }
                if (_device.Price < 0)
                {
                    error.AppendLine("Поле Стоимость некорректное");
                }
                if (_device.AmountInStock < 0)
                {
                    error.AppendLine("Поле Количество на складе некорректное");
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
