using Atenas_Gym.Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.Repositories
{
    public class ClientRepository : RepositoryBase, IClientRepository
    {
        public bool AddClient(ClientModel clientModel)
        {
            throw new NotImplementedException();
        }

        public void AddClientPayment(ClientModel clientModel)
        {
            throw new NotImplementedException();
        }

        public ClientModel AuthenticateClient(string cedula)
        {
            bool validUser;
            //using (var connection = GetConnection);
            ClientModel Obj = new();

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT * FROM clientes WHERE Cedula = @username";

                bool result = int.TryParse(cedula, out _);
                if (result)
                {
                    command.Parameters.Add("@username", MySqlDbType.Int64).Value = cedula;
                    validUser = command.ExecuteScalar() == null ? false : true;

                    if (validUser)
                    {
                        MySqlDataReader reader = command.ExecuteReader();
                        reader.Read();
                        Obj.Name = reader.GetString(1);
                        Obj.Cedula = reader.GetString(2);
                        Obj.PaymentStatus = reader.GetString(3);
                        Obj.RegisterDate = reader.GetString(4);
                        Obj.Image = reader.GetString(5);
                    }
                }

                GetConnection.Close();
            }
            return Obj;
        }

        public void DeleteClient(int id)
        {
            throw new NotImplementedException();
        }

        public void EditClient(ClientModel clientModel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<UserModel> GetByAll()
        {
            throw new NotImplementedException();
        }

        public ClientModel GetClienById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
