using Atenas_Gym.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.ViewModel
{
    internal class ReceptionViewModel : ViewModelBase
    {
        //Fields
        private string? _clientID;
        private string? _fullname;
        private string? _Message;

        private IUserRepository userRepository;

        private ClientModel clientModel;
    }
}
