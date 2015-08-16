using AccessMultipleResultSetInEDMX.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccessMultipleResultSetInEDMX
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new SampleEntities())
            {
                var firstResult = db.GetTopics();
                var secondResult = db.GetTopics().GetNextResult<GetTopics_Topic>();

                Console.WriteLine("Writing Full Details of Topic");
                foreach (var item in firstResult)
                {
                    Console.WriteLine("Id={0}, Name={1}, Description={2}", item.Id, item.TopicName, item.Description);
                }

                Console.WriteLine("Writing Limited Details of Topic");
                foreach (var item in secondResult)
                {
                    Console.WriteLine("Id={0}, Name={1}", item.Id, item.TopicName);
                }

                Console.ReadLine();
            }
        }
    }
}
