using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using SimpleWebApp.Models;
using System.Data;
using System.Diagnostics;

namespace SimpleWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IConfiguration _configuration;


        public HomeController(ILogger<HomeController> logger, IConfiguration configuration)
        {
            _logger = logger;
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View("Privacy");
        }
        public IActionResult Database()
        {
            var categories = GetData();
            return View(categories);
        }

        private List<string> GetData()
        {
            var connString = _configuration["AZURE_SQL_CONNECTIONSTRING"];
            var categories = new List<string>();

            using (var sqlConn = new SqlConnection(connString))
            {
                using (var cmd = new SqlCommand()
                {
                    CommandText = "SELECT * from [SalesLT].[ProductCategory]",
                    CommandType = CommandType.Text,
                    Connection = sqlConn
                })
                {
                    sqlConn.Open();

                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            categories.Add((string)reader["Name"]);
                        }
                    }
                }
            }

            return categories;
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}