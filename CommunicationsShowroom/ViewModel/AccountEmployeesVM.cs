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
    public class AccountEmployeesVM : BaseViewModel
    {
        private ObservableCollection<AccountEmployees> _accountEmployees;

        private AccountEmployees _accountEmployee;

        public AccountEmployeesVM()
        {
            AccountEmployees = new ObservableCollection<AccountEmployees>();
            LoadData();
        }
        public ObservableCollection<AccountEmployees> AccountEmployees
        {
            get => _accountEmployees;
            set
            {
                _accountEmployees = value;
                OnPropertyChanged(nameof(AccountEmployees));
            }
        }

        public AccountEmployees SelectAccountEmployees
        {
            get => _accountEmployee;
            set
            {
                _accountEmployee = value;
                OnPropertyChanged(nameof(SelectAccountEmployees));
            }
        }
        public void LoadData()
        {
            if (_accountEmployees.Count > 0)
            {
                _accountEmployees.Clear();
            }

            var result = DbStorage.Db.AccountEmployees.ToList();

            result.ForEach(a => AccountEmployees?.Add(a));
        }

        public void DeleteData()
        {
            if (SelectAccountEmployees != null)
            {
                using (var db = new CommunicationsShowroomEntities())
                {
                    var accountEmployees = db.AccountEmployees.Find(SelectAccountEmployees.Id);
                    if (accountEmployees != null)
                    {
                        db.AccountEmployees.Remove(accountEmployees);
                        db.SaveChanges();
                        SelectAccountEmployees = null;
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
