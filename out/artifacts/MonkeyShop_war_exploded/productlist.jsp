<%--
  Created by IntelliJ IDEA.
  User: ns
  Date: 2019/12/14
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>${title }</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body><!------------------------------head------------------------------>

<%@ include file="header.jsp" %>

<div class="banner"><a href="#"><img src="img/banner2.png"/></a></div>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix"><a href="indexselect">首页</a><span>/</span><a
            href="flowerDer.html">xx</a><span>/</span><a href="selectproductlist" class="on">${title }</a></div>
</div><!-------------------current---------------------->
<div class="current">
    <div class="wrapper clearfix"><h3 class="fl">${title }</h3>
        <div class="fr choice"><p class="default">排序方式</p>
            <ul class="select">
                <li>新品上市</li>
                <li>销量从高到低</li>
                <li>销量从低到高</li>
                <li>价格从高到低</li>
                <li>价格从低到高</li>
            </ul>
        </div>
    </div>
</div><!----------------proList------------------------->
<ul class="proList wrapper clearfix">

    <c:forEach var="p" items="${list}">
        <li><a href="selectproductview?id=${p.PRODUCT_ID}">
            <dl>
                <dt><img src="images/product/${p.PRODUCT_FILENAME}"></dt>
                <dd>【NS】${p.PRODUCT_NAME}</dd>
                <dd>￥${p.PRODUCT_PRICE}.00</dd>
            </dl>
        </a></li>
    </c:forEach>

</ul>


    <a class="more" href="proDetail.html">查看更多细节</a></div><!--返回顶部-->
<div class="gotop"><a href="cart.jsp">
    <dl class="goCart">
        <dt><img src="img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
        <span>1</span></dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="mygxin.jsp">
    <dl>
        <dt><img src="img/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none;">
    <dl>
        <dt><img src="img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div>
<div class="msk"></div><!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot1.png"/></a><span class="fl">7天无理由退货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot2.png"/></a><span class="fl">15天免费换货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot3.png"/></a><span class="fl">满599包邮</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="img/foot4.png"/></a><span class="fl">手机特色服务</span>
            </div>
        </div>
    </div>
    <p class="dibu">MonkeyShop&copy;1000-2019公司版权所有 京ICP备010101-01备0101010101号<br/>
        违法和不良信息举报电话：123-456-789，本网站所列图片，除特殊说明，所有图片均为网上搬运,blabala
    </p>
</div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>