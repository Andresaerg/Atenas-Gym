using Atenas_Gym.Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Atenas_Gym.Repositories
{
    public class UserRepository : RepositoryBase, IUserRepository
    {
        public bool Add(UserModel userModel)
        {
            bool valid_data;
            MySqlCommand cmd = new MySqlCommand();
            {
                GetConnection.Open();
                cmd.Connection = GetConnection;
                cmd.CommandText = "INSERT INTO usuarios(Nombre, Cedula, Password, Estado) VALUES(@name, @username, @password, @status)";

                bool ci_exists = false;
                using (MySqlCommand command = new MySqlCommand("SELECT * FROM usuarios WHERE Cedula = @cedula", GetConnection))
                {
                    command.Parameters.Add("@cedula", MySqlDbType.String).Value = userModel.Username;
                    ci_exists = command.ExecuteScalar() == null ? false : true;
                }

                bool result = int.TryParse(userModel.Username, out _);
                if (result && !string.IsNullOrEmpty(userModel.Password) && !string.IsNullOrEmpty(userModel.Name) && ci_exists == false)
                {
                    cmd.Parameters.Add("@name", MySqlDbType.String).Value = userModel.Name;
                    cmd.Parameters.Add("@username", MySqlDbType.Int64).Value = userModel.Username;
                    cmd.Parameters.Add("@password", MySqlDbType.String).Value = userModel.Password;
                    cmd.Parameters.Add("@status", MySqlDbType.String).Value = userModel.Status;

                    valid_data = cmd.ExecuteNonQuery() > 0 ? true : false;

                    //var message = string.Format("Nombre de usuario: {0}\nContraseña: {1}\nNombre: {2}\nEstado: {3}", userModel.Username, userModel.Password, userModel.Name, userModel.Status);
                    //MessageBox.Show(message, "Datos del usuario");
                }
                else
                {
                    valid_data = false;
                }

                GetConnection.Close();
            }
            return valid_data;
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
