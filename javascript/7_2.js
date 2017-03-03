function CourseDetails()
{
   var data_file = "7_2_1.js";
   var http_request = new XMLHttpRequest();
   try
   {
      http_request = new XMLHttpRequest();
   }
   catch (e)
      {
      try{
         http_request = new ActiveXObject("Msxml2.XMLHTTP");
      }catch (e) {
         try{
            http_request = new ActiveXObject("Microsoft.XMLHTTP");
         }catch (e){
            alert("This file cannot be loaded on the browser. Please switch the browser");
            return false;
         }
      }
   }
   http_request.onreadystatechange  = function(){
      if (http_request.readyState == 4  )
      {
        var jsonObj = JSON.parse(http_request.responseText);
        document.getElementById("Name").innerHTML =  jsonObj.name;
        document.getElementById("Course").innerHTML = jsonObj.course;
      }
   }
   http_request.open("GET", data_file, true);
   http_request.send();
}