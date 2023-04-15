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
    public class RepairOrdersVM : BaseViewModel
    {
        private ObservableCollection<RepairOrders> _repairOrders;

        private RepairOrders _repairOrder;

        public RepairOrdersVM()
        {
            RepairOrders = new ObservableCollection<RepairOrders>();
            LoadData();
        }
        public ObservableCollection<RepairOrders> RepairOrders
        {
            get => _repairOrders;
            set
            {
                _repairOrders = value;
                OnPropertyChanged(nameof(RepairOrders));
            }
        }

        public RepairOrders SelectRepairOrders
        {
            get => _repairOrder;
            set
            {
                _repairOrder = value;
                OnPropertyChanged(nameof(SelectRepairOrders));
            }
        }


        public void LoadData()
        {
            if (_repairOrders.Count > 0)
            {
                _repairOrders.Clear();
            }

            var result = DbStorage.Db.RepairOrders.ToList();

            result.ForEach(a => RepairOrders.Add(a));
        }

        public void DeleteData()
        {
            if (SelectRepairOrders != null)
            {
                using (var db = new CommunicationsShowroomEntities())
                {
                    var repairOrders = db.RepairOrders.Find(SelectRepairOrders.Id);
                    if (repairOrders != null)
                    {
                        db.RepairOrders.Remove(repairOrders);
                        db.SaveChanges();
                        SelectRepairOrders = null;
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
