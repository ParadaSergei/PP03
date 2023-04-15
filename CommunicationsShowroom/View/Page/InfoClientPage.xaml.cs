﻿using CommunicationsShowroom.DbEntity;
using CommunicationsShowroom.View.Window;
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
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CommunicationsShowroom.View.Page
{
    /// <summary>
    /// Логика взаимодействия для InfoClientPage.xaml
    /// </summary>
    public partial class InfoClientPage 
    {
        public InfoClientPage()
        {
            InitializeComponent();
            this.DataContext = new InfoClientVM();
           
        }
    }
}