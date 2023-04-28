using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Atenas_Gym.Model
{
    public interface IUserRepository
    {
        bool AuthenticateUser(NetworkCredential credential);
        bool Add(UserModel userModel);
        void Edit(UserModel userModel);
        void Delete(int id);
        UserModel GetById(int id);
        UserModel GetByUserName(string username);
        IEnumerable<UserModel> GetByAll();
        //...
    }
}
