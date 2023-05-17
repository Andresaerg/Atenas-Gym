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
        bool AddClient(ClientModel clientModel, string opcion, string method, string reference);
        void EditClient(ClientModel clientModel);
        void DeleteClient(int id);
        bool AddClientPayment(string cedula, string opcion, string method, string reference);
        ClientModel GetClienById(int id);
        IEnumerable<ClientModel> GetByAll();

        IEnumerable<DataGridClientModel> GetLastClients();
        //...
    }
}
