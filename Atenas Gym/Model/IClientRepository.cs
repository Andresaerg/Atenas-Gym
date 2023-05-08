using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.Model
{
    public interface IClientRepository
    {
        ClientModel AuthenticateClient(string cedula);
        bool AddClient(ClientModel clientModel);
        void EditClient(ClientModel clientModel);
        void DeleteClient(int id);
        void AddClientPayment(ClientModel clientModel);
        ClientModel GetClienById(int id);
        IEnumerable<UserModel> GetByAll();
        //...
    }
}
