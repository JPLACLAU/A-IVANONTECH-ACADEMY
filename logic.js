// writing excercise code here random comment in script
/* random comment in paragraph */
$(document).ready(fuction(){

var fruits = ["Apple", "Orange", "Banana", "Pineapple"];

function redrawList(){
  var list = $("#fruitList");

  list.html("");

  $.each(fruits,function(index,value){
      $("<li/>").text(value).appendTo(list);
  });

}

redrawList();

$("#addFruitButton").click(function(){
  var fruitText= $("#fruitTextInput").val();
  fruits.push(fruitText);
  redrawList();
  alert(fruitText);
});

})
