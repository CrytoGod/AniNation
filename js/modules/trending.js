const animeList = document.querySelector(".anime-list");
const leftButton = document.querySelector(".arrow-btn.left");
const rightButton = document.querySelector(".arrow-btn.right");

const scrollAmount = 220;
console.log("trending.js loaded");

if (animeList && leftButton && rightButton) {
  leftButton.addEventListener("click", () => {
    animeList.scrollLeft -= scrollAmount;
  });

  rightButton.addEventListener("click", () => {
    animeList.scrollLeft += scrollAmount;
  });
} else {
  console.warn("Missing elements: check .anime-list or arrow buttons.");
}
