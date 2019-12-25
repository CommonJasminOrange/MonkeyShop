<%--
  Created by IntelliJ IDEA.
  User: ns
  Date: 2019/12/14
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>��̨����</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.jsp" class="navbar-brand">��̨����</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="/manage/admin_index.jsp">��ҳ</a></li>
                <li><a href="/indexselect" target="_blank">��վ��ҳ</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">����Ա:${name.USER_NAME}</a></li>
                <li><a href="#">�޸�����</a></li>
                <li><a href="/manage/adminlogout">�˳�</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>�˵�</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>���ò���</a>
                    <ul class="sub-menu">
                        <li><a href="/manage/admin_douserselect"><i class="icon-font">&#xe008;</i>�û�����</a></li>
                        <li><a href="/manage/admin_cateselect"><i class="icon-font">&#xe005;</i>�������</a></li>
                        <li><a href="/manage/admin_productselect"><i class="icon-font">&#xe004;</i>��Ʒ����</a></li>
                        <li><a href="admin_order.jsp"><i class="icon-font">&#xe012;</i>��������</a></li>
                        <li><a href="admin_message.jsp"><i class="icon-font">&#xe052;</i>���Թ���</a></li>
                        <li><a href="admin_news.jsp"><i class="icon-font">&#xe033;</i>���Ź���</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>ϵͳ����</a>
                    <ul class="sub-menu">
                        <li><a href="system.jsp"><i class="icon-font">&#xe017;</i>ϵͳ����</a></li>
                        <li><a href="system.jsp"><i class="icon-font">&#xe037;</i>������</a></li>
                        <li><a href="system.jsp"><i class="icon-font">&#xe046;</i>���ݱ���</a></li>
                        <li><a href="system.jsp"><i class="icon-font">&#xe045;</i>���ݻ�ԭ</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <!--/sidebar-->
<div class="main-wrap">

    <div class="crumb-wrap">
        <div class="crumb-list"><i class="icon-font">��</i><a href="/manage/admin_index.jsp">��ҳ</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/manage/admin_productselect">��Ʒ����</a><span class="crumb-step">&gt;</span><span>������Ʒ</span></div>
    </div>
    <div class="result-wrap">
        <div class="result-content">
            <form action="/manage/admin_doproductadd" method="post"  enctype="multipart/form-data" id="myform" name="myform">
                <table class="insert-tab" width="100%">
                    <tbody>
                    <tr>
                        <th><i class="require-red">*</i>��Ʒ���ƣ�</th>
                        <td>
                            <input class="common-text required" id="title" name="productName" size="50" value="" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>��Ʒ���ࣺ</th>
                        <td>
                            <select class="common-text required"  name="parentId">

                                <c:forEach var="f" items="${flist }">
                                    <option value="${f.CATE_ID }" disabled="disabled"> |-${f.CATE_NAME } </option>
                                    <c:forEach var="c" items="${clist }">
                                        <c:if test="${c.CATE_PARENT_ID == f.CATE_ID}">
                                            <option value="${f.CATE_ID }-${c.CATE_ID }"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|-${c.CATE_NAME } </option>
                                        </c:if>
                                    </c:forEach>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <th><i class="require-red">*</i>��ƷͼƬ��</th>
                        <td>
                            <input class="common-text required" id="title" name="photo" size="50" value="" type="file">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>��Ʒ�۸�</th>
                        <td>
                            <input class="common-text required" id="title" name="productPrice" size="50" value="" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>��Ʒ���ܣ�</th>
                        <td>
                            <input class="common-text required" id="title" name="productDesc" size="50" value="" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>��Ʒ��棺</th>
                        <td>
                            <input class="common-text required" id="title" name="productStock" size="50" value="" type="text">
                        </td>
                    </tr>



                    <tr>
                        <th></th>
                        <td>
                            <input class="btn btn-primary btn6 mr10" value="�ύ" type="submit">
                            <input class="btn btn6" onClick="history.go(-1)" value="����" type="button">
                        </td>
                    </tr>
                    </tbody></table>
            </form>
        </div>
    </div>

</div>
<!--/main-->
</div>
</body>
</html>