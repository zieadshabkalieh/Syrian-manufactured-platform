var nav = document.querySelector('.hero-nav-links');
function showmenu() {
  nav.style.left = '0';
}
function hidemenu() {
  nav.style.left = '-800px';
}
function closeMenu() {
  nav.style.left = '-1000px';
}

// var overlay = document.querySelector('.overlay');
// var searchBox = document.querySelector('.search-box-expanded');
// var searchButton = document.querySelector('button[type="submit"]');

// searchButton.addEventListener('click', function (e) {
//   e.stopPropagation();
//   overlay.style.display = 'block';
//   searchBox.style.display = 'block';
// });

// overlay.addEventListener('click', function () {
//   overlay.style.display = 'none';
//   searchBox.style.display = 'none';
// });

// const searchInput = document.getElementById('search-input');
// const searchButton = document.getElementById('search-button');

// searchButton.addEventListener('click', function() {
//     searchInput.focus();
// });

const searchInput = document.getElementById('search-input');
const searchButton = document.getElementById('search-button');

searchButton.addEventListener('click', function() {
    searchInput.focus();
    searchInput.classList.toggle('expand');
    if (searchInput.classList.contains('expand')) {
        searchInput.style.width = '150px'; // Expanded width
    } else {
        searchInput.style.width = '0'; // Collapsed width
    }
});

document.addEventListener("DOMContentLoaded", function () {
  let elements = document.querySelectorAll(".title-travle");
  let elements1 = document.querySelectorAll(".card-travel");
  let elements2 = document.querySelectorAll(".card-more-options");
  let elements3 = document.querySelectorAll(".itemss");
  let elements4 = document.querySelectorAll(".offer-card");


  function fadeInElements() {
    elements.forEach(elements => {
      if (isElementInViewport(elements)) {
        elements.classList.add("show");
      }
    });
    elements1.forEach(element1 => {
      if (isElementInViewport(element1)) {
        element1.classList.add("show");
      }
    });
    elements2.forEach(elements2 => {
      if (isElementInViewport(elements2)) {
        elements2.classList.add("show");
      }
    });
    elements3.forEach(elements3 => {
      if (isElementInViewport(elements3)) {
        elements3.classList.add("show");
      }
    });
    elements4.forEach(elements4 => {
      if (isElementInViewport(elements4)) {
        elements4.classList.add("show");
      }
    });
  }

  function isElementInViewport(el) {
    let rect = el.getBoundingClientRect();
    return (
      rect.top >= 0 &&
      rect.bottom <= (window.innerHeight || document.documentElement.clientHeight)
    );
  }

  window.addEventListener("scroll", fadeInElements);
});


// var mySwiper = new Swiper('.swiper-container', {
//   loop: true,
//   autoplay: {
//     delay: 5000,
//   },
//   preventInteractionOnTransition: true
// });



const images = document.querySelectorAll('.swiper-slide img');
let currentImg = 0;

function showImage(index) {
    images.forEach((img, idx) => {
        if (idx === index) {
            img.style.display = 'block';
        } else {
            img.style.display = 'none';
        }
    });
}

function nextImage() {
    currentImg = (currentImg + 1) % images.length;
    showImage(currentImg);
}

showImage(currentImg);
setInterval(nextImage, 3000);
// user profile 

document.addEventListener("DOMContentLoaded", function () {
  var userIcon = document.getElementById("user-icon");
  var popup = document.getElementById("popup");

  userIcon.addEventListener("click", function () {
    if (popup.style.display === "none") {
      popup.style.display = "block";
    } else {
      popup.style.display = "none";
    }
  });

  document.addEventListener("click", function (event) {
    if (!userIcon.contains(event.target) && event.target !== popup) {
      popup.style.display = "none";
    }
  });
});


function validate_password() {

  var pass = document.getElementById('pass').value;
  var confirm_pass = document.getElementById('confirm_pass').value;
  if (pass != confirm_pass) {
    document.getElementById('wrong_pass_alert').style.color = 'red';
    document.getElementById('wrong_pass_alert').innerHTML
      = '☒ استخدم كلمة السر ذاتها';
    document.getElementById('create').disabled = true;
    document.getElementById('create').style.opacity = (0.4);
  } else {
    document.getElementById('wrong_pass_alert').style.color = 'green';
    document.getElementById('wrong_pass_alert').innerHTML =
      '🗹 تم تطابق كلمة السر';
    document.getElementById('create').disabled = false;
    document.getElementById('create').style.opacity = (1);
  }

}
function wrong_pass_alert() {
  if (document.getElementById('pass').value != "" &&
    document.getElementById('confirm_pass').value != "") {
    alert("Your response is submitted");
  } else {
    alert("Please fill all the fields");
  }
}


document.querySelector('.review-form').addEventListener('submit', function(event) {
    event.preventDefault();
    

});



function decreaseValue() {
  var currentValue = parseInt(document.getElementById("quantity").innerHTML);
  if (currentValue > 1) {
      document.getElementById("quantity").innerHTML = currentValue - 1;
  }
}

function increaseValue() {
  var currentValue = parseInt(document.getElementById("quantity").innerHTML);
  document.getElementById("quantity").innerHTML = currentValue + 1;
}

var addJobModal = document.getElementById("add-job-modal");
var editJobModal = document.getElementById("edit-job-modal");

var addJobBtn = document.getElementById("add-job-btn");
var editJobBtn = document.getElementById("edit-job-btn");

var closeBtns = document.getElementsByClassName("close");

addJobBtn.onclick = function () {
    addJobModal.style.display = "block";
}

editJobBtn.onclick = function () {
    editJobModal.style.display = "block";
}

for (var i = 0; i < closeBtns.length; i++) {
    closeBtns[i].onclick = function () {
        addJobModal.style.display = "none";
        editJobModal.style.display = "none";
    }
}

window.onclick = function (event) {
    if (event.target == addJobModal || event.target == editJobModal) {
        addJobModal.style.display = "none";
        editJobModal.style.display = "none";
    }
}



function selectCategory() {
  var selectedCategory = document.getElementById("category-select").value;
  alert("تم اختيار الفئة: " + selectedCategory);
}



function showAnimation() {
  const element = document.querySelector('.welcome-animation');
  element.classList.add('fadeIn');
}
// احصل على عنوان الصفحة الحالية
var currentPage = window.location.href;
// احصل على عناصر الروابط في Navbar
var navbarLinks = document.querySelectorAll('.navbar a');
// قم بفحص كل رابط في Navbar
navbarLinks.forEach(function(link) {
  // احصل على رابط كل عنصر
  var linkHref = link.href;
  // قارن عنوان الصفحة الحالية بعنوان كل رابط
  if (currentPage === linkHref) {
    // إذا كانت الصفحة الحالية تتطابق مع الرابط، ضع الكلاس الجديد
    link.classList.add('navbar-link-active');
  }
});

