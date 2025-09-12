using MySql.Data.MySqlClient;

namespace Adatbazis
{

    public class Data

    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Author { get; set; }

        public DateTime RelesDate { get; set; }

        public Data(int id, string title, string author, DateTime relesDate)
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

    public class Connect
    {
        List<Data> lista = new List<Data>();

        public string Nev { get; set; }

        public string FehasznaloNev { get; set; }

        public string Jelszo { get; set; }

        public Connect(string nev, string fehasznaloNev, string jelszo)
        {
            Nev = nev;
            FehasznaloNev = fehasznaloNev;
            Jelszo = jelszo;
        }


        public void kapcsolodas()
        {
            MySqlConnection kapcs = new MySqlConnection($"server = localhost; database = {Nev}; uid = {FehasznaloNev}; password = {Jelszo};");


            try
            {
                kapcs.Open();

                Console.WriteLine("Kapcsolódás sikeres!");

                // lekérdezés - SELECT
                var lekerdezes = new MySqlCommand("select Id, Title, Author, RelesDate from books", kapcs).ExecuteReader();
                while (lekerdezes.Read())
                {
                    lista.Add(new Data(lekerdezes.GetInt32(0), lekerdezes.GetString(1), lekerdezes.GetString(2), lekerdezes.GetDateTime(3)));
                }
                lekerdezes.Close();
                kapcs.Close();

                foreach (Data adat in lista)
                {
                    Console.WriteLine(adat.ToString());
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Something went wrong. Fatal error. Fuck you.");
            }

        }
    }

        

    internal class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Kérem adja meg az adatbázis nevét:");
            string nev = Console.ReadLine();

            Console.WriteLine("Kérem adja meg az adatbázishoz tartozó felhasználó nevet:");
            string felhasznaloNev = Console.ReadLine();

            Console.WriteLine("Kérem adja meg az adatbázishoz tartozó jelszó:");
            string jelszo = Console.ReadLine();

            Connect kapcsolat = new Connect(nev, felhasznaloNev, jelszo);
            kapcsolat.kapcsolodas();
        }
    }
}
