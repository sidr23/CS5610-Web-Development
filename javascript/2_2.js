function alertfn() {
    alert("This is an Alert Message !");
}

function datefn() {
    document.getElementById('date-demo').innerHTML = Date();
}

function product() {
        var a = document.getElementById("a").value;
        var b = document.getElementById("b").value;
        var c = a * b;
        document.getElementById('demo').innerHTML = c;
      }

function greet()
{
var today=new Date();
var hours=today.getHours();
var greeting;

if (hours<12 && hours>0)
{
greeting='Good Morning';
}

if (hours<18 && hours>12)
{
greeting='Good Afternoon';
}

if (hours>18)
{
greeting='Good Evening';
}
alert(greeting);
}

function simple()
{
var p=parseInt(document.form.principle.value);
var r=parseInt(document.form.rate.value);
var t=parseInt(document.form.time.value);
var s=(p*r*t)/100;
var x=p+s;
document.form.sinterest.value=s;
document.form.famount.value=x;
}
function compound()
 {
var p=parseFloat(document.form.principle.value);
var r=parseFloat(document.form.rate.value)/100;
var t=parseFloat(document.form.time.value);
var c=p*Math.pow((1.0+r),t);
var f=p+c;
document.form.cinterest.value=c;
document.form.cfamount.value=f;
}