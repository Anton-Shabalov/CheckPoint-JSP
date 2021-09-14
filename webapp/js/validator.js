const YField =document.querySelector('#yText');
const statusLine=document.querySelector('#statusLine');
const button=document.querySelector('#check');
let form = document.getElementById('form');
const clearButton=document.querySelector("#clearAnswer")

form.addEventListener('submit', function(event) {
    event.preventDefault();
});

button.addEventListener("click",(event)=>{
    if(Xcheck()){
        if (Ycheck()){
           if(Rcheck()){

               let X=document.querySelector('[name="xCheckbox"]:checked').value
               let Y=YField.value
               let R=document.querySelector('[name="rRadio"]:checked').value
               let request = '?x=' + X + '&y=' + Y + '&r=' + R;
             $.ajax({
               type: "GET",
               url: "controller",
               data: {
                 "x": X,
                 "y": Y,
                 "r": R
               },
               success: function () {
                 document.location.reload();
               },
               error: function (XMLHttpRequest, textStatus, errorThrown) {
                 statusImg.hidden=false
               }
             });
               setStatus("Запрос отправлен");
           }

        }
    }

})

function setStatus(string){
    statusLine.textContent=string;
}
function Ycheck(){
    let Y=YField.value
    if(Y.toString().length==0) {
        setStatus("Вы не заполнили поле Y")
        return false
    }else if(isNaN(Y)){
        setStatus("Вы ввели не число в поле Y")
        return false
    }else if(parseFloat(Y)>5 || parseFloat(Y)<-5){
        setStatus("Введеные данные в поле Y выходит из промежутка [-5...5]")
        return false
    }else {
        setStatus("")
        return true
    }
}
function Rcheck(){
    try{
        r=document.querySelector("input[type=radio]:checked").value
        setStatus("")
        return true
    }catch (err){
        setStatus("Вы не выбралм значение R")
        return false
    }
}
function Xcheck() {
    let i=document.querySelectorAll("input[type=checkbox]:checked").length;
    if (i==0){
        setStatus("Пожалуйста,выберите значени х")
        return false;
    }else if(i>1){
        setStatus("Х может принимать только одно значение")
        return false
    }else {
        setStatus("")
        return true
    }
}

document.getElementById("svg").onmousedown = function submit(event) {
  console.log("sad")
  const svgSize = 400;
  let rowX = event.offsetX
  let rowY = event.offsetY

  if (Rcheck()) {
    let R= document.querySelector("input[type=radio]:checked").value
    X = (rowX-332) * R / 200 ;
    Y = (rowY-240) * R / 200 * -1;
    alert(rowX + " " + rowY + " " + X + " "+ Y + " " + R)
    $.ajax({
      type: "GET",
      url: "controller",
      data: {
        "x": X,
        "y": Y,
        "r": R,
      },
      success: function () {
        document.location.reload();
      },
    });
  }else{
    setStatus("Выберите R")
  }
}

clearButton.addEventListener("click",(event)=>{

  $.ajax({
    type: "DELETE",
    url: "controller",

    success: function () {
      document.location.reload();
    },
    error: function (XMLHttpRequest, textStatus, errorThrown) {
      statusImg.hidden=false
    }
  });


    setStatus("Запрос отправлен")
})
