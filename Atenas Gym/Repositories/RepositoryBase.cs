using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;


namespace Atenas_Gym.Repositories
{
    public abstract class RepositoryBase
    {
        private readonly MySqlConnection _connection;
        public RepositoryBase()
        {
            _connection = new MySqlConnection("server=localhost;user=root;database=gym;port=3306;password=");
        }
        protected MySqlConnection GetConnection
        { 
            get { return _connection; } 
        }
    }
}
