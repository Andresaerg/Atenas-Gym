using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.ViewModel
{
    public class ClientsViewModel : ViewModelBase
    {
        private int _id;
        private List<DataGridClientModel> _clients;

        private IClientRepository clientRepository;

        public int Id 
        {
            get => _id;
            set
            {
                _id = value;
                OnPropertyChanged(nameof(Id));
            }
        }
        public List<DataGridClientModel> Clients 
        { 
            get => _clients;
            set
            {
                _clients = value;
                OnPropertyChanged(nameof(Clients));
            }
        }

        public ClientsViewModel()
        {
            clientRepository = new ClientRepository();

            getAllClients();
        }

        private void getAllClients()
        {
            Clients = clientRepository.GetByAll().ToList();
        }
    }
}
