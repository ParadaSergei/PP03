using CommunicationsShowroom.DbEntity;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CommunicationsShowroom.ViewModel
{
    public class SalesVM : BaseViewModel
    {
        private ObservableCollection<Sales> _sales;

        private Sales _sale;

        public SalesVM()
        {
            Sales = new ObservableCollection<Sales>();
            LoadData();
        }
        public ObservableCollection<Sales> Sales
        {
            get => _sales;
            set
            {
                _sales = value;
                OnPropertyChanged(nameof(Sales));
            }
        }

        public Sales SelectSales
        {
            get => _sale;
            set
            {
                _sale = value;
                OnPropertyChanged(nameof(SelectSales));
            }
        }
        public void LoadData()
        {
            if (_sales.Count > 0)
            {
                _sales.Clear();
            }

            var result = DbStorage.Db.Sales.ToList();

            result.ForEach(a => Sales.Add(a));
        }

        public void DeleteData()
        {
            if (SelectSales != null)
            {
                using (var db = new CommunicationsShowroomEntities())
                {
                    var sales = db.Sales.Find(SelectSales.Id);
                    if (sales != null)
                    {
                        db.Sales.Remove(sales);
                        db.SaveChanges();
                        SelectSales = null;
                        LoadData();
                        MessageBox.Show("Объект успешно удален", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                }
            }
            else
            {
                MessageBox.Show("Выберите объект для удаления", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
