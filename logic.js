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


   function constructTimeoutPromise(){
     return new Promise(function(resolve,reject){
       setTimeout(resolve,2000);
     });
   }
   constructTimeoutPromise().then(function(){
     console.log("Connecting do database");
     return constructTimeoutPromise();
   }).then(function(){
     console.log("Reading from database");
     return constructTimeoutPromise();
   }).then(function(){
     console.log("Structuring data");
     return constructTimeoutPromise();
   }).then(function(){
     console.log("Init send transaction");
     return constructTimeoutPromise();
   }).then(function(){
     console.log("Sent Data!");
   }).then(function(){
     console.log("Be happy");
   });

//End
})
