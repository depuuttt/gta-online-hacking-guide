// Filter pills
const filters = document.querySelectorAll(".filter");
const cards = document.querySelectorAll("#grid .card");
filters.forEach((f) => {
  f.addEventListener("click", () => {
    filters.forEach((x) => x.classList.remove("active"));
    f.classList.add("active");
    const cat = f.dataset.filter;
    cards.forEach((c) => {
      const match = cat === "all" || c.dataset.cat.includes(cat);
      c.style.display = match ? "" : "none";
    });
  });
});
