﻿namespace MongoFunction
{
    using Domain;
    using Mongo.DataAccess;
    using System.Linq;
    using System.Threading.Tasks;

    public static class Helper
    {
        public static async Task<bool> WriteToMongo(Product[] products)
        {
            if (!products.Any())
            {
                return false;
            }

            // Hard-coded Connection String & Database name, as they are not the point of focus for this exercise
            var connectionString = "mongodb+srv://murugabms:kirbms2006@murugacluster-fgped.mongodb.net/AzureTest?retryWrites=true&w=majority";
            var databaseName = "IOUCommrate";

            var repository = new ProductsRepository(
                connectionString,
                databaseName);

            await repository.AddProducts(products);
            return true;
        }
    }
}
