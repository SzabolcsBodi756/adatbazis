using MySql.Data.MySqlClient;

namespace Adatbazis
{

    public class Connect

    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Author { get; set; }

        public string RelesDate { get; set; }

        public Connect(int id, string title, string author, string relesDate)
        {
            Id = id;
            Title = title;
            Author = author;
            RelesDate = relesDate;
        }

        public override string ToString()
        {
            return $"Adatok: {Id}, {Title}, {Author}, {RelesDate}";
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            List<Connect> lista = new List<Connect>();

            Console.WriteLine("Kérem adja meg az adatbázis nevét:");
            string nev = Console.ReadLine();
            Console.WriteLine("Kérem adja meg az adatbázis felhasználó nevét:");
            string felhasznaloNev = Console.ReadLine();
            Console.WriteLine("Kérem adja meg az adatbázis jelszavát nevét:");
            string jelszo = Console.ReadLine();

            MySqlConnection kapcs = new MySqlConnection("server = server.fh2.hu;database = v2labgwj_12a; uid = v2labgwj_12a; password = 'HASnEeKvbDEPGgvTZubG'");

            kapcs.Open();
            // lekérdezés - SELECT
            var lekerdezes = new MySqlCommand("select * from books", kapcs).ExecuteReader();
            while (lekerdezes.Read())
            {
                lista.Add(new Connect(lekerdezes.GetInt32(0), lekerdezes.GetString(1), lekerdezes.GetString(2), lekerdezes.GetString(3)));
            }
            lekerdezes.Close();
            kapcs.Close();

            foreach (Connect connect in lista)
            {
                Console.WriteLine(connect.ToString());
                
            }
        }
    }
}
