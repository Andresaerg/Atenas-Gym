using Atenas_Gym.Messages;
using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using CommunityToolkit.Mvvm.Messaging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Security;
using System.Security.Principal;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Atenas_Gym.ViewModel
{
    public class LoginViewModel : ViewModelBase
    {
        //Fields
        private string? _username;
        private string? _fullname;
        private SecureString? _password;
        private string? _errorMessage;
        private string? _errorMessageAcc;
        private bool _isViewVisible = true;
        private ViewModelBase _currentChildView;

        private IUserRepository userRepository;

        private UserModel userModel;

        //Properties
        public string? Username { 
            get => _username;

            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }
        public string? UsernameAcc
        {
            get => _username;

            set
            {
                _username = value;
                OnPropertyChanged(nameof(UsernameAcc));
            }
        }
        public SecureString? Password { 
            get => _password;
            set {
                _password = value; 
                OnPropertyChanged(nameof(Password));
            }
        }
        public string? ErrorMessage { get => _errorMessage;
            set {
                _errorMessage = value; 
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }
        public string? ErrorMessageAcc
        {
            get => _errorMessageAcc;
            set
            {
                _errorMessageAcc = value;
                OnPropertyChanged(nameof(ErrorMessageAcc));
            }
        }
        public bool IsViewVisible { get => _isViewVisible; set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
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

        public string? Fullname
        {
            get => _fullname;

            set
            {
                _fullname = value;
                OnPropertyChanged(nameof(Fullname));
            }
        }

        //-> Commands

        public ICommand LoginCommand { get; }
        public ICommand RecoverPasswordCommand { get; }
        public ICommand? ShowPasswordCommand{ get; }

        public ICommand CreateAccount { get; }

        //Constructor

        public LoginViewModel()
        {
            userRepository = new UserRepository();
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelCommand(ExecuteRecoverPassword);

            CreateAccount = new ViewModelCommand(ExecuteCreateAccount, CanExecuteCreateAccount);
        }

        private void ExecuteLoginCommand(object obj)
        {
            var isValidUser = userRepository.AuthenticateUser(new NetworkCredential(Username, Password));

            if (isValidUser)
            {
                Thread.CurrentPrincipal = new GenericPrincipal(new GenericIdentity(Username), null);
                IsViewVisible = false;

                WeakReferenceMessenger.Default.Send(new OpenMainWindowMessage());
            }
            else
            {
                ErrorMessage = "Cédula o contraseña inválidas";
            }
        }

        private bool CanExecuteLoginCommand(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(Username) || Username.Length < 3
                || Password == null || Password.Length < 3)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        private void ExecuteRecoverPassword(object obj)
        {
            throw new NotImplementedException();
        }

        private bool CanExecuteCreateAccount(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(Fullname) || Fullname.Length < 3
                || string.IsNullOrWhiteSpace(Username) || Username.Length < 3
                || Password == null || Password.Length < 3)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        private void ExecuteCreateAccount(object obj)
        {
            userModel = new UserModel();
            userModel.Username = UsernameAcc;
            userModel.Password = Marshal.PtrToStringBSTR(Marshal.SecureStringToBSTR(_password));
            userModel.Name = Fullname;
            userModel.Status = "Guardia";

            var datos = userRepository.Add(userModel);

            if (datos == false)
            {
                ErrorMessageAcc = "La cédula ingresada ya existe";
            }
            else
            {
                ErrorMessageAcc = "";
            }
        }
    }
}
