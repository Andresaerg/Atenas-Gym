using Atenas_Gym.Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.Repositories
{
    internal class PlanRepository : RepositoryBase, IPlanRepository
    {
        public bool AddPlan(PlanesModel planModel)
        {
            throw new NotImplementedException();
        }

        public void DeletePlan(int id)
        {
            throw new NotImplementedException();
        }

        public void EditPlan(PlanesModel planModel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<PlanesModel> GetByAll()
        {
            List<PlanesModel> result = new List<PlanesModel>();

            MySqlCommand cmd = new();
            {
                GetConnection.Open();
                cmd.Connection = GetConnection;
                cmd.CommandText = "SELECT * FROM planes";
                MySqlDataReader reader =  cmd.ExecuteReader();
                while(reader.Read()){
                    PlanesModel plan = new PlanesModel();
                    plan.ID = reader.GetInt32(0);
                    plan.Plan = reader.GetString(1);
                    plan.Precio = reader.GetString(2);
                    plan.Tiempo = reader.GetString(3);

                    result.Add(plan);
                }
                GetConnection.Close();
            }
            return result;
        }

        public PlanesModel GetPlanes(string plan)
        {
            throw new NotImplementedException();
        }
    }
}
