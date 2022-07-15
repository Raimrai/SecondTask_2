<%@ page import="kz.bitlab.db.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.db.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <%@include file="navbar.jsp"%>
        </div>
    </div>
</div>

<div class="row mt-3">
    <div class="col-10 mx-auto">
        <table class="table table-striped table-hover">
            <thead>
            <th>ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>AMOUNT</th>
            <th>DETAILS</th>
            </thead>
            <tbody>
            <%
                ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("any");
                if (items!=null){

                    for (Item it: items){
            %>
            <tr>
                <td><%=it.getId()%></td>
                <td><%=it.getName()%></td>
                <td><%=it.getPrice()%></td>
                <td><%=it.getAmount()%></td>
                <td><a href="/details?id=<%=it.getId()%>" class="btn btn-info btn-sm">DETAILS</a> </td>
            </tr>
            <%

                    }
                }
            %>
            </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>
