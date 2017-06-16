<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book app</title>
</head>
<body>
<h2> Order Book</h2>
<form action="OrderBookServlet"> 
UserId:<input type="number" name="user_id" required></br>
Select book:
<select name="bookId" rquired></br>
<option value="1">java</option>
<option value="1">c</option>
<option value="1">c++</option>
<option value="1">ADC</option>
</select>
</br>
BookId:<input type="number" name="book_id" required></br>
Status:<input type="number" name="status" required></br>
Quantity:<input type="number" name="quantity"  required></br>
OrderDate:<input type="number" name="orders_date" required></br>
<button type="submit">submit</button>
</form>
</body>
</html>