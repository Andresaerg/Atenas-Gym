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
using AForge.Video.DirectShow;
using AForge.Video;
using System.Drawing;
using System.Windows.Media.Imaging;
using System.IO;

namespace Atenas_Gym.ViewModel
{
    internal class ReceptionViewModel : ViewModelBase
    {
        private string currentDirectory = Environment.CurrentDirectory;
        private string imagesDirectory = "D:\\Website\\Documents\\Atenas-Gym\\Atenas Gym\\Images";

        //Client Fields
        private string? _clientID;
        private string? _clientName;
        private string? _clientCI;
        private string? _ClientRegisterDate;
        private string? _clientStatusText;
        private string? _clientStatus;
        private ImageSource _clientImage;
        private string? _clientImageRoute;
        private string? _clientPaymentDate;
        private string? _clientPaymentExpireDate;

        private BitmapImage bitmap = new BitmapImage();

        private string? _clientNameSend;

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

        //Camera Fields
        //private bool _hayDispositivos;
        //private FilterInfoCollection misDispositivos;
        //private VideoCaptureDevice miWebCam;
        //private List<string> _comboTest = new List<string>();
        //private Image _currentFrame;


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
        public ImageSource ClientImage
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
        public string? ClientNameSend { get => _clientNameSend; set => _clientNameSend = value; }
        public string? ClientImageRoute { get => _clientImageRoute; set { _clientImageRoute = value; OnPropertyChanged(nameof(ClientImageRoute)); } }
        //public bool HayDispositivos { get => _hayDispositivos; set { _hayDispositivos = value; OnPropertyChanged(nameof(HayDispositivos)); } }
        //public FilterInfoCollection MisDispositivos { get => misDispositivos; set { misDispositivos = value; OnPropertyChanged(nameof(MisDispositivos)); } }
        //public VideoCaptureDevice MiWebCam { get => miWebCam; set { miWebCam = value; OnPropertyChanged(nameof(MiWebCam)); } }
        //public List<string> ComboTest { get => _comboTest; set { _comboTest = value; OnPropertyChanged(nameof(ComboTest)); } }
        //public Image CurrentFrame { get => _currentFrame; set { _currentFrame = value; OnPropertyChanged(nameof(CurrentFrame)); } }

        //-> Commands
        public ICommand SearchClient { get; }
        public ICommand CreateClient { get; }
        public ICommand UpdateClient { get; }
        public ICommand OpenWebCam { get; set; }

        public ReceptionViewModel()
        {
            clientRepository = new ClientRepository();
            planRepository = new PlanRepository();
            SearchClient = new ViewModelCommand(ExecuteSearchClient, CanExecuteSearchClient);
            CreateClient = new ViewModelCommand(ExecuteCreateClient, CanExecuteCreateClient);
            UpdateClient = new ViewModelCommand(ExecuteUpdateClient, CanExecuteUpdateClient);
            //OpenWebCam = new ViewModelCommand(ExecuteOpenWebCam);
            ExecuteGetPlanes();
            //CargaDispositivos();
        }

        //private void ExecuteOpenWebCam(object obj)
        //{
        //    CerrarWebCam();
        //    int i = 0;
        //    string NombreVideo = MisDispositivos[i].MonikerString;
        //    MiWebCam = new VideoCaptureDevice(NombreVideo);
        //    MiWebCam.NewFrame += new NewFrameEventHandler(Capturando);
        //    MiWebCam.Start();
        //}

        //private void Capturando(object sender, NewFrameEventArgs eventArgs)
        //{
        //    Bitmap Imagen = (Bitmap)eventArgs.Frame.Clone();
        //    CurrentFrame = Imagen;
        //}

        //private void CerrarWebCam()
        //{
        //    if(MiWebCam != null && MiWebCam.IsRunning)
        //    {
        //        MiWebCam.SignalToStop();
        //        MiWebCam = null;
        //    }
        //}

        //private void CargaDispositivos()
        //{
        //    MisDispositivos = new FilterInfoCollection(FilterCategory.VideoInputDevice);
        //    List<string> testing = new List<string>();
        //    if (MisDispositivos.Count > 0)
        //    {
        //        HayDispositivos = true;
        //        for(int i = 0; i < MisDispositivos.Count; i++)
        //        {
        //            //testing[0] = MisDispositivos[0].ToString();
        //            testing.Add(MisDispositivos[i].Name.ToString());
        //        }
        //        ComboTest = testing;
        //    }
        //    else
        //    {
        //        HayDispositivos = false;
        //    }
        //}

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
            clientModel.Name = ClientNameSend;
            clientModel.Cedula = ClientID;
            clientModel.PaymentStatus = "En deuda";
            clientModel.RegisterDate = DateTime.Now.ToString("yyyy-MM-dd");
            clientModel.Image = ClientImageRoute;
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

            string relativePath = Path.GetRelativePath(currentDirectory, imagesDirectory);
            string imagePath = System.IO.Path.Combine(Environment.CurrentDirectory, @"..\..\..\Images\clients\TestingImage.jpg");
            string userPath = System.IO.Path.Combine(Environment.CurrentDirectory, @"..\..\.."+user.Image);

            if (user.Cedula != null)
            {
                if (user.PaymentStatus == "Solvente")
                {
                    BitmapImage bitmap = new BitmapImage(new Uri(userPath));

                    ClientName = user.Name?.ToUpper();
                    ClientCI = user.Cedula;
                    ClientImage = bitmap;
                    ClientRegisterDate = user.RegisterDate;
                    ClientStatusText = user.PaymentStatus;
                    ClientPaymentDate = user.Payment;
                    ClientPaymentExpireDate = user.Expire;
                    ClientStatus = "GREEN";
                }
                else
                {
                    bitmap.BeginInit();
                    bitmap.UriSource = new Uri(relativePath + "\\clients\\1679441910917.jpg");
                    bitmap.EndInit();

                    ClientName = user.Name?.ToUpper();
                    ClientCI = user.Cedula;
                    ClientImage = bitmap;
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
                bitmap.BeginInit();
                //bitmap.UriSource = new Uri(@"D:\Website\Documents\Atenas-Gym\Atenas Gym\Images\clients\TestingImage.jpg", UriKind.Absolute);
                bitmap.UriSource = new Uri(imagePath);
                bitmap.EndInit();

                ClientName = "NO REGISTRADO";
                ClientCI = "Sin datos";
                ClientImage = bitmap;
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
