/* $(document).ready(function () {
  $(window).scroll(function () {
    if ($(this).scrollTop() > 1) {
      $(".page-title").addClass("sticky");
    } else {
      $(".page-title").removeClass("sticky");
    }
  });
}); */

const navSlide = () => {
  const burger = document.querySelector(".burger");
  const nav = document.querySelector(".header");
  const navLinks = document.querySelectorAll(".navbar-nav");

  burger.addEventListener("click", () => {
    // toggle nav
    nav.classList.toggle("nav-active");

    // animate links
    navLinks.forEach((link, index) => {
      if (link.style.animation) {
        link.style.animation = "";
      } else {
        link.style.animation = `navLinkFade 0.5s ease forwards ${
          index / 7 + 0.5
        }s`;
      }
    });
    // animate burger
    burger.classList.toggle("burger-active");
  });
};

const app = () => {
  navSlide();
  // run smaller apps here, in this bigger one
};

app();
