
<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
 <head>
  <meta charset="utf-8" />
    <link rel="shortcut icon" href="img/favicon.png" type="image/png">
   <meta name="description" content="Лабораторная работа 1, Веб-программирование. Шабалов Антон P3215 ">
   <meta name="author" content="Шабалов Антон P3215">
   <link href="style/Main.css" rel="stylesheet">
   <title>Лаб 1</title>
 </head>
 <body>
 <header align="center">
    <table width="100%" cellspacing="0" cellpadding="0">
   <tr>
    <td id="headIcon"><img   src="img/favicon.png" alt="Логотип ВТ"></td>
    <td ><h2>Лабораторная работа №1 </h2><h3>Выполнил: Шабалов Антон, P3215</h3></td>
   </tr>
  </table>
 </header>

<table border="2"  id="mainContent">
    <form id="form">
<tr>
<td class="stringBlock" colspan="3">Значени Х</td>
<td id="imageTable" rowspan="7" >
<!--    <img id="exerciseImage" src="img/exercise.png" alt="Задание">-->
    <svg id="svg"  width="100%" height="100%" viewbox=" 0 0 400 400" >
      <jsp:include page="drower.jsp"/>
        <line x1="0%" y1="50%" x2="100%" y2="50%" stroke="black" />
        <line x1="50%" y1="0%" x2="50%" y2="100%" stroke="black" />
        <text x="50%" y="2%" class="mal">Y</text>
        <text x="94%" y="49%" class="mal">X</text>

        <text x="48%" y="10%" class="mal">-- R</text>
        <text x="48%" y="30%" class="mal">-- R/2</text>
        <text x="48%" y="70%" class="mal">-- -R/2</text>
        <text x="48%" y="90%" class="mal">-- -R</text>
        <text x="10%" y="51%" class="mal">|</text>
        <text x="30%" y="51%" class="mal">|</text>
        <text x="50%" y="51%" class="mal">0</text>
        <text x="70%" y="51%" class="mal">|</text>
        <text x="90%" y="51%" class="mal">|</text>
        <text x="7%" y="48%" class="mal">-R</text>
        <text x="27%" y="48%" class="mal">-R/2</text>
        <text x="67%" y="48%" class="mal">R/2</text>
        <text x="87%" y="48%" class="mal">R</text>
      <polygon fill="#4169E1" fill-opacity="0.6" points="200,200 120,200 200,115"></polygon>
        <polygon fill="#4169E1" fill-opacity="0.6" points="200,200 363,200 363,115 200,115"></polygon>
        <path d="M 200 360 C 300 325 325 325 365 200 L 200 200 Z" fill="#4169E1" fill-opacity="0.6" ></path>


    </svg>
</td>
</tr>
<tr class="checkBox">
<td for="xCheckbox-3"> <center> <label for="xCheckbox-3">-3<input type="checkbox" id="xCheckbox-3" value="-3" name="xCheckbox"></label></center></td>
<td><center><input type="checkbox" id="xCheckbox-2" value="-2" name="xCheckbox"> <label for="xCheckbox-2">-2</label></center></td>
<td><center><input type="checkbox" id="xCheckbox-1" value="-1" name="xCheckbox"> <label for="xCheckbox-1">-1</label></center></td>
</tr>
<tr class="checkBox">
<td><center><input type="checkbox" id="xCheckbox0" value="0" name="xCheckbox"> <label for="xCheckbox0">0</label></center></td>
<td><center><input type="checkbox" id="xCheckbox1" value="1"  name="xCheckbox"> <label for="xCheckbox1">1</label></center></td>
<td><center><input type="checkbox" id="xCheckbox2" value="2"  name="xCheckbox"> <label for="xCheckbox2">2</label></center></td>
</tr>
<tr class="checkBox">
<td><center><input type="checkbox" id="xCheckbox3" value="3"  name="xCheckbox"> <label for="xCheckbox3">3</label></center></td>
<td><center><input type="checkbox" id="xCheckbox4" value="4"  name="xCheckbox"> <label for="xCheckbox4">4</label></center></td>
<td><center><input type="checkbox" id="xCheckbox5" value="5" name="xCheckbox"> <label for="xCheckbox5">5</label></center></td>
</tr>
<tr>
<td class="stringBlock" colspan="3">Значение У</td>
</tr>
<tr>
    <td id="tableYText" colspan="3"> <input id="yText" type="text" placeholder="[-5....5]"></td>

</tr>
<tr>
<td class="stringBlock" colspan="3">Значение R</td>

</tr>
<tr class="radioTable">
<td><center><input type="radio" id="radio1" value="1"  name="rRadio"><label for="radio1" >1</label></center></td>
<td><center><input type="radio" id="radio2"  value="2" name="rRadio"><label for="radio2" >2</label></center></td>
<td><center><input type="radio" id="radio3" value="3"  name="rRadio"><label for="radio3" >3</label></center></td>
    <td id="statusLine"></td>
</tr>
<tr class="radioTable">
<td><center><input type="radio" id="radio4" value="4"  name="rRadio"><label for="radio4" >4</label></center></td>
<td><center><input type="radio" id="radio5" value="5"  name="rRadio"><label for="radio5" >5</label></center></td>
<td></td>
    <td rowspan="1"><button id="check">Проверить введеные данные</button></td>
</tr>
<tr>

</tr>

    </form>
</table>


<%--     <td id="nullAnswer"><center><p >Данных еще нет</p></center></td>--%>
    <jsp:include page="table.jsp"/>

 <center>
     <button id="clearAnswer">Очистить</button>
 </center>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/validator.js"></script>

 </body>
</html>
