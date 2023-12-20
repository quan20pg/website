
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <nav class="navbar navbar-light bg-light justify-content-between">
        <span style="font-size:30px;cursor:pointer; color: #fff;" onclick="openNav()"><img src="images/toggle-icon.png"></span>
        <a class="navbar-brand" href="index"><img src="images/logo.png"></a>
        <form class="form-inline">
            <div class="login_text">
                <ul>
                    <c:if test="${sessionScope.acc.isSell == 1}"> 
                        <li><a href="manager"><img style="width: 22px;" src="images/cancel.png" title="Manager Product"></a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc.isAdmin == 1}"> 
                        <li><a href="#"><img style="width: 22px;" src="images/management.png"></a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}"> 
                            <li><a href="logout"><img style="width: 21px;" src="images/logout.png" title="Log out"></a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                        <li><a href="Login.jsp"><img src="images/user-icon.png"></a></li>
                            </c:if>
                    <li><a href="#"><img src="images/trolly-icon.png"></a></li>
                </ul>
            </div>
        </form>
    </nav>
</div>
<div style="display: flex;justify-content: center;align-items: center;height: 100px;">
    <ul>
        <li>
            <form action="search" method="post">
                <div class="search-box">
                    <input value="${txtS}" name="search" type="text" placeholder="Tìm kiếm">
                    <button  type="submit" > <img src="images/search-icon.png"></button>
                </div>
            </form>
        </li>
    </ul>
</div> 