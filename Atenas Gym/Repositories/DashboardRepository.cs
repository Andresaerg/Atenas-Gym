using Atenas_Gym.Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.Repositories
{
    public class DashboardRepository : RepositoryBase, IDashboardRepository
    {
        public int ShowClients()
        {
            int clientes;

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT COUNT(*) FROM clientes;";

                var execute = command.ExecuteScalar() == null ? false : true;

                if (execute)
                {
                    MySqlDataReader reader = command.ExecuteReader();
                    reader.Read();

                    clientes = reader.GetInt32(0);
                }
                else
                {
                    clientes = 0;
                }
                GetConnection.Close();
            }
            return clientes;
        }

        public decimal ShowMonthlyRemuneration()
        {
            decimal monto;

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT SUM(Cantidad) FROM pagos FORCE INDEX (idx_pagos_fecha_pago) WHERE MONTH(Fecha_Pago) = MONTH(CURDATE()) AND YEAR(Fecha_Pago) = YEAR(CURDATE());";

                var execute = command.ExecuteScalar() == null ? false : true;

                if (execute)
                {
                    MySqlDataReader reader = command.ExecuteReader();
                    reader.Read();

                    monto = reader.GetDecimal(0);
                }
                else
                {
                    monto = 0;
                }
                GetConnection.Close();
            }
            return monto;
        }

        public int ShowNewClients()
        {
            int clientes;

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT COUNT(*) FROM clientes WHERE MONTH(Fecha_Ingreso) = MONTH(CURDATE()) AND YEAR(Fecha_Ingreso) = YEAR(CURDATE());";

                var execute = command.ExecuteScalar() == null ? false : true;

                if (execute)
                {
                    MySqlDataReader reader = command.ExecuteReader();
                    reader.Read();

                    clientes = reader.GetInt32(0);
                }
                else
                {
                    clientes = 0;
                }
                GetConnection.Close();
            }
            return clientes;
        }

        public int ShowPlans()
        {
            int planes;

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT COUNT(*) FROM planes;";

                var execute = command.ExecuteScalar() == null ? false : true;

                if (execute)
                {
                    MySqlDataReader reader = command.ExecuteReader();
                    reader.Read();

                    planes = reader.GetInt32(0);
                }
                else
                {
                    planes = 0;
                }
                GetConnection.Close();
            }
            return planes;
        }

        public decimal ShowTotalRemuneration()
        {
            decimal monto;

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT SUM(Cantidad) FROM pagos FORCE INDEX (idx_pagos_fecha_pago) WHERE YEAR(Fecha_Pago) = YEAR(CURDATE());";

                var execute = command.ExecuteScalar() == null ? false : true;

                if (execute)
                {
                    MySqlDataReader reader = command.ExecuteReader();
                    reader.Read();

                    monto = reader.GetDecimal(0);
                }
                else
                {
                    monto = 0;
                }
                GetConnection.Close();
            }
            return monto;
        }

        public int ShowTrainers()
        {
            int trainers;

            MySqlCommand command = new MySqlCommand();
            {
                GetConnection.Open();
                command.Connection = GetConnection;
                command.CommandText = "SELECT COUNT(*) FROM trainers;";

                var execute = command.ExecuteScalar() == null ? false : true;

                if (execute)
                {
                    MySqlDataReader reader = command.ExecuteReader();
                    reader.Read();

                    trainers = reader.GetInt32(0);
                }
                else
                {
                    trainers = 0;
                }
                GetConnection.Close();
            }
            return trainers;
        }
    }
}
