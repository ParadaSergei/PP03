using CommunicationsShowroom.DbEntity;
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

namespace CommunicationsShowroom.View.Window
{
    /// <summary>
    /// Логика взаимодействия для ChangeTableAccountEmployees.xaml
    /// </summary>
    public partial class ChangeTableAccountEmployees 
    {
        private AccountEmployees _accountEmployees;
        // private TableInfoViewModel _tableInfoViewModel;
        public ChangeTableAccountEmployees(AccountEmployees accountEmployees)
        {
            InitializeComponent();
            if (accountEmployees is null)
            {
                _accountEmployees = accountEmployees = new AccountEmployees();
            }
            else
            {
                _accountEmployees = accountEmployees;
            }

            this.DataContext = _accountEmployees;
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
                    db.AccountEmployees.AddOrUpdate(_accountEmployees);
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
            if (_accountEmployees != null)
            {
                if (string.IsNullOrEmpty(_accountEmployees.LoginEmployees))
                {
                    error.AppendLine("Поле Имя пустое , или некорректное");
                }
                if (string.IsNullOrEmpty(_accountEmployees.PasswordEmployees))
                {
                    error.AppendLine("Поле Фамилия пустое, или некорректное");
                }
                if (_accountEmployees.Id_Employees < 0)
                {
                    error.AppendLine("Поле Id некорректное");
                }
                if (_accountEmployees.Id_Status < 0)
                {
                    error.AppendLine("Поле Статус некорректное");
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
