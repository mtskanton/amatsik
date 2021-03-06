<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>

        <c:url value="/index.html" var="index" />

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Работа Spring Security
                        <small>доступ только для зарегистрированных пользователей</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="${index}">Home</a>
                        </li>
                        <li class="active">Spring Security</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Content Row -->
            <div class="row">

                <div class="col-lg-12">
                    <p>Данные о пользователе из Spring Security. Текст ниже доступен только ролям супер юзеру, админу, или юзеру: </p>
                    <security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_SUPER_USER', 'ROLE_USER')">
                        <b>Вы вошли как:</b> <security:authentication property="principal.username"/> с ролью: <b><security:authentication property="principal.authorities"/> </b>
                    </security:authorize>

                </div>

            </div>
            <!-- /.row -->

            <hr>

        </div>
        <!-- /.container -->
    </jsp:body>
</page:template>
