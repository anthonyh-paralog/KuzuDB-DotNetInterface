

namespace KuzuDBTest
{
	internal class Program
	{
		static void Main(string[] args)
		{
			var db = kuzunet.kuzu_database_init("test", new kuzu_system_config { buffer_pool_size=0 } );
			var conn = kuzunet.kuzu_connection_init(db);

			var result = kuzunet.kuzu_connection_query(conn, "CREATE NODE TABLE User(name STRING, age INT64, PRIMARY KEY (name))");


			var t = kuzunet.kuzu_query_result_to_string(result);



			Console.WriteLine("Hello, World!");
		}
	}
}
