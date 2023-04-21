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
    public class UserRepository : RepositoryBase, IUserRepository
    {
        public void Add(UserModel userModel)
        {
            throw new NotImplementedException();
        }

        public bool AuthenticateUser(NetworkCredential credential)
        {
            bool validUser;
            //using (var connection = GetConnection);
            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT * FROM usuarios WHERE Cedula = @username AND Password = @password";

                bool result = int.TryParse(credential.UserName, out _);
                if (result && !string.IsNullOrEmpty(credential.Password))
                {
                    command.Parameters.Add("@username", MySqlDbType.Int64).Value = credential.UserName;
                    command.Parameters.Add("@password", MySqlDbType.String).Value = credential.Password;
                    validUser = command.ExecuteScalar() == null ? false : true;
                }
                else
                {
                    validUser = false;
                }

                GetConnection.Close();
            }
            return validUser;
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public void Edit(UserModel userModel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<UserModel> GetByAll()
        {
            throw new NotImplementedException();
        }

        public UserModel GetById(int id)
        {
            throw new NotImplementedException();
        }

        public UserModel GetByUserName(string username)
        {
            UserModel user = null;
            //using (var connection = GetConnection);
            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT * FROM usuarios WHERE Cedula = @username";

                bool result1 = int.TryParse(username, out _);
                if (result1)
                {
                    command.Parameters.Add("@username", MySqlDbType.Int64).Value = username;
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            user = new UserModel()
                            {
                                Id = reader[0].ToString(),
                                Name = reader[1].ToString(),
                                Username = reader[2].ToString(),
                                Password = string.Empty,
                                Status = reader[4].ToString(),
                            };
                        }
                    }
                }

                GetConnection.Close();
            }
            return user;
        }
    }
}
