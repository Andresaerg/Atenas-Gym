using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Windows.Input;
using System.Windows.Media;

namespace Atenas_Gym.ViewModel
{
    internal class ReceptionViewModel : ViewModelBase
    {
        //Fields
        private string? _clientID;
        private string? _clientName;
        private string? _clientCI;
        private string? _clientStatus;
        private string? _clientImage;

        private IClientRepository clientRepository;

        private ClientModel clientModel;

        //Properties
        public string? ClientID
        {
            get => _clientID;

            set
            {
                _clientID = value;
                OnPropertyChanged(nameof(ClientID));
            }
        }
        public string? ClientName
        {
            get => _clientName;
            set
            {
                _clientName = value;
                OnPropertyChanged(nameof(ClientName));
            }
        }
        public string? ClientCI 
        { 
            get => _clientCI;
            set 
            {
                _clientCI = value;
                OnPropertyChanged(nameof(ClientCI));
            }
        }
        public string? ClientStatus
        {
            get => _clientStatus;
            set
            {
                _clientStatus = value;
                OnPropertyChanged(nameof(ClientStatus));
            }
        }
        public string? ClientImage 
        { 
            get => _clientImage;
            set 
            {
                _clientImage = value;
                OnPropertyChanged(nameof(ClientImage));
            }
        }

        //-> Commands
        public ICommand SearchClient { get; }

        public ReceptionViewModel()
        {
            clientRepository = new ClientRepository();
            SearchClient = new ViewModelCommand(ExecuteSearchClient);
        }

        private void ExecuteSearchClient(object obj)
        {
            var isValidUser = clientRepository.AuthenticateClient(ClientCI);

            if (isValidUser.Cedula != null)
            {
                ClientName = isValidUser.Name.ToUpper();
                ClientImage = isValidUser.Image;
                ClientStatus = "GREEN";
            }
            else
            {
                ClientName = "NO REGISTRADO";
                ClientImage = "/Images/App-Logo.png";
                ClientStatus = "RED";
            }
        }
    }
}
