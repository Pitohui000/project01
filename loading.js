$(document).ready(function () {
  setTimeout(function () {
    $(".loading-color").fadeOut(500);
  },1000);
});

document.addEventListener('DOMContentLoaded', function () {
    var mobileMenuToggle = document.getElementById('mobile-menu');
    var menuList = document.querySelector('.menu-list');

    mobileMenuToggle.addEventListener('click', function () {
        menuList.classList.toggle('show');

    });
});

// 检查本地存储中是否有保存的按钮状态
window.onload = function () {
  const buttonValue = localStorage.getItem('selectedButton');
  if (buttonValue) {
    const button = document.querySelector(`button[value="${buttonValue}"]`);
    button.classList.add('selected');
  }
};

function changeColorAndSubmit(button) {
  // 移除所有按钮的 selected 类
  document.querySelectorAll('.category-button').forEach(btn => btn.classList.remove('selected'));

  // 改变按钮的样式或执行其他操作
  button.classList.add('selected');

  // 将按钮的值保存到本地存储
  localStorage.setItem('selectedButton', button.value);

  // 手动提交表单
  document.getElementById('filterForm').submit();
}

// 添加点击页面其他区域的事件监听器
document.addEventListener('click', function (event) {
  const isSelectButton = event.target.closest('.selectbutton'); // 检查点击区域是否在 .selectbutton 内

  if (!isSelectButton) {
    // 点击了 .selectbutton 区域外的按钮，恢复原本的颜色
    document.querySelectorAll('.category-button').forEach(btn => btn.classList.remove('selected'));
    localStorage.removeItem('selectedButton'); // 移除本地存储的选中按钮值
  }
});