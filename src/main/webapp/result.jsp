<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Результаты</title>
</head>
<body>
<h1 style="text-align: center">Результаты</h1>

<%!  double calculateAverage(List<Double> scores) {
  double sum = 0;
  for (double score : scores) {
    sum += score;
  }
  return sum / scores.size();
}
%>
 <%! double findMax(List<Double> scores) {
  double max = Double.MIN_VALUE;
  for (double score : scores) {
    if (score > max) {
      max = score;
    }
  }
  return max;
}
%>


 <%! double findMin(List<Double> scores) {
  double min = Double.MAX_VALUE;
  for (double score : scores) {
    if (score < min) {
      min = score;
    }
  }
  return min;
}
%>
 <%! String determineWinner(List<Double> athlete1, List<Double> athlete2) {
  double athlete1Average = calculateAverage(athlete1);
  double athlete2Average = calculateAverage(athlete2);

  if (athlete1Average > athlete2Average) {
  return "Спортсмен 1 победил!";
  } else if (athlete1Average < athlete2Average) {
  return "Спортсмен 2 победил!";
  } else {
  return "Ничья!";
  }
  }
%>
<% List<Double> result1=(ArrayList<Double>)request.getAttribute("athlete1");

%>



<% List<Double> result2=(ArrayList<Double>)request.getAttribute("athlete2");%>
<style>
  table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    padding: 5px;
  }
</style>
<table>
  <thead>
  <tr>

    <th colspan="3">Спортсмен 1</th>
    <th colspan="3">СПОРТСМЕН 2</th>
  </tr>
  <tr>
    <th>Средняя длина прыжка</th>
    <th>Максимальная длина прыжка</th>
    <th>Минимальная длина прыжка</th>
    <th>Средняя длина прыжка</th>
    <th>Максимальная длина прыжка</th>
    <th>Минимальная длина прыжка</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td><%=calculateAverage(result1)%></td>
    <td><%=findMax(result1)%></td>
    <td><%=findMin(result1)%></td>



    <td><%=calculateAverage(result2)%></td>
    <td><%=findMax(result2)%></td>
    <td><%=findMin(result2)%></td>

  </tr>
  </tbody>
</table>
<h1 style="color: green; text-align: center"><%= determineWinner(result1, result2) %></h1>
</body>
</html>