using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.ViewModel
{
    public class HomeViewModel : ViewModelBase
    {   //Fields
        private decimal _monto;
        private decimal _montoTotal;
        private int _clientes;
        private int _newClientes;
        private int _trainers;
        private int _plans;
        private List<ClientModel> _clients;

        private IDashboardRepository _boardRepository;
        private IClientRepository _clientRepository;

        //Properties
        public decimal Monto 
        {
            get => _monto;
            set
            {
                _monto = value;
                OnPropertyChanged(nameof(Monto));
            }
        }
        public decimal MontoTotal
        {
            get => _montoTotal;
            set
            {
                _montoTotal = value;
                OnPropertyChanged(nameof(MontoTotal));
            }
        }

        public int Clientes 
        {
            get => _clientes; 
            set 
            { 
                _clientes = value; 
                OnPropertyChanged(nameof(Clientes));
            }
        }

        public int NewClients
        {
            get => _newClientes;
            set
            {
                _newClientes = value;
                OnPropertyChanged(nameof(NewClients));
            }
        }

        public int Trainers 
        {
            get => _trainers; 
            set 
            {
                _trainers = value;
                OnPropertyChanged(nameof(Trainers));
            }
        }
        public int Plans 
        {
            get => _plans; 
            set
            {
                _plans = value;
                OnPropertyChanged(nameof(Plans));
            }
        }

        public List<ClientModel> Clients
        {
            get { return _clients; }
            set
            {
                _clients = value;
                OnPropertyChanged(nameof(Clients));
            }
        }

        public HomeViewModel()
        {
            _boardRepository = new DashboardRepository();
            _clientRepository = new ClientRepository();
            GetMonthlyRemuneration();
            GetTotalRemuneration();
            GetClients();
            GetNewClients();
            GetTrainers();
            GetPlans();
            GetLastClients();
        }

        private void GetLastClients()
        {
            Clients = _clientRepository.GetLastClients().ToList();
        }

        private void GetPlans()
        {
            var planes = _boardRepository.ShowPlans();
            Plans = planes;
        }

        private void GetTrainers()
        {
            var trainers = _boardRepository.ShowTrainers();
            Trainers = trainers;
        }

        private void GetNewClients()
        {
            var newbies = _boardRepository.ShowNewClients();
            NewClients = newbies;
        }

        private void GetTotalRemuneration()
        {
            var total = _boardRepository.ShowTotalRemuneration();
            MontoTotal = total;
        }

        private void GetClients()
        {
            var clientes = _boardRepository.ShowClients();
            Clientes = clientes;
        }

        private void GetMonthlyRemuneration()
        {            
            var monto = _boardRepository.ShowMonthlyRemuneration();
            Monto = monto;
        }
    }
}
