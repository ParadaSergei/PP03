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
    public class InfoEmployeesVM : BaseViewModel
    {
        private ObservableCollection<InfoEmployees> _employees;

        private InfoEmployees _employee;

        public InfoEmployeesVM()
        {
            Employees = new ObservableCollection<InfoEmployees>();
            LoadData();
        }
        public ObservableCollection<InfoEmployees> Employees
        {
            get => _employees;
            set
            {
                _employees = value;
                OnPropertyChanged(nameof(Employees));
            }
        }

        public InfoEmployees SelectInfoEmployees
        {
            get => _employee;
            set
            {
                _employee = value;
                OnPropertyChanged(nameof(InfoEmployees));
            }
        }
        public void LoadData()
        {
            if (_employees.Count > 0)
            {
                _employees.Clear();
            }

            var result = DbStorage.Db.InfoEmployees.ToList();

            result.ForEach(a => Employees.Add(a));
        }

        public void DeleteData()
        {
            if (SelectInfoEmployees != null)
            {
                using (var db = new CommunicationsShowroomEntities())
                {
                    var infoEmployees = db.InfoEmployees.Find(SelectInfoEmployees.Id);
                    if (infoEmployees != null)
                    {
                        db.InfoEmployees.Remove(infoEmployees);
                        db.SaveChanges();
                        SelectInfoEmployees = null;
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
