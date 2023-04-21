using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using Atenas_Gym.Model;
using Atenas_Gym.Repositories;

namespace Atenas_Gym.ViewModel
{
    public class MainViewModel : ViewModelBase
    {
        //Fields
        private UserAccountModel _currentUserAccount;
        private IUserRepository _userRepository;

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

        public MainViewModel()
        {
            CurrentUserAccount = new UserAccountModel();
            _userRepository = new UserRepository();
            LoadCurrentUserData();
        }

        private void LoadCurrentUserData()
        {
            var user = _userRepository.GetByUserName(Thread.CurrentPrincipal.Identity.Name);
            if(user != null)
            {
                {
                    CurrentUserAccount.Cedula = user.Username;
                    CurrentUserAccount.DisplayName = $"Welcome {user.Name}";
                    CurrentUserAccount.Cargo = user.Status;
                };
            }
            else 
            {
                CurrentUserAccount.DisplayName = "Ivalid user, not logged in.";
                Application.Current.Shutdown();
            }
        }
    }
}