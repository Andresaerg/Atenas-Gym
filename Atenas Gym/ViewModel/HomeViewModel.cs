using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using LiveCharts;
using LiveCharts.Wpf;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

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
        private List<DataGridClientModel> _clients;
        private List<ChartsModel> _charts;
        private SeriesCollection _seriesCollection;
        private AxesCollection _labels;

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

        public List<DataGridClientModel> Clients
        {
            get { return _clients; }
            set
            {
                _clients = value;
                OnPropertyChanged(nameof(Clients));
            }
        }

        public List<ChartsModel> Charts 
        {
            get => _charts; 
            set
            {
                _charts = value;
                OnPropertyChanged(nameof(Charts));
            }
        }

        public SeriesCollection SeriesCollection
        {
            get { return _seriesCollection; }
            set
            {
                _seriesCollection = value;
                OnPropertyChanged("SeriesCollection");
            }
        }

        public AxesCollection XAxisCollection
        {
            get => _labels; 
            set
            {
                _labels = value;
                OnPropertyChanged(nameof(XAxisCollection));
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
            GetLineCharts();


        }

        private void GetLineCharts()
        {
            Charts = _boardRepository.GetCharts().ToList();
            List<double> data = new List<double>();
            List<string> label = new List<string>();

            foreach (var chart in Charts)
            {
                data.Add(chart.Cantidad);
                label.Add(chart.Meses);
            }

            SeriesCollection = new SeriesCollection
            {
                new LineSeries
                {
                    Title = "",
                    PointGeometry = null,
                    Values = new ChartValues<double>(data),
                    DataLabels = true,
                    Foreground = new SolidColorBrush(Colors.White),
                    FontSize = 16,

                    //Title = "My Line Series",
                    //Values = new ChartValues<double> { 3, 5, 7, 4 },
                    //PointGeometry = DefaultGeometries.Circle,
                    //PointGeometrySize = 10,
                    //PointForeground = System.Windows.Media.Brushes.Red,
                    //StrokeThickness = 4,
                    //Fill = System.Windows.Media.Brushes.Transparent,
                    //LineSmoothness = 0.5,
                    //DataLabels = true,
                    //LabelPoint = point => $"({point.X}, {point.Y})"
                },
            };

            XAxisCollection = new AxesCollection
            {
                new Axis
                {
                    Title = "Meses",
                    Labels = new List<string>(label)
                }
            };
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
