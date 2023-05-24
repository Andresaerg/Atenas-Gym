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
        Task<bool> AddClient(ClientModel clientModel);
        void EditClient(ClientModel clientModel);
        void DeleteClient(int id);
        bool AddClientPayment(string cedula, string opcion, string method, string reference);
        ClientModel GetClienById(int id);
        IEnumerable<DataGridClientModel> GetByAll();

        IEnumerable<DataGridClientModel> GetLastClients();
        //...
    }
}
