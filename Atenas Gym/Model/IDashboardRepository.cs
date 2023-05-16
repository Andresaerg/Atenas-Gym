using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.Model
{
    public interface IDashboardRepository
    {
        decimal ShowMonthlyRemuneration();
        decimal ShowTotalRemuneration();
        int ShowClients();
        int ShowNewClients();
        int ShowTrainers();
        int ShowPlans();
    }
}
