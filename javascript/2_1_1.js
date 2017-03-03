 function validatedata()
 {
var a=document.form.fname.value.length;
var b=document.form.lname.value.length;
var c=document.form.email.value.length;
var d=document.form.pwd.value.length;
var e=document.form.age.value.length;
if(a==0&&b==0&&c==0&&d==0&&e==0)
 {
alert("Enter all the details.");
   return false;
 }
else if(a==0)
 {
   alert("Enter the first name.");
   return false;
 }
else if(b==0)
 {
  alert("Enter the last name");
   return false;
 }
else if(c==0)
 {
  alert("Enter the email");
   return false;
 }
else if(d==0)
 {
  alert("Enter the password");
   return false;
 }
 else if(e==0)
 {
  alert("Enter ur age");
   return false;
 }

 else
   return true;
}