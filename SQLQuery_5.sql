/**
Challenge 1 – Get the first 10 customers

    Task: Fetch all columns for the first 10 customers.
    Hint: Use TOP keyword in SQL Server.
Think about:

    How would you explain this query to an interviewer?
    Would adding an index help? On which column?
**/


SELECT TOP 10 * 
FROM [dbo].[Customer]

        /*
        Explanation (Interview-Ready)

        "This query retrieves the first 10 rows from the Customer table. 
        In SQL Server, TOP 10 returns the first 10 rows according to the table’s storage order or clustered index; 
        it does not select random rows. I’m selecting all columns with *, so the query performs a simple table scan. 
        Because there is no filtering or joining, indexes would not improve performance in this case.
        If we wanted specific rows filtered by a column, like Country, adding a non-clustered index on that column could 
        significantly speed up the query."
        */

/**
Challenge 2 – Customers from USA

Problem:
    You need to fetch only the first name, last name, and country of customers who live in the USA.
    Think about how you would write the query, how you would explain it in an interview, and any indexing or optimization considerations.

**/

SELECT [FirstName] ,[LastName] ,[Country]
From dbo.Customer 
WHERE Country = 'USA'

        /*
        Explination : This query retrieves the first name, last name, and country of all customers who live in the USA.
        I am using the WHERE clause to filter rows where the Country column equals 'USA'. 
        By selecting only the necessary columns instead of SELECT *, 
        I reduce the amount of data returned and improve performance. 
        Since the query filters on the Country column, adding a non-clustered index on this column can help
        SQL Server quickly locate matching rows. Without an index, 
        SQL Server performs a full table scan to find all customers in the USA. Additionally, 
        in a production environment, I would check the execution plan to confirm that the index is being 
        used efficiently.
        */

/**
Challenge 3 – Invoices Greater Than $10

Problem:
    You need to fetch all invoices where the Total is greater than 10.

Think about:
    Which columns you want to select.
    How to explain the query in an interview.
    Indexing or optimization considerations for the Total column.
**/

SELECT [InvoiceId] ,[CustomerId] ,[InvoiceDate] , [BillingAddress],[BillingCity],[BillingState],[BillingCountry]
        ,[BillingPostalCode],[Total]
FROM [dbo].[Invoice]
WHERE [Total] > 10

        /*
            Explination : Here I am selecting all the columns from Invoice table, here insted of * I am selection
            columns but as selection all the columns * and this will be same no optimization issue.
            in the WHERe clause i am selection Total > 10 which will resturn al the columns that has total >10 only 
            So here if we have non-cluste index on total column it will improve the preformance of the query.
        */
