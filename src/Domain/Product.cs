namespace Domain
{
    using MongoDB.Bson.Serialization.Attributes;

    public class Product
    {
        [BsonId]
        [BsonRepresentation(MongoDB.Bson.BsonType.ObjectId)]
        public string Id { get; set; }

        public string Typeofprotein { get; set; }

        public double Value { get; set; }

        public double Age { get; set; }

        public string result { get; set; }
    }
}
