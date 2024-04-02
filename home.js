// Smooth scrolling for navigation links
document.querySelectorAll("header nav a").forEach((anchor) => {
  anchor.addEventListener("click", function (e) {
    e.preventDefault();

    document.querySelector(this.getAttribute("href")).scrollIntoView({
      behavior: "smooth",
    });
  });
});

// Highlight active navigation link on scroll
window.addEventListener("scroll", () => {
  const sections = document.querySelectorAll("section");
  const navLinks = document.querySelectorAll("header nav a");

  sections.forEach((section) => {
    const top = window.scrollY;
    const offset = section.offsetTop - 150;
    const height = section.offsetHeight;
    const id = section.getAttribute("id");

    if (top >= offset && top < offset + height) {
      navLinks.forEach((link) => {
        link.classList.remove("active");
      });
      document
        .querySelector('header nav a[href="#' + id + '"]')
        .classList.add("active");
    }
  });
});

document.addEventListener("DOMContentLoaded", function () {
  const items = document.querySelectorAll(".item");

  items.forEach((item) => {
    const value = parseInt(item.getAttribute("data-value"));
    let current = 0;

    const interval = setInterval(() => {
      if (current <= value) {
        item.innerText = current + "+";
        current += 10; // Change the increment value for smoother animation
      } else {
        clearInterval(interval);
      }
    }, 20); // Change the interval for animation speed
  });
});
