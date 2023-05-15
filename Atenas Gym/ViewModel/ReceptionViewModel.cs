using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;

namespace Atenas_Gym.ViewModel
{
    internal class ReceptionViewModel : ViewModelBase
    {
        //Client Fields
        private string? _clientID;
        private string? _clientName;
        private string? _clientCI;
        private string? _ClientRegisterDate;
        private string? _clientStatusText;
        private string? _clientStatus;
        private string? _clientImage;
        private string? _clientPaymentDate;
        private string? _clientPaymentExpireDate;

        //Button Fields
        private string? _DetailsBtn = "Collapsed";
        private string? _CreateBtn = "Collapsed";
        private string? _UpdateBtn = "Collapsed";
        private string? _itemsVisibility1 = "Collapsed";

        //Option fields
        private string? _paymentMethods;
        private List<PlanesModel> _planes = new List<PlanesModel>();
        private int _selectedIndex = 0;
        private string? _referencia;


        private IClientRepository clientRepository;
        private IPlanRepository planRepository;

        private ClientModel clientModel;
        private PlanesModel planModel;

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
        public string? ClientRegisterDate
        {
            get => _ClientRegisterDate;
            set
            {
                _ClientRegisterDate = value;
                OnPropertyChanged(nameof(ClientRegisterDate));
            }
        }
        public string? ClientStatusText
        {
            get => _clientStatusText;
            set
            {
                _clientStatusText = value;
                OnPropertyChanged(nameof(ClientStatusText));
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
        public string? ClientPaymentDate
        {
            get => _clientPaymentDate;
            set
            {
                _clientPaymentDate = value;
                OnPropertyChanged(nameof(ClientPaymentDate));
            }
        }
        public string? ClientPaymentExpireDate
        {
            get => _clientPaymentExpireDate;
            set
            {
                _clientPaymentExpireDate = value;
                OnPropertyChanged(nameof(ClientPaymentExpireDate));
            }
        }

        public string? DetailsBtn
        {
            get => _DetailsBtn;
            set
            {
                _DetailsBtn = value;
                OnPropertyChanged(nameof(DetailsBtn));
            }
        }
        public string? CreateBtn
        {
            get => _CreateBtn;
            set
            {
                _CreateBtn = value;
                OnPropertyChanged(nameof(CreateBtn));
            }
        }
        public string? UpdateBtn
        {
            get => _UpdateBtn;
            set
            {
                _UpdateBtn = value;
                OnPropertyChanged(nameof(UpdateBtn));
            }

        }
        public string? ItemsVisibility1
        {
            get => _itemsVisibility1;
            set
            {
                _itemsVisibility1 = value;
                OnPropertyChanged(nameof(ItemsVisibility1));
            }
        }
        public string? Payment_Methods { get => _paymentMethods; set { _paymentMethods = value; OnPropertyChanged(nameof(Payment_Methods)); } }
        public List<PlanesModel> Planes 
        { 
            get => _planes;
            set
            {
                _planes = value;
                OnPropertyChanged(nameof(Planes));
            } 
        }
        public int SelectedIndex { get => _selectedIndex; set { _selectedIndex = value; OnPropertyChanged(nameof(SelectedIndex)); } }
        public string? Referencia_Pago { get => _referencia; set { _referencia = value; OnPropertyChanged(nameof(Referencia_Pago)); } }

        //-> Commands
        public ICommand SearchClient { get; }
        public ICommand CreateClient { get; }
        public ICommand UpdateClient { get; }
        public ICommand GetPlanes { get; }

        public ReceptionViewModel()
        {
            clientRepository = new ClientRepository();
            planRepository = new PlanRepository();
            SearchClient = new ViewModelCommand(ExecuteSearchClient, CanExecuteSearchClient);
            CreateClient = new ViewModelCommand(ExecuteCreateClient, CanExecuteCreateClient);
            UpdateClient = new ViewModelCommand(ExecuteUpdateClient, CanExecuteUpdateClient);
            ExecuteGetPlanes();
        }

        private void ExecuteGetPlanes()
        {
            Planes = planRepository.GetByAll().ToList();
        }

        private bool CanExecuteUpdateClient(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(ClientCI) || ClientCI.Length < 5)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        private void ExecuteUpdateClient(object obj)
        {
            var method = clientRepository.AddClientPayment(ClientCI, Planes[SelectedIndex].Tiempo, Payment_Methods, Referencia_Pago);

            if (method) { MessageBox.Show("Cliente Actualizado"); ExecuteSearchClient(ClientCI); }
        }

        private bool CanExecuteCreateClient(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(ClientCI) || ClientCI.Length < 5)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        private void ExecuteCreateClient(object obj)
        {
            clientModel = new ClientModel();
            clientModel.Name = ClientName;
            clientModel.Cedula = ClientID;
            clientModel.PaymentStatus = "En deuda";
            clientModel.RegisterDate = DateTime.Now.ToString("yyyy-MM-dd");
            clientModel.Image = ClientImage;
            clientModel.Weight = "0";
            clientModel.Height = "0";
            clientModel.Arms = "0";
            clientModel.Waist = "0";
            clientModel.Hips = "0";
            clientModel.Thighs = "0";

            var method = clientRepository.AddClient(clientModel, Planes[SelectedIndex].Tiempo, Payment_Methods, Referencia_Pago);
            if (method) { MessageBox.Show("Cliente creado"); ExecuteSearchClient(ClientCI); }
        }

        private bool CanExecuteSearchClient(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(ClientID) || ClientID.Length < 5)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        private void ExecuteSearchClient(object obj)
        {
            var user = clientRepository.AuthenticateClient(ClientID);
            ItemsVisibility1 = "Visible";

            if (user.Cedula != null)
            {
                if (user.PaymentStatus == "Solvente")
                {
                    ClientName = user.Name?.ToUpper();
                    ClientCI = user.Cedula;
                    ClientImage = user.Image;
                    ClientRegisterDate = user.RegisterDate;
                    ClientStatusText = user.PaymentStatus;
                    ClientPaymentDate = user.Payment;
                    ClientPaymentExpireDate = user.Expire;
                    ClientStatus = "GREEN";
                }
                else
                {
                    ClientName = user.Name?.ToUpper();
                    ClientCI = user.Cedula;
                    ClientImage = user.Image;
                    ClientRegisterDate = user.RegisterDate;
                    ClientStatusText = user.PaymentStatus;
                    ClientPaymentDate = user.Payment;
                    ClientPaymentExpireDate = user.Expire;
                    ClientStatus = "RED";
                }

                DetailsBtn = "Visible";
                CreateBtn = "Collapsed";
                UpdateBtn = "Visible";
            }
            else
            {
                ClientName = "NO REGISTRADO";
                ClientCI = "Sin datos";
                ClientImage = "/Images/App-Logo.png";
                ClientRegisterDate = "Sin datos";
                ClientStatusText = "Sin datos";
                ClientPaymentDate = "Sin datos";
                ClientPaymentExpireDate = "Sin datos";
                ClientStatus = "RED";

                DetailsBtn = "Collapsed";
                CreateBtn = "Visible";
                UpdateBtn = "Collapsed";
            }
        }
    }
}
