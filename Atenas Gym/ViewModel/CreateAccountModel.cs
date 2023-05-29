using Atenas_Gym.Messages;
using Atenas_Gym.Model;
using Atenas_Gym.Repositories;
using CommunityToolkit.Mvvm.Messaging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
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
        private string? _fullname;
        private SecureString? _password;
        private string? _errorMessage;
        private bool _isViewVisible = true;

        private IUserRepository userRepository;
        private UserModel userModel;

        //Properties
        public string? UsernameAcc
        {
            get => _username;

            set
            {
                _username = value;
                OnPropertyChanged(nameof(UsernameAcc));
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
        public SecureString? Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }
        public string? ErrorMessageAcc
        {
            get => _errorMessage;
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessageAcc));
            }
        }
        public bool IsAccViewVisible
        {
            get => _isViewVisible; 
            
            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsAccViewVisible));
            }
        }

        //-> Commands

        public ICommand CreateAccount { get;}
        public ICommand BackToLogin { get;}

        //Constructor
        public CreateAccountModel()
        {
            userRepository = new UserRepository();
            CreateAccount = new ViewModelCommand(ExecuteCreateAccount, CanExecuteCreateAccount);
            BackToLogin = new ViewModelCommand(ExecuteBackToLogin);
        }

        private void ExecuteBackToLogin(object obj)
        {
            IsAccViewVisible = false;
            WeakReferenceMessenger.Default.Send(new OpenLoginWindowMessage());
        }

        private bool CanExecuteCreateAccount(object obj)
        {
            bool validData;
            if (string.IsNullOrWhiteSpace(Fullname) || Fullname.Length < 3
                || string.IsNullOrWhiteSpace(UsernameAcc) || UsernameAcc.Length < 3
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
                ErrorMessageAcc = "Nuevo guardia agregado!";
            }
        }
    }
}
