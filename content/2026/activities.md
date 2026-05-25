---
title: Activities
year: 2026

type: text_page
menu:
    2026:
        weight: 30
        parent: attend

---

As part of the TQC 2026 social program, participants are invited to choose one of the following three excursions, taking place on the afternoon of Wednesday, September 2.

<style>
.activities-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 2rem;
    margin: 2rem 0;
}
.activities-grid .activity {
    display: flex;
    flex-direction: column;
}
.activities-grid .activity img {
    width: 100%;
    height: auto;
    margin-top: 1rem;
    border-radius: 4px;
}
.activities-grid .activity small {
    display: block;
    text-align: center;
    margin-top: 0.25rem;
}
.activities-grid .activity p.site-name {
    margin-bottom: 0.25rem;
}
.activities-grid .activity p.site-name + p {
    margin-top: 0;
}
.activities-grid .activity p + ul {
    margin-top: 0;
}
.activities-grid .activity p:has(+ ul) {
    margin-bottom: 0.25rem;
}
.activities-grid .activity p + p.site-name,
.activities-grid .activity ul + p.site-name {
    margin-top: 0.5rem;
}
@media (max-width: 768px) {
    .activities-grid {
        grid-template-columns: 1fr;
    }
}
.activity-slideshow {
    position: relative;
    width: 100%;
    margin: 1rem 0 0;
    aspect-ratio: 3 / 2;
    background: #000;
    border-radius: 6px;
    overflow: hidden;
}
.activity-slideshow .slide {
    position: absolute;
    inset: 0;
    opacity: 0;
    transition: opacity 0.5s ease-in-out;
}
.activity-slideshow .slide.active {
    opacity: 1;
}
.activity-slideshow .slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}
.activity-slideshow .slide .caption {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: rgba(0, 0, 0, 0.55);
    color: #fff;
    padding: 0.35rem 0.6rem;
    font-size: 0.75rem;
    text-align: center;
    line-height: 1.3;
}
.activity-slideshow .slide .caption a {
    color: #fff;
    text-decoration: underline;
}
.activity-slideshow .nav {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    border: none;
    width: 2rem;
    height: 2rem;
    border-radius: 50%;
    font-size: 1.1rem;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 2;
}
.activity-slideshow .nav:hover {
    background: rgba(0, 0, 0, 0.75);
}
.activity-slideshow .nav.prev { left: 0.5rem; }
.activity-slideshow .nav.next { right: 0.5rem; }
.activity-slideshow .dots {
    position: absolute;
    bottom: 2.1rem;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 0.35rem;
    z-index: 2;
}
.activity-slideshow .dots button {
    width: 0.5rem;
    height: 0.5rem;
    border-radius: 50%;
    border: none;
    background: rgba(255, 255, 255, 0.5);
    padding: 0;
    cursor: pointer;
}
.activity-slideshow .dots button.active {
    background: #fff;
}
</style>

<div class="activities-grid">
    <div class="activity">
        <h3>Nature Excursion</h3>
        <p>This excursion is designed for nature lovers and wildlife enthusiasts, offering participants the opportunity to discover one of the Eastern Townships&rsquo; most iconic outdoor destinations: Parc de la Gorge de Coaticook. Participants will hike the Coaticook Gorge &ldquo;Canyon&rdquo; Trail, a 3.5 km route that takes approximately 1 h 30 min and includes the longest suspended footbridge in North America. The bridge stretches 169 meters in length and stands approximately 50 meters above the river, providing spectacular views of the canyon and surrounding forest.</p>
        <p>Along the trail, participants will encounter interpretation panels presenting various aspects of the park&rsquo;s natural environment, including its wildlife, plant life, and geological features, making this excursion both scenic and educational.</p>
        <p>Following the visit, the excursion continues to Laiterie de Coaticook, a renowned local dairy shop famous for its ice cream, cheese curds, and traditional dairy products. This stop offers participants the opportunity to relax and enjoy one of Coaticook&rsquo;s signature culinary experiences before returning from the excursion.</p>
        <p><em>Round-trip transportation by bus is included.</em></p>
        <div class="activity-slideshow" id="nature-slideshow">
            <div class="slide active">
                <img src="/images/2026/nature-gorge-1.jpg" alt="Parc de la Gorge de Coaticook">
                <div class="caption"><em>Parc de la Gorge de Coaticook &mdash; source: <a href="https://gorgedecoaticook.qc.ca/activites-estivales/randonnee-pedestre/" target="_blank" rel="noopener">gorgedecoaticook.qc.ca</a></em></div>
            </div>
            <div class="slide">
                <img src="/images/2026/nature-gorge-2.jpg" alt="Parc de la Gorge de Coaticook suspended footbridge">
                <div class="caption"><em>Suspended footbridge &mdash; source: <a href="https://www.quebecvacances.com/fr/attractions/parc-de-la-gorge-de-coaticook" target="_blank" rel="noopener">quebecvacances.com</a></em></div>
            </div>
            <div class="slide">
                <img src="/images/2026/nature-laiterie.jpg" alt="Laiterie de Coaticook">
                <div class="caption"><em>Laiterie de Coaticook &mdash; source: <a href="https://www.cantonsdelest.com/quoi-faire/623/laiterie-de-coaticook" target="_blank" rel="noopener">cantonsdelest.com</a></em></div>
            </div>
            <button class="nav prev" aria-label="Previous slide">&#10094;</button>
            <button class="nav next" aria-label="Next slide">&#10095;</button>
            <div class="dots"></div>
        </div>
    </div>
    <div class="activity">
        <h3>Cultural Excursion</h3>
        <p>This cultural excursion offers participants the opportunity to explore downtown Sherbrooke through a flexible guided city discovery experience. Registered participants will receive a one-page map highlighting recommended points of interest and suggested walking routes. Transportation is facilitated through complimentary bus tickets, although participants may also choose to travel independently by car or bicycle.</p>
        <p>The guided routes will feature a selection of Sherbrooke&rsquo;s cultural and historical landmarks, including Marché de la Gare, a walk around the scenic Lac des Nations circuit, the Musée de la Nature et des Sciences, the famous Tour des Murales, and the historic district along the Magog River near the dam area, featuring heritage sites such as the old prison and the Wellington North and Dufferin sectors.</p>
        <p>The excursion concludes at Siboire, where participants will enjoy a guided visit of the microbrewery accompanied by beer tastings before returning to the hotel at their convenience.</p>
        <div class="activity-slideshow" id="cultural-slideshow">
            <div class="slide active">
                <img src="/images/2026/cultural-murale.jpg" alt="Tour des Murales Sherbrooke">
                <div class="caption"><em>Tour des Murales &mdash; source: <a href="https://www.cantonsdelest.com/randonnee/130/sherbrooke-circuit-des-murales" target="_blank" rel="noopener">cantonsdelest.com</a></em></div>
            </div>
            <div class="slide">
                <img src="/images/2026/cultural-siboire.jpg" alt="Siboire microbrewery">
                <div class="caption"><em>Siboire microbrewery &mdash; source: <a href="https://createursdesaveurs.com/createurs/microbrasserie-siboire-jacques-cartier/" target="_blank" rel="noopener">createursdesaveurs.com</a></em></div>
            </div>
            <div class="slide">
                <img src="/images/2026/cultural-lac-nations.jpg" alt="Lac des Nations">
                <div class="caption"><em>Lac des Nations &mdash; source: <a href="https://www.leprogres.net/actualites/quelques-incontournables-des-cantons-de-lest/" target="_blank" rel="noopener">leprogres.net</a></em></div>
            </div>
            <button class="nav prev" aria-label="Previous slide">&#10094;</button>
            <button class="nav next" aria-label="Next slide">&#10095;</button>
            <div class="dots"></div>
        </div>
    </div>
    <div class="activity">
        <h3>Scientific Excursion</h3>
        <p>This excursion offers participants a behind-the-scenes look at three pillars of Sherbrooke&rsquo;s quantum and technology ecosystem: the <strong>Institut quantique (IQ)</strong>, the <strong>Institut interdisciplinaire d&rsquo;innovation technologique (3IT)</strong>, and <strong>DistriQ &ndash; Quantum Innovation Zone</strong>. The excursion provides a unique opportunity to engage with the people, tools, and ideas shaping the future of quantum technologies in Sherbrooke.</p>
        <p class="site-name"><strong>Institut quantique (IQ)</strong></p>
        <p>One of Canada&rsquo;s leading research centers dedicated entirely to quantum science and technology. Through a guided tour of the facilities, participants will gain insight into the experimental and computational infrastructure that supports the institute&rsquo;s research, and discover how fundamental discoveries are translated into emerging quantum technologies. The visit will showcase the institute&rsquo;s two flagship platforms:</p>
        <ul>
            <li><strong>Quantum FabLab</strong>, an interdisciplinary collaboration platform dedicated to the fabrication and characterization of quantum materials and devices.</li>
            <li><strong>AlgoLab</strong>, which explores the potential of quantum computing across a wide range of application domains.</li>
        </ul>
        <p class="site-name"><strong>3IT (Institut interdisciplinaire d&rsquo;innovation technologique)</strong></p>
        <p>The 3IT is the Université de Sherbrooke’s interdisciplinary research institute bridging fundamental science and industrial innovation. With state-of-the-art infrastructure supporting socially responsible technologies, the institute advances research in micro- and nano-fabrication, photonics, advanced materials, energy systems, robotics, medical technologies, and digital innovation. During the visit, you will see firsthand how the 3IT accelerates innovation to address major societal challenges and support emerging quantum and electronic technologies.</p>
        <p class="site-name"><strong>DistriQ (Sherbrooke Quantum Innovation Zone)</strong></p>
        <p>Discover the career and collaboration opportunities offered by the companies and partners based in the Sherbrooke Quantum Innovation Zone!</p>
        <p><em>Round-trip transportation by bus is included.</em></p>
        <div class="activity-slideshow" id="scientific-slideshow">
            <div class="slide active">
                <img src="/images/2026/DistriQ_image.jpg" alt="DistriQ - Sherbrooke Quantum Innovation Zone">
                <div class="caption"><em>DistriQ &mdash; Sherbrooke Quantum Innovation Zone</em></div>
            </div>
            <div class="slide">
                <img src="/images/2026/iq_image.jpeg" alt="Institut Quantique">
                <div class="caption"><em>Institut quantique &mdash; source: <a href="https://www.usherbrooke.ca/iq/fr/a-propos" target="_blank" rel="noopener">usherbrooke.ca</a></em></div>
            </div>
            <div class="slide">
                <img src="/images/2026/3it_image.jpg" alt="3IT - Institut interdisciplinaire d'innovation technologique">
                <div class="caption"><em>3IT &mdash; Institut interdisciplinaire d&rsquo;innovation technologique</em></div>
            </div>
            <button class="nav prev" aria-label="Previous slide">&#10094;</button>
            <button class="nav next" aria-label="Next slide">&#10095;</button>
            <div class="dots"></div>
        </div>
    </div>
</div>

<script>
(function () {
    document.querySelectorAll('.activity-slideshow').forEach(function (root) {
        const slides = root.querySelectorAll('.slide');
        const dotsContainer = root.querySelector('.dots');
        if (!slides.length || !dotsContainer) return;
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
    });
})();
</script>
