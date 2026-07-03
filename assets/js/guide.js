// Copy buttons
document.querySelectorAll(".copy-btn").forEach((btn) => {
  btn.addEventListener("click", () => {
    const text = btn.dataset.copy;
    navigator.clipboard.writeText(text).then(() => {
      const old = btn.textContent;
      btn.textContent = "Copied";
      btn.classList.add("copied");
      setTimeout(() => {
        btn.textContent = old;
        btn.classList.remove("copied");
      }, 1400);
    });
  });
});

// Active TOC link on scroll
const links = Array.from(document.querySelectorAll(".toc a"));
const map = {};
links.forEach((a) => {
  map[a.getAttribute("href").slice(1)] = a;
});
const sections = links
  .map((a) => document.getElementById(a.getAttribute("href").slice(1)))
  .filter(Boolean);

function onScroll() {
  const y = window.scrollY + 120;
  let active = sections[0];
  sections.forEach((s) => {
    if (s && s.offsetTop <= y) active = s;
  });
  links.forEach((a) => a.classList.remove("active"));
  if (active && map[active.id]) map[active.id].classList.add("active");
}
window.addEventListener("scroll", onScroll, { passive: true });
onScroll();

// Update active topbar nav
const navLinks = Array.from(document.querySelectorAll(".topbar nav a"));
navLinks.forEach((a) => {
  a.addEventListener("click", () => {
    navLinks.forEach((n) => n.classList.remove("active"));
    a.classList.add("active");
  });
});
