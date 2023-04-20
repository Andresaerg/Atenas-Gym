using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Atenas_Gym.ViewModel
{
    public class LoginViewModel : ViewModelBase
    {
        //Fields
        private string? _username;
        private SecureString? _password;
        private string? _errorMessage;
        private bool _isViewVisible = true;

        //Properties
        public string? Username { 
            get => _username;

            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
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
        public bool IsViewVisible { get => _isViewVisible; set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }

        //-> Commands

        public ICommand LoginCommand { get; }
        public ICommand RecoverPasswordCommand { get; }
        public ICommand? CreateAccountCommand { get; }
        public ICommand? ShowPasswordCommand{ get; }

        //Constructor

        public LoginViewModel()
        {
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPasswordCommand = new ViewModelCommand(ExecuteRecoverPassword);
        }


        private void ExecuteLoginCommand(object obj)
        {
            
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
    }
}
