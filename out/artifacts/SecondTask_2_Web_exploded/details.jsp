<%@ page import="kz.bitlab.db.Item" %>
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
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-12">
            <%
                Item item = (Item)request.getAttribute("item");
                if (item!=null){
            %>
            <div class="jumbotron">
                <h1 class="display-4">
                    <%=item.getName()%>
                </h1>
                <p class="lead">
                   PRICE: <%=item.getPrice()%> KZT
                </p>
                <hr class="my-4">
                <p>
                    AMOUNT: <%=item.getAmount()%> ITEMS
                </p>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
