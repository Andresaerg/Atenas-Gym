using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.Model
{
    public interface IPlanRepository
    {
        PlanesModel GetPlanes(string plan);
        bool AddPlan(PlanesModel planModel);
        void EditPlan(PlanesModel planModel);
        void DeletePlan(int id);
        IEnumerable<PlanesModel> GetByAll();
        //...
    }
}
