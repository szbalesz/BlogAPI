using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using BlogAPI.Models;

namespace BlogAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserController : ControllerBase
    {
        Connect conn = new Connect();
        [HttpGet]
        public List<User> Get()
        {
            List<User> users = new List<User>();
            conn.Connection.Open();
            string sql = "SELECT * FROM user";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            do
            {
                var result = new User
                {
                    Id = reader.GetGuid(0),
                    Title = reader.GetString(1),
                    Description = reader.GetString(2),
                    CreatedTime = reader.GetDateTime(3),
                    LastUpdated = reader.GetDateTime(4)
                };

                users.Add(result);
            } while (reader.Read());
            conn.Connection.Close();
            return users;
        }
        [HttpGet("Id")]
        public User GetId(Guid Id)
        {
            conn.Connection.Open();
            string sql = $"SELECT * FROM user WHERE Id='{Id}'";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            var result = new User
            {
                Id = reader.GetGuid(0),
                Title = reader.GetString(1),
                Description = reader.GetString(2),
                CreatedTime = reader.GetDateTime(3),
                LastUpdated = reader.GetDateTime(4)
            };
            conn.Connection.Close();
            return result;
        }
    }
}
