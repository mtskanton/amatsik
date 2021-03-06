<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Создать объявление</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="page-header"><h1>Создать объявление</h1></div>

    <form action="" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
        <div class="form-group row">
            <div class="col-xs-4">
                <label for="brand">Марка</label>
                <select id="brand" class="form-control" name="brand" required>
                    <c:forEach items="${brands}" var="brand">
                        <option value="${brand.id}">${brand.name}</option>
                    </c:forEach>
                </select >
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-4">
                <label for="model">Модель</label>
                <input id="model" class="form-control" name="model" type="text" required/>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-4">
                <label for="year">Год выпуска</label>
                <input id="year" class="form-control" name="year" type="number" value="2018" min="1900" max="2018"  required/>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-4">
                <label for="carcase">Кузов</label>
                <select id="carcase" class="form-control" name="carcase" required>
                    <c:forEach items="${carcases}" var="carcase">
                        <option value="${carcase.id}">${carcase.type}</option>
                    </c:forEach>
                </select >
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-4">
                <label for="price">Цена, в рублях</label>
                <input id="price" class="form-control" name="price" type="number" step="1000" required/>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-4">
                <label for="description">Описание</label>
                <textarea id="description" class="form-control" name="description"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-4">
                <label for="picture">Изображение (только jpeg)</label>
                <input id="picture" class="form-control" name="picture" type="file" accept="image/jpeg"/>
            </div>
        </div>

        <input name="user" type="hidden" value="${sessionScope.userId}"/>

        <div class="form-group row">
            <div class="col-xs-4">
                <input class="btn btn-default" type="submit" value="Добавить"/>
            </div>
        </div>
    </form>
</div>
</body>
</html>
