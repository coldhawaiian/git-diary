[SqlBulkCopy.WriteToServer Method (DataTable)](https://msdn.microsoft.com/en-us/library/ex21zs8x(v=vs.110).aspx)
============================================

```csharp
using System.Data.SqlClient;

class Program
{
    static void Main()
    {
        string connectionString = GetConnectionString();
        // Open a connection to the AdventureWorks database.
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            // Perform an initial count on the destination table.
            var commandRowCount = new SqlCommand(
                "SELECT COUNT(*) FROM dbo.BulkCopyDemoMatchingColumns;",
                connection
            );
            long countStart = System.Convert.ToInt32(commandRowCount.ExecuteScalar());
            Console.WriteLine("Starting row count = {0}", countStart);

            // Create a table with some rows. 
            DataTable newProducts = MakeTable();

            // Create the SqlBulkCopy object. 
            // Note that the column positions in the source DataTable 
            // match the column positions in the destination table so 
            // there is no need to map columns. 
            using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connection))
            {
                bulkCopy.DestinationTableName = "dbo.BulkCopyDemoMatchingColumns";

                try
                {
                    // Write from the source to the destination.
                    bulkCopy.WriteToServer(newProducts);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            // Perform a final count on the destination 
            // table to see how many rows were added.
            long countEnd = System.Convert.ToInt32(commandRowCount.ExecuteScalar());
            Console.WriteLine("Ending row count = {0}", countEnd);
            Console.WriteLine("{0} rows were added.", countEnd - countStart);
            Console.WriteLine("Press Enter to finish.");
            Console.ReadLine();
        }
    }

    // Create a new DataTable named NewProducts. 
    private static DataTable MakeTable()
    {
        var newProducts = new DataTable("NewProducts");

        // Add three column objects to the table. 
        var productID = new DataColumn();
        productID.DataType = System.Type.GetType("System.Int32");
        productID.ColumnName = "ProductID";
        productID.AutoIncrement = true;
        newProducts.Columns.Add(productID);

        var productName = new DataColumn();
        productName.DataType = System.Type.GetType("System.String");
        productName.ColumnName = "Name";
        newProducts.Columns.Add(productName);

        var productNumber = new DataColumn();
        productNumber.DataType = System.Type.GetType("System.String");
        productNumber.ColumnName = "ProductNumber";
        newProducts.Columns.Add(productNumber);

        // Create an array for DataColumn objects.
        var keys = new DataColumn[1];
        keys[0] = productID;
        newProducts.PrimaryKey = keys;

        // Add some new rows to the collection. 
        DataRow row = newProducts.NewRow();
        row["Name"] = "CC-101-WH";
        row["ProductNumber"] = "Cyclocomputer - White";
        newProducts.Rows.Add(row);

        row = newProducts.NewRow();
        row["Name"] = "CC-101-BK";
        row["ProductNumber"] = "Cyclocomputer - Black";
        newProducts.Rows.Add(row);

        row = newProducts.NewRow();
        row["Name"] = "CC-101-ST";
        row["ProductNumber"] = "Cyclocomputer - Stainless";
        newProducts.Rows.Add(row);
        
        newProducts.AcceptChanges();

        // Return the new DataTable. 
        return newProducts;
    }

    // To avoid storing the connection string in your code, 
    // you can retrieve it from a configuration file. 
    private static string GetConnectionString()    
    {
        return "Data Source=(local); " +
            " Integrated Security=true;" +
            "Initial Catalog=AdventureWorks;";
    }
}
```

[Environment.SpecialFolder Enumeration](https://msdn.microsoft.com/en-us/library/system.environment.specialfolder(v=vs.110).aspx)
======================================

```csharp
Environment.GetFolderPath(Environment.SpecialFolder.UserProfile)
// "C:\Users\<user>
```

Percent Format Strings
======================
0.123.ToString("P")  // "12.30 %"
0.123.ToString("P0") // "12 %" 
0.123.ToString("P1") // "12.3 %"
0.123.ToString("P2") // "12.30 %"
