USE cd0970276
GO

-- Question 8: List all customer names with their e-mail addresses.

SELECT * FROM Customer; -- For reference

SELECT (Customer_FName + ' ' + Customer_Lname) as Customer_Name, CK_Email -- Concatenated the first name and last name for readability.
FROM Customer;