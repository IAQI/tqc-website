---
title: Venue Information
year: 2027
type: text_page
menu:
    2027:
        parent: attend
        weight: 20
---

### Conference Venue 

TQC 2027 will be hosted at the congress center **Maison MINATEC**, located at the heart of Grenoble's scientific and technological ecosystem.
<address>
3 parvis Louis Néel -
38000 Grenoble,
France
</address>

[Learn more about the venue.](https://www.maison-minatec.fr/) All pictures in the below gallery are taken from [Maison MINATEC's gallery](https://www.maison-minatec.fr/galeries/).

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

<div class="slideshow" id="venue-page-slideshow">
    <div class="slide active"><img src="/images/2027/venue/Couverture-Facade-Maison-minatec.jpg" alt="Entrance Minatec"></div>
    <div class="slide"><img src="/images/2027/venue/Auditorium-Platine-Utopik-2.jpg" alt="Auditorium"></div>
    <div class="slide"><img src="/images/2027/venue/Auditorium-Platine-Utopik-7.jpg" alt="Auditorium"></div>
    <div class="slide"><img src="/images/2027/venue/titane-13.jpg" alt="Coffee break"></div>
    <div class="slide"><img src="/images/2027/venue/titane-4.jpg" alt="Restaurant"></div>
    <div class="slide"><img src="/images/2027/venue/Accueil3.jpg" alt="Welcome"></div>
    <div class="slide"><img src="/images/2027/venue/Exterieur3.jpg" alt="Coffee break"></div>
    <div class="slide"><img src="/images/2027/venue/exterieur5.jpg" alt="Outside Grenoble"></div>
    <div class="slide"><img src="/images/2027/venue/exterieur8.jpg" alt="Outside Grenoble"></div>
    <button class="nav prev" aria-label="Previous slide">&#10094;</button>
    <button class="nav next" aria-label="Next slide">&#10095;</button>
    <div class="dots"></div>
</div>

<script>
(function () {
    const root = document.getElementById('venue-page-slideshow');
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

### Accessibility
For more information about the physical features of our accessible rooms, common areas or special services relating to a specific disability please call directly Maison MINATEC at +33 (0)4 38 78 34 51 or contact us at [2027@tqc-conference.org](mailto:2027@tqc-conference.org).

### Accommodation

To ensure a comfortable and convenient stay, TQC 2027 will partner with local hotels, exclusively offering a limited number of discounted rooms for TQC 2026 participants. Stay tuned!
