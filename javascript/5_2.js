if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.open("GET","student_catalog.xml",false);
xmlhttp.send();
xmlDoc=xmlhttp.responseXML; 

x=xmlDoc.getElementsByTagName("STUDENT");
i=0;

function displaySTUDENT()
{
name=(x[i].getElementsByTagName("NAME")[0].childNodes[0].nodeValue);
city=(x[i].getElementsByTagName("CITY")[0].childNodes[0].nodeValue);
country=(x[i].getElementsByTagName("COUNTRY")[0].childNodes[0].nodeValue);
college=(x[i].getElementsByTagName("COLLEGE")[0].childNodes[0].nodeValue);
age=(x[i].getElementsByTagName("AGE")[0].childNodes[0].nodeValue);
txt="Name: " + name + "<br>City: " + city + "<br>Country:" + country + "<br> College:" + college + "<br>Age: "+ age;
document.getElementById("showSTUDENT").innerHTML=txt;
}
