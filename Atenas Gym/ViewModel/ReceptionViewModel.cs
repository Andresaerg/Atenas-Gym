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
using System.Collections.ObjectModel;

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
        private string myPath = @"..\..\..\Images\clients\";
        private bool _captured;

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
        private bool _hayDispositivos;
        private FilterInfoCollection misDispositivos;
        private VideoCaptureDevice miWebCam;
        private List<string> _cams;
        private int _camIndex = 0;


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
        public string? ClientNameSend { get => _clientNameSend; set { _clientNameSend = value; OnPropertyChanged(nameof(ClientNameSend)); } }
        public string? ClientImageRoute { get => _clientImageRoute; set { _clientImageRoute = value; OnPropertyChanged(nameof(ClientImageRoute)); } }

        //public bool HayDispositivos { get => _hayDispositivos; set { _hayDispositivos = value; OnPropertyChanged(nameof(HayDispositivos)); } }
        //public FilterInfoCollection MisDispositivos { get => misDispositivos; set { misDispositivos = value; OnPropertyChanged(nameof(MisDispositivos)); } }
        public List<string> Cams { get => _cams; set { _cams = value; OnPropertyChanged(nameof(Cams)); } }
        public int CamsIndex { get => _camIndex; set { _camIndex = value; OnPropertyChanged(nameof(CamsIndex)); } }
        //public VideoCaptureDevice MiWebCam { get => miWebCam; set { miWebCam = value; OnPropertyChanged(nameof(MiWebCam)); } }

        //-> Commands
        public ICommand SearchClient { get; }
        public ICommand CreateClient { get; }
        public ICommand UpdateClient { get; }
        public ICommand OpenWebCam { get; }
        public ICommand CaptureImage { get; }

        public ReceptionViewModel()
        {
            clientRepository = new ClientRepository();
            planRepository = new PlanRepository();
            SearchClient = new ViewModelCommand(ExecuteSearchClient, CanExecuteSearchClient);
            CreateClient = new ViewModelCommand(ExecuteCreateClient, CanExecuteCreateClient);
            UpdateClient = new ViewModelCommand(ExecuteUpdateClient, CanExecuteUpdateClient);

            CargaDispositivos();
            OpenWebCam = new ViewModelCommand(ExecuteOpenWebCam);
            CaptureImage = new ViewModelCommand(ExecuteCaptureImage);

            ExecuteGetPlanes();
        }

        private void ExecuteCaptureImage(object obj)
        {
            if (miWebCam != null && miWebCam.IsRunning)
            {
                miWebCam.SignalToStop();
                miWebCam = null;
                _captured = true;
            }
        }
        private void ExecuteOpenWebCam(object obj)
        {
            CerrarWebCam();
            int i = CamsIndex;
            string NombreVideo = misDispositivos[i].MonikerString;
            miWebCam = new VideoCaptureDevice(NombreVideo);
            miWebCam.NewFrame += new NewFrameEventHandler(Capturando);
            miWebCam.Start();
            _captured = false;
        }

        private void Capturando(object sender, NewFrameEventArgs eventArgs)
        {
            if (Application.Current == null) return;
            Bitmap Imagen = (Bitmap)eventArgs.Frame.Clone();
            Application.Current.Dispatcher.Invoke(() =>
            {
                ClientImage = BitmapToImageSource(Imagen);
            });
        }

        public void CerrarWebCam()
        {
            if (miWebCam != null && miWebCam.IsRunning)
            {
                miWebCam.NewFrame -= Capturando;
                miWebCam.SignalToStop();
                miWebCam = null;
            }
        }

        private void CargaDispositivos()
        {
            List<string> aux = new List<string>();
            misDispositivos = new FilterInfoCollection(FilterCategory.VideoInputDevice);
            if (misDispositivos.Count > 0)
            {
                _hayDispositivos = true;
                for (int i = 0; i < misDispositivos.Count; i++)
                {
                    aux.Add(misDispositivos[i].Name.ToString());
                }
                Cams = aux;
            }
            else
            {
                _hayDispositivos = false;
            }
        }

        public static BitmapImage BitmapToImageSource(Bitmap bitmap)
        {
            using (System.IO.MemoryStream memory = new System.IO.MemoryStream())
            {
                bitmap.Save(memory, System.Drawing.Imaging.ImageFormat.Bmp);
                memory.Position = 0;
                BitmapImage bitmapimage = new BitmapImage();
                bitmapimage.BeginInit();
                bitmapimage.StreamSource = memory;
                bitmapimage.CacheOption = BitmapCacheOption.OnLoad;
                bitmapimage.EndInit();

                return bitmapimage;
            }
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
            if (string.IsNullOrWhiteSpace(ClientCI) || ClientCI.Length < 5 || string.IsNullOrWhiteSpace(ClientNameSend) || ClientNameSend.Length < 3 ||
               string.IsNullOrWhiteSpace(Referencia_Pago) || Referencia_Pago.Length < 5)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        async private void ExecuteCreateClient(object obj)
        {
            DateTime now = DateTime.Now;
            Random rand = new Random();
            string date = now.ToString("ddMMyyyy");
            int num = rand.Next(0, 15000);

            string toDb = ClientNameSend + "_" + date + "-" + num + ".jpg";
            string ruta = myPath + toDb;

            //Save document COMMENT


            using (FileStream stream = new FileStream(ruta, FileMode.Create))
            {
                PngBitmapEncoder encoder = new PngBitmapEncoder();
                encoder.Frames.Add(BitmapFrame.Create((BitmapSource)ClientImage));
                encoder.Save(stream);


                //Ruta.Text = @"\Images\clients\"+toDb; COMMENT


                //var testeo = (ReceptionViewModel)DataContext;
                //testeo.ClientImageRoute = @"\Images\clients\" + toDb;
                //CapturarImg.Visibility = Visibility.Collapsed;
            }

            clientModel = new ClientModel();
            clientModel.Name = ClientNameSend;
            clientModel.Cedula = ClientID;
            clientModel.PaymentStatus = "En deuda";
            clientModel.RegisterDate = DateTime.Now.ToString("yyyy-MM-dd");
            if(_captured == true)
            {
                clientModel.Image = @"\Images\clients\" + toDb;
            }
            else
            {
                clientModel.Image = @"\Images\App-Logo.png";
            }
            clientModel.Weight = "0";
            clientModel.Height = "0";
            clientModel.Arms = "0";
            clientModel.Waist = "0";
            clientModel.Hips = "0";
            clientModel.Thighs = "0";

            bool method = await clientRepository.AddClient(clientModel);
            if (method)
            {
                clientRepository.AddClientPayment(ClientID, Planes[SelectedIndex].Tiempo, Payment_Methods, Referencia_Pago);
                MessageBox.Show("Cliente creado");
                ExecuteSearchClient(ClientID);
            }
            else { MessageBox.Show("cédula ya registrada"); }
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
            CerrarWebCam();
            var user = clientRepository.AuthenticateClient(ClientID);
            ItemsVisibility1 = "Visible";

            string relativePath = Path.GetRelativePath(currentDirectory, imagesDirectory);
            string imagePath = System.IO.Path.Combine(Environment.CurrentDirectory, @"..\..\..\Images\App-Logo.png");

            if (user.Cedula != null)
            {
                string userPath = System.IO.Path.Combine(Environment.CurrentDirectory, @"..\..\.."+user.Image);
                BitmapImage bitmap = new BitmapImage(new Uri(userPath));

                if (user.PaymentStatus == "Solvente")
                {
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
                //bitmap.UriSource = new Uri(@"D:\Website\Documents\Atenas-Gym\Atenas Gym\Images\clients\TestingImage.jpg", UriKind.Absolute);
                BitmapImage bitmap = new BitmapImage(new Uri(imagePath));

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
