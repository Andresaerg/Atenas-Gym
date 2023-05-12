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

        public bool AddClientPayment(string cedula, string opcion, string method, string reference)
        {
            bool result;

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                //command.CommandText = "UPDATE pagos p INNER JOIN clientes c ON p.Cedula = c.Cedula SET p.Fecha_Pago = IF(c.Estado = 'En deuda', CURDATE(), IF(CURDATE() = p.Fecha_Vencimiento, CURDATE(), p.Fecha_Pago)), p.Fecha_Vencimiento = IF(c.Estado = 'En deuda', DATE_ADD(CURDATE(), INTERVAL " + opcion+"), DATE_ADD(p.Fecha_Vencimiento, INTERVAL "+opcion+")), c.Estado = IF(c.Estado = 'En deuda', 'Solvente', c.Estado) WHERE p.Cedula = @cedula";
                command.CommandText = "INSERT INTO pagos (Cedula, Fecha_Pago, Fecha_Vencimiento, Tipo_Pago, Referencia) SELECT c.Cedula, IF(c.Estado = 'En deuda', CURDATE(), IF(CURDATE() = p.Fecha_Vencimiento, CURDATE(), p.Fecha_Pago)), IF(c.Estado = 'En deuda', DATE_ADD(CURDATE(), INTERVAL " + opcion+"), DATE_ADD(p.Fecha_Vencimiento, INTERVAL "+opcion+")), @method, @reference FROM clientes c LEFT JOIN pagos p ON p.Cedula = c.Cedula WHERE c.Cedula = @cedula;";
                
                command.Parameters.Add("@cedula", MySqlDbType.Int64).Value = cedula;

                result = command.ExecuteNonQuery() > 0 ? true : false;

                //MySqlCommand updateCommand = new MySqlCommand();
                //updateCommand.Connection = GetConnection;
                //updateCommand.CommandText = "UPDATE clientes SET Estado = IF(Estado = 'En deuda', 'Solvente', Estado) WHERE Cedula = @cedula;";
                //updateCommand.Parameters.Add("@cedula", MySqlDbType.Int64).Value = cedula;
                //updateCommand.ExecuteNonQuery();

                GetConnection.Close();
            }
            return result;
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
                command.CommandText = "SELECT c.*, p.Fecha_Pago, p.Fecha_Vencimiento FROM clientes c INNER JOIN pagos p ON p.Cedula = c.Cedula WHERE c.Cedula = @username;";

                bool result = int.TryParse(cedula, out _);
                if (result)
                {
                    command.Parameters.Add("@username", MySqlDbType.Int64).Value = cedula;
                    validUser = command.ExecuteScalar() == null ? false : true;

                    if (validUser)
                    {
                        MySqlDataReader reader = command.ExecuteReader();
                        reader.Read();

                        DateTime date1 = DateTime.Parse(reader.GetString(4));
                        DateTime date2 = DateTime.Parse(reader.GetString(12));
                        DateTime date3 = DateTime.Parse(reader.GetString(13));
                        string formattedDate1 = date1.ToString("dd/MM/yyyy");
                        string formattedDate2 = date2.ToString("dd/MM/yyyy");
                        string formattedDate3 = date3.ToString("dd/MM/yyyy");

                        Obj.Name = reader.GetString(1);
                        Obj.Cedula = reader.GetString(2);
                        Obj.PaymentStatus = reader.GetString(3);
                        Obj.RegisterDate = formattedDate1;
                        Obj.Image = reader.GetString(5);
                        Obj.Weight = reader.IsDBNull(6) ? "Sin datos" : reader.GetString(6);
                        Obj.Height = reader.IsDBNull(7) ? "Sin datos" : reader.GetString(7);
                        Obj.Arms = reader.IsDBNull(8) ? "Sin datos" : reader.GetString(8);
                        Obj.Waist = reader.IsDBNull(9) ? "Sin datos" : reader.GetString(9);
                        Obj.Hips = reader.IsDBNull(10) ? "Sin datos" : reader.GetString(10);
                        Obj.Thights = reader.IsDBNull(11) ? "Sin datos" : reader.GetString(11);
                        Obj.Payment = formattedDate2;
                        Obj.Expire = formattedDate3;
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



//INSERT INTO pagos (Cliente, Cedula, Fecha_Pago, Fecha_Vencimiento, Tipo_Pago, Referencia) SELECT c.Nombre, c.Cedula, IF(c.Estado = 'En deuda', CURDATE(), IF(CURDATE() = p.Fecha_Vencimiento, CURDATE(), p.Fecha_Pago)), IF(c.Estado = 'En deuda', DATE_ADD(CURDATE(), INTERVAL 1 MONTH), DATE_ADD(p.Fecha_Vencimiento, INTERVAL 1 MONTH)), "Pago móvil", "UNA PRUEBA" FROM clientes c LEFT JOIN pagos p ON p.Cedula = c.Cedula WHERE c.Cedula = 123455;
