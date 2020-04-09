namespace Domain
{
    using MongoDB.Bson.Serialization.Attributes;

    public class Product
    {
        [BsonId]
        [BsonRepresentation(MongoDB.Bson.BsonType.ObjectId)]
        public string Id { get; set; }

        public string USZipCode { get; set; }

        public string Utility_Name { get; set; }

        public double CommRate { get; set; }
    }
}
