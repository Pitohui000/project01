$(document).ready(function () {
  setTimeout(function () {
    $(".loading-color").fadeOut(500);
  },3000);
});

document.addEventListener('DOMContentLoaded', function () {
    var mobileMenuToggle = document.getElementById('mobile-menu');
    var menuList = document.querySelector('.menu-list');

    mobileMenuToggle.addEventListener('click', function () {
        menuList.classList.toggle('show');
    });
});