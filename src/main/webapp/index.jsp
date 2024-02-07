<%--
  Created by IntelliJ IDEA.
  User: Nastya
  Date: 12.09.2023
  Time: 0:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Соревнования</title>
</head>
<body>
<h1>Соревнования по прыжкам в высоту</h1>
<h1>Ввод показателей</h1>
<form method="post" action="sports">
    <h3>Спортсмен 1</h3>
    <label for="athlete1_day1">День 1:</label>
    <input type="number" step="0.01" id="athlete1_day1" name="athlete1_day1" required><br>

    <label for="athlete1_day2">День 2:</label>
    <input type="number" step="0.01"  id="athlete1_day2" name="athlete1_day2" required><br>

    <label for="athlete1_day3">День 3:</label>
    <input type="number" step="0.01"  id="athlete1_day3" name="athlete1_day3" required><br>

    <h3>Спортсмен 2</h3>
    <label for="athlete2_day1">День 1:</label>
    <input type="number" step="0.01"  id="athlete2_day1" name="athlete2_day1" required><br>

    <label for="athlete2_day2">День 2:</label>
    <input type="number" step="0.01" id="athlete2_day2" name="athlete2_day2" required><br>

    <label for="athlete2_day3">День 3:</label>
    <input type="number" step="0.01"  id="athlete2_day3" name="athlete2_day3" required><br>

    <input type="submit" value="Отправить">
</form>
</body>
</html>
