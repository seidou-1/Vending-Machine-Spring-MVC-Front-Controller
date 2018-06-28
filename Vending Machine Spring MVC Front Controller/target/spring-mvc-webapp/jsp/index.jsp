<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">        
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">        
    </head>
    <body>


        <!--        <div class="container">
                    <h1>Spring MVC Application from Archetype</h1>
                    <hr/>
                    <div class="navbar">
                        <ul class="nav nav-tabs">
                            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/hello/sayhi">Hello Controller</a></li>
                        </ul>    
                    </div>
                    <h2>Home Page</h2>
                </div>-->

        <div class="container">
            <div>
                <a href = "${pageContext.request.contextPath}">
                <h1 class = "text-center">Vending Machine Spring MVC</h1>
                </a>
            </div>
            <hr/>
            <div class="row">

                <div class="col-md-8">

                    <c:forEach var = "currentProduct" items ="${products}">
                        <a href="${pageContext.request.contextPath}/productSelection?productId=${currentProduct.productId}"/>
                        <div class ="col-md-4 inventory">
                            <p class = "text-left"> 
                                <c:out value = "${currentProduct.productId}"/> 
                            </p>
                            <hr>
                            <p class = "pTags"><c:out value = "${currentProduct.productName}"/> </p>
                            <p class = "pTags"><c:out value = "${currentProduct.productCost}"/> </p>
                            <p class = "pTags"><c:out value = "${currentProduct.productInventory}"/> </p> 
                        </div>

                        <!--</a>  Close href-->
                        </a>

                    </c:forEach>

                </div>




                <!--                    <div class="row">
                                        <a href="${pageContext.request.contextPath}/snickers.jsp">  Creating this href so once the div is clicked on, it will take it to a diff page
                
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                            </p>
                                        </div>
                                            
                                        </a>  Close href
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                        <div class="col-md-4">
                                            <p>
                                                1
                                            </p>
                                            <p>
                                                Snickers
                                            </p>
                                            <p>
                                                $1.85
                                            </p>
                                            <p>
                                                Quantity Left: 9
                                        </div>
                                    </div>-->


                <div class="col-md-4">
                    <h5 class="text-center">
                        Total $ In
                    </h5>
                    <p class="text-center balance">
                        ${balance}
                    </p>
                    <div class="row">
                        <div class="col-md-6">

                            <a href="${pageContext.request.contextPath}/addBread?amount=1.00">
                                <button type="button" class="btn btn-primary btn-block moneyButton">
                                    Add Dollar
                                </button> 
                            </a>

                            <a href="${pageContext.request.contextPath}/addBread?amount=0.25">
                                <button type="button" class="btn btn-primary btn-block moneyButton">
                                    Add Quarter
                                </button>
                            </a>
                        </div>
                        <div class="col-md-6">

                            <a href="${pageContext.request.contextPath}/addBread?amount=0.10">
                                <button type="button" class="btn btn-primary btn-block moneyButton">
                                    Add Dime
                                </button> 
                            </a>

                            <a href="${pageContext.request.contextPath}/addBread?amount=0.05">
                                <button type="button" class="btn btn-primary btn-block moneyButton">
                                    Add Nickel
                                </button>
                            </a>

                        </div>
                    </div>

                    <hr/>

                    <h5 class="text-center">
                        Messages
                    </h5>
                    <p class="text-center message">
                        ${productName} ${message}
                    </p>
                    <div class="row">
                        <div class="col-md-6">
                            <p class = "text-center">
                                Item:
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p class = "text-center">
                                ${productId}
                            </p>
                        </div>
                    </div> 
                    <a href = "${pageContext.request.contextPath}/makePurchase">
                        <button type="button" class="btn btn-success btn-block">
                            Make Purchase
                        </button>
                    </a>
                    <hr/>
                    <h5 class="text-center">
                        Change
                    </h5>
                    <p class="text-center">
                        ${myChange}
                    </p> 
                    <a href="${pageContext.request.contextPath}/changeReturn">
                        <button type="button" class="btn btn-success btn-block">
                            Change Return
                        </button>
                    </a>
                </div>
            </div>
        </div>
        <!--</div>-->



        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </body>
</html>