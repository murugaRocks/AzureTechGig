namespace MongoFunction
{
    using Domain;
    using Microsoft.AspNetCore.Http;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.Azure.WebJobs;
    using Microsoft.Azure.WebJobs.Extensions.Http;
    using Newtonsoft.Json;
    using System.IO;
    using System.Linq;
    using System.Threading.Tasks;

    public static class ProductFunction
    {
        [FunctionName("AddProducts")]
        public static async Task<ActionResult<string>> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "post", Route = null)] HttpRequest request)
        {
            var requestBody = await new StreamReader(request.Body).ReadToEndAsync();
            var products = JsonConvert.DeserializeObject<Product[]>(requestBody).ToArray();
            foreach (Product p in products)
            {
                if (p.Age > 60) { p.result = "high risk"; }
                else if (p.Age < 30 && p.Value > 70) { p.result = "high risk"; }
                else if (p.Age < 30 && p.Value < 70) { p.result = "low risk"; }
                else { p.result = "Medium risk"; }
            }
            var result = await Helper.WriteToMongo(products);
            var message = result ? "Products added successfully" : "No products were added";
            return new OkObjectResult(message);
        }
    }
}
