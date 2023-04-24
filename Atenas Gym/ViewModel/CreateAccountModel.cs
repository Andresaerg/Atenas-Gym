using Atenas_Gym.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Atenas_Gym.ViewModel
{
    public class CreateAccountModel : ViewModelBase
    {
        //Fields
        private string? _username;
        private SecureString? _password;
        private string? _errorMessage;

        private IUserRepository userRepository;

        //Properties
        public string? Username
        {
            get => _username;

            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }
        public SecureString? Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string? ErrorMessage
        {
            get => _errorMessage;
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }

        //-> Commands

        public ICommand CreateAccount { get;}
        public ICommand Login { get;}

        //Constructor
        public CreateAccountModel()
        {
            CreateAccount = new ViewModelCommand(ExecuteCreateAccount);
            Login = new ViewModelCommand(ExecuteBackToLogin);
        }

        private void ExecuteBackToLogin(object obj)
        {
            System.Windows.Forms.Application.Restart();
            Application.Current.Shutdown();
        }

        private void ExecuteCreateAccount(object obj)
        {
            throw new NotImplementedException();
        }
    }
}
