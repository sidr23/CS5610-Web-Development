$(function () 
{
$('nav li ul').hide().removeClass('sublevel');
$('nav li').hover(function () {
$('ul', this).stop().slideToggle(200);
});
});