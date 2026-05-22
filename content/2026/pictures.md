---
title: Pictures
year: 2026
type: no_toc
menu:
    2026:
        weight: 50
        parent: attend

---

## Venue

The conference is hosted at the **Delta Hotels by Marriott Sherbrooke Conference Centre**, in the heart of Sherbrooke.

<style>
.slideshow {
    position: relative;
    max-width: 800px;
    margin: 1.5rem auto;
    aspect-ratio: 3 / 2;
    background: #000;
    border-radius: 6px;
    overflow: hidden;
}
.slideshow .slide {
    position: absolute;
    inset: 0;
    opacity: 0;
    transition: opacity 0.5s ease-in-out;
}
.slideshow .slide.active {
    opacity: 1;
}
.slideshow .slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}
.slideshow .nav {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    border: none;
    width: 2.5rem;
    height: 2.5rem;
    border-radius: 50%;
    font-size: 1.5rem;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 2;
}
.slideshow .nav:hover {
    background: rgba(0, 0, 0, 0.75);
}
.slideshow .nav.prev { left: 0.75rem; }
.slideshow .nav.next { right: 0.75rem; }
.slideshow .dots {
    position: absolute;
    bottom: 0.75rem;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 0.4rem;
    z-index: 2;
}
.slideshow .dots button {
    width: 0.6rem;
    height: 0.6rem;
    border-radius: 50%;
    border: none;
    background: rgba(255, 255, 255, 0.5);
    padding: 0;
    cursor: pointer;
}
.slideshow .dots button.active {
    background: #fff;
}
</style>

<div class="slideshow" id="venue-slideshow">
    <div class="slide active"><img src="/images/2026/venue/Delta_pic1.jpg" alt="Delta Hotel lobby"></div>
    <div class="slide"><img src="/images/2026/venue/Delta_pic3.jpg" alt="Delta Hotel conference hall"></div>
    <div class="slide"><img src="/images/2026/venue/Delta_pic2.jpg" alt="Delta Hotel building"></div>
    <div class="slide"><img src="/images/2026/venue/front-desk.jpg" alt="Delta Hotel front desk"></div>
    <div class="slide"><img src="/images/2026/venue/guestroom-double.jpg" alt="Delta Hotel double guestroom"></div>
    <div class="slide"><img src="/images/2026/venue/pre-function-space.jpg" alt="Delta Hotel pre-function space"></div>
    <div class="slide"><img src="/images/2026/venue/restaurant-bar.jpg" alt="Delta Hotel restaurant and bar"></div>
    <button class="nav prev" aria-label="Previous slide">&#10094;</button>
    <button class="nav next" aria-label="Next slide">&#10095;</button>
    <div class="dots"></div>
</div>

<script>
(function () {
    const root = document.getElementById('venue-slideshow');
    if (!root) return;
    const slides = root.querySelectorAll('.slide');
    const dotsContainer = root.querySelector('.dots');
    let current = 0;
    let timer = null;

    slides.forEach((_, i) => {
        const dot = document.createElement('button');
        dot.setAttribute('aria-label', 'Go to slide ' + (i + 1));
        if (i === 0) dot.classList.add('active');
        dot.addEventListener('click', () => go(i, true));
        dotsContainer.appendChild(dot);
    });
    const dots = dotsContainer.querySelectorAll('button');

    function go(i, userTriggered) {
        slides[current].classList.remove('active');
        dots[current].classList.remove('active');
        current = (i + slides.length) % slides.length;
        slides[current].classList.add('active');
        dots[current].classList.add('active');
        if (userTriggered) restart();
    }

    function restart() {
        clearInterval(timer);
        timer = setInterval(() => go(current + 1), 5000);
    }

    root.querySelector('.prev').addEventListener('click', () => go(current - 1, true));
    root.querySelector('.next').addEventListener('click', () => go(current + 1, true));
    restart();
})();
</script>

## Sherbrooke

The conference takes place in Sherbrooke, a vibrant city in the Eastern Townships of Québec, Canada.

<div class="slideshow" id="sherbrooke-slideshow">
    <div class="slide active"><img src="/images/2026/sherbrooke/SherbPhoto1.jpg" alt="Sherbrooke photo 1"></div>
    <div class="slide"><img src="/images/2026/sherbrooke/SherbPhoto2.jpg" alt="Sherbrooke photo 2"></div>
    <div class="slide"><img src="/images/2026/sherbrooke/SherbPhoto3.jpg" alt="Sherbrooke photo 3"></div>
    <div class="slide"><img src="/images/2026/sherbrooke/SherbPhoto4.jpg" alt="Sherbrooke photo 4"></div>
    <div class="slide"><img src="/images/2026/sherbrooke/SherbPhoto5.jpg" alt="Sherbrooke photo 5"></div>
    <button class="nav prev" aria-label="Previous slide">&#10094;</button>
    <button class="nav next" aria-label="Next slide">&#10095;</button>
    <div class="dots"></div>
</div>

<script>
(function () {
    const root = document.getElementById('sherbrooke-slideshow');
    if (!root) return;
    const slides = root.querySelectorAll('.slide');
    const dotsContainer = root.querySelector('.dots');
    let current = 0;
    let timer = null;

    slides.forEach((_, i) => {
        const dot = document.createElement('button');
        dot.setAttribute('aria-label', 'Go to slide ' + (i + 1));
        if (i === 0) dot.classList.add('active');
        dot.addEventListener('click', () => go(i, true));
        dotsContainer.appendChild(dot);
    });
    const dots = dotsContainer.querySelectorAll('button');

    function go(i, userTriggered) {
        slides[current].classList.remove('active');
        dots[current].classList.remove('active');
        current = (i + slides.length) % slides.length;
        slides[current].classList.add('active');
        dots[current].classList.add('active');
        if (userTriggered) restart();
    }

    function restart() {
        clearInterval(timer);
        timer = setInterval(() => go(current + 1), 5000);
    }

    root.querySelector('.prev').addEventListener('click', () => go(current - 1, true));
    root.querySelector('.next').addEventListener('click', () => go(current + 1, true));
    restart();
})();
</script>