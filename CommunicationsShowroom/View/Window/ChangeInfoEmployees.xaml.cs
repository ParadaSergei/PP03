﻿using CommunicationsShowroom.DbEntity;
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
    /// Логика взаимодействия для ChangeInfoEmployees.xaml
    /// </summary>
    public partial class ChangeInfoEmployees 
    {
        private InfoEmployees _infoEmployees;
        // private TableInfoViewModel _tableInfoViewModel;
        public ChangeInfoEmployees(InfoEmployees infoEmployees)
        {
            InitializeComponent();
            if (infoEmployees is null)
            {
                _infoEmployees = infoEmployees = new InfoEmployees();
            }
            else
            {
                _infoEmployees = infoEmployees;
            }

            this.DataContext = _infoEmployees;
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
                    db.InfoEmployees.AddOrUpdate(_infoEmployees);
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
            if (_infoEmployees != null)
            {
                if (string.IsNullOrEmpty(_infoEmployees.Name))
                {
                    error.AppendLine("Поле Имя пустое , или некорректное");
                }
                if (string.IsNullOrEmpty(_infoEmployees.LastName))
                {
                    error.AppendLine("Поле Фамилия пустое, или некорректное");
                }
                if (string.IsNullOrEmpty(_infoEmployees.Position))
                {
                    error.AppendLine("Поле Должность пустое, или некорректное");
                }
                if (string.IsNullOrEmpty(_infoEmployees.Email))
                {
                    error.AppendLine("Поле Почта пустое, или некорректное");
                }
                if (_infoEmployees.Salary <= 0)
                {
                    error.AppendLine("Поле Зарплата пустое, или некорректное");
                }
                if (_infoEmployees.GoodsSold <= 0)
                {
                    error.AppendLine("Поле Проданных товаров пустое, или некорректное");
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
        private void backButton_Click(object sender, RoutedEventArgs e)
        {
            Autorization autorization = new Autorization();
            autorization.Show();
            this.Close();
        }

    }
}
