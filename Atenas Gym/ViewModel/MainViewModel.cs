﻿using System.Threading;
using System.Windows;
using System.Windows.Input;
using Atenas_Gym.Messages;
using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using FontAwesome.Sharp;
using GalaSoft.MvvmLight.Messaging;
using Org.BouncyCastle.Asn1.Ocsp;

namespace Atenas_Gym.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        //Fields
        private UserAccountModel _currentUserAccount;
        private ViewModelBase _currentChildView;
        private string _breadcrumb;
        private IconChar _icon;
        private IUserRepository userRepository;
        private bool _isVisible;

        //Properties
        public UserAccountModel CurrentUserAccount
        {
            get
            {
                return _currentUserAccount;
            }

            set
            {
                _currentUserAccount = value;
                OnPropertyChanged(nameof(CurrentUserAccount));
            }
        }

        public ViewModelBase CurrentChildView
        {
            get
            {
                return _currentChildView;
            }

            set
            {
                _currentChildView = value;
                OnPropertyChanged(nameof(CurrentChildView));
            }
        }


        public string Breadcrumb 
        { 
            get
            {
                return _breadcrumb;
            }
            set
            {
                _breadcrumb = value;
                OnPropertyChanged(nameof(Breadcrumb));
            }
        }
        public IconChar Icon 
        {
            get
            {
                return _icon;
            }
            set
            {
                _icon = value;
                OnPropertyChanged(nameof(Icon));
            }
        }
        public bool IsVisible 
        {
            get => _isVisible;
            
            
            set
            {
                _isVisible = value;
                OnPropertyChanged(nameof(IsVisible));
            }
        }

        //-> Commands
        public ICommand ShowHomeViewCommand { get; }
        public ICommand ShowClientsViewCommand { get; }
        public ICommand ShowPlanesViewCommand { get; }
        public ICommand ShowCortesViewCommand { get; }
        public ICommand ShowConfigViewCommand { get; }
        public ICommand Logout { get; set; }

        public MainViewModel()
        {
            userRepository = new UserRepository();
            CurrentUserAccount = new UserAccountModel();

            //Inicializando commands
            ShowHomeViewCommand = new ViewModelCommand(ExecuteShowHomeViewCommand);
            ShowClientsViewCommand = new ViewModelCommand(ExecuteShowClientsViewCommand);
            ShowPlanesViewCommand = new ViewModelCommand(ExecuteShowPlanesViewCommand);
            ShowCortesViewCommand = new ViewModelCommand(ExecuteShowCortesViewCommand);
            ShowConfigViewCommand = new ViewModelCommand(ExecuteShowConfigViewCommand);

            //Default View
            ExecuteShowHomeViewCommand(null);

            LoadCurrentUserData();

            //Loggin out
            Logout = new ViewModelCommand(ExecuteLogout);
        }

        private void ExecuteLogout(object obj)
        {
            IsVisible = false;
            Messenger.Default.Send(new OpenLoginWindowMessage());
            
            
            //var mainWindow = Application.Current.MainWindow;
            //mainWindow.Close();

            //System.Windows.Forms.Application.Restart();
            //Application.Current.Shutdown();
        }

        private void ExecuteShowConfigViewCommand(object obj)
        {
            CurrentChildView = new ConfigViewModel();
            Breadcrumb = "Configuración";
            Icon = IconChar.Gears;
        }

        private void ExecuteShowCortesViewCommand(object obj)
        {
            CurrentChildView = new CortesViewModel();
            Breadcrumb = "Cortes";
            Icon = IconChar.Dollar;
        }

        private void ExecuteShowPlanesViewCommand(object obj)
        {
            CurrentChildView = new PlanesViewModel();
            Breadcrumb = "Planes";
            Icon = IconChar.List;
        }

        private void ExecuteShowClientsViewCommand(object? obj)
        {
            CurrentChildView = new ClientsViewModel();
            Breadcrumb = "Clientes";
            Icon = IconChar.PeopleGroup;
        }

        private void ExecuteShowHomeViewCommand(object? obj)
        {
            CurrentChildView = new HomeViewModel();
            Breadcrumb = "Dashboard";
            Icon = IconChar.Home;
        }

        private void LoadCurrentUserData()
        {
            var user = Thread.CurrentPrincipal?.Identity?.Name != null ? userRepository.GetByUserName(Thread.CurrentPrincipal.Identity.Name) : null;
            if (user != null)
            {
                CurrentUserAccount.Cedula = user.Username;
                CurrentUserAccount.DisplayName = $"{user.Name}";
                CurrentUserAccount.Cargo = user.Status;
            }
            else
            {
                CurrentUserAccount.DisplayName = "Ivalid user, not logged in";
                //HideChildView
            }
        }
    }
}