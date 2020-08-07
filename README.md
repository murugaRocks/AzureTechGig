# Sending data to Azure Event Hubs

> Useful resources

* <https://docs.microsoft.com/en-us/azure/event-hubs/get-started-dotnet-standard-send-v2>

* <https://youtu.be/fnQG47ojccc>

---

# Steps for execute the code

1. Spin up a azure event hub instance in your azure account. All default setting. 

2. Create a MongoDB/cosmosdb instance

3. Update the event hub connection string in Mainwindow.xaml.cs

	```csharp
       private const string ConnectionString = "<event hub connection string>";
        private const string EventHubName = "<event hub name>";
	```
4. Update the connection string in the Helper.cs

    ```csharp
    // Hard-coded Connection String & Database name, as they are not the point of focus for this exercise
    var connectionString = "<Replace with your connection string>";
	var databaseName = "<Database Name>";
    ```

5. Publish the "mongofunction" as azure function. 

6. Spin up a azure stream Analytics instance in your azure account. Input is event hub and output will the Azure function. 

6. Run the Datasender.desktop as windows application

7. Check the data in your mongodb

    ```json
    {
        "Typeofprotein":"HormonalProtein",
		"Value":"9",
		"Age":{"$numberDouble":"62"},
		"result":"high risk"
    }
    ```

---
