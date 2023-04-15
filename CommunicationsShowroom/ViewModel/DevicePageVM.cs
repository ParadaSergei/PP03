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
    public class DevicePageVM : BaseViewModel
    {
        private ObservableCollection<Device> _devices;

        private Device _SelectDevice;

        public DevicePageVM()
        {
            Devices = new ObservableCollection<Device>();
            LoadData();
        }
        public ObservableCollection<Device> Devices
        {
            get => _devices;
            set
            {
                _devices = value;
                OnPropertyChanged(nameof(Devices));
            }
        }

        public Device SelectDevice
        {
            get => _SelectDevice;
            set
            {
                _SelectDevice = value;
                OnPropertyChanged(nameof(SelectDevice));
            }
        }


        public void LoadData()
        {
            if (_devices.Count > 0)
            {
                _devices.Clear();
            }

            var result = DbStorage.Db.Device.ToList();

            result.ForEach(a => Devices.Add(a));
        }

        public void DeleteData()
        {
            if (SelectDevice != null)
            {
                using (var db = new CommunicationsShowroomEntities())
                {
                    var device = db.Device.Find(SelectDevice.Id);
                    if (device != null)
                    {
                        db.Device.Remove(device);
                        db.SaveChanges();
                        SelectDevice = null;
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
