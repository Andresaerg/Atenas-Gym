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
        public IEnumerable<ChartsModel> GetCharts()
        {
            List<ChartsModel> charts = new List<ChartsModel>();
            int month = DateTime.Now.Month;

            MySqlCommand cmd = new MySqlCommand();
            {
                GetConnection.Open();
                cmd.Connection = GetConnection;
                cmd.CommandText = "SELECT meses.Meses, IFNULL(COUNT(clientes.ID), 0) AS Cantidad FROM meses LEFT JOIN clientes ON mes(clientes.Fecha_Ingreso,'es_ES') = meses.Meses AND YEAR(clientes.Fecha_Ingreso) = YEAR(CURDATE()) GROUP BY meses.Meses ORDER BY MAX(meses.ID) LIMIT 0, @now;";
                cmd.Parameters.Add("@now", MySqlDbType.Int32).Value = month;
                bool execute = cmd.ExecuteScalar() == null ? false : true;

                if (execute)
                {
                    MySqlDataReader read = cmd.ExecuteReader();
                    while (read.Read())
                    {
                        ChartsModel chart = new ChartsModel();
                        chart.Meses = read.GetString(0);
                        chart.Cantidad = read.GetInt32(1);

                        charts.Add(chart);
                    }
                }
                GetConnection.Close();
            }
            return charts;
        }

        public IEnumerable<PlanesModel> GetPlanes()
        {
            List<PlanesModel> charts = new List<PlanesModel>();

            MySqlCommand cmd = new MySqlCommand();
            {
                GetConnection.Open();
                cmd.Connection = GetConnection;
                cmd.CommandText = "SELECT p.Plan, COUNT(*) FROM pagos p LEFT JOIN planes pl ON p.Plan = pl.Plan AND YEAR(p.Fecha_Pago) = YEAR(CURDATE()) GROUP BY p.Plan;";
                MySqlDataReader read = cmd.ExecuteReader();
                while (read.Read())
                {
                    PlanesModel chart = new PlanesModel();
                    chart.Plan = read.GetString(0);
                    chart.Cantidad = read.GetInt32(1);

                    charts.Add(chart);
                }
                GetConnection.Close();
            }
            return charts;
        }

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
                command.CommandText = "SELECT SUM(Precio) FROM pagos FORCE INDEX (idx_pagos_fecha_pago) WHERE MONTH(Fecha_Pago) = MONTH(CURDATE()) AND YEAR(Fecha_Pago) = YEAR(CURDATE());";

                var execute = command.ExecuteScalar();

                if (execute != DBNull.Value && execute != null)
                {
                    monto = (decimal)execute;
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
                command.CommandText = "SELECT SUM(Precio) FROM pagos FORCE INDEX (idx_pagos_fecha_pago) WHERE YEAR(Fecha_Pago) = YEAR(CURDATE());";

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
