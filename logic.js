// writing excercise code here random comment in script
/* random comment in paragraph */
$(document).ready(function(){
//Start


   var fruits = ["Apple", "Orange", "Banana", "Pineapple"];

   function redrawList(){
       var list = $("#fruitList");

       list.html("");

       $.each(fruits,function(index,value){
         $("<li/>").text(value).appendTo(list);
       });

    };

    $("#addFruitButton").click(function(){
      var fruitText= $("#fruitTextInput").val();
      fruits.push(fruitText);
      redrawList();
      alert(fruitText);
    });

   redrawList();

   var promise = new Promise(function(resolve, reject){
     setTimeout(resolve,2000);
   });

   promise.then(function(){
     console.log("Resolve CALLLED!!");

     return new Promise(function(resolve,reject){
       setTimeout(resolve,2000);
     });
   })

   .then(function(){
     console.log("Reading from database");
   });



//End
})
