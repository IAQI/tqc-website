---
title: Venue Information
year: 2026

type: text_page
menu:
    2026:
        weight: 2
        parent: attend

---

### How to Book an Accommodation
To ensure a comfortable and convenient stay, TQC 2026 has partnered with Delta Hotels by Marriott Sherbrooke, the venue hosting the conference. A limited number of discounted rooms will be available exclusively for TQC 2026 participants.
 
We warmly encourage attendees to book through our partner hotel to benefit from these preferential rates. Please note that each participant is responsible for making their own reservation.

{{< button-link label="Book your room"
                url="https://www.marriott.com/event-reservations/reservation-link.mi?id=1774892407579&key=GRP&app=resvlink&_branch_match_id=1495112812147034689&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXTywo0MtNLCrKzC8p0UvOz9UvSi3OyczLtgdK2ALZZSCOWmaKraG5uYmFpZGJgbmpuaVadmqlrXtQgFpdUWpaKlB3Xnp8UlF%2BeXFqka1zRlF%2BbioARETjrmAAAAA%3D"
                target="_blank"
                icon="link" >}}

### Conference Venue 

TQC 2026 will take place at the **Delta Hotels by Marriott Sherbrooke Conference Centre**, located in the heart of Sherbrooke (a traditional and unceded land of the W8banaki Nation, known as Ndakina). 
<address>2685 Rue King Ouest, Sherbrooke, Quebec, Canada, J1L 1C1</address>

For questions regarding your reservation, you may call: +1 819-822-1989 or email: dhr.yscdr.reservations@deltahotels.com.

[Learn more about the venue.](https://www.marriott.com/en-us/hotels/yscdr-delta-hotels-sherbrooke-conference-centre/overview/)

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
For more information about the physical features of our accessible rooms, common areas or special services relating to a specific disability please call +1 819-822-1989 . Click {{< button-link label="here" url="https://www.marriott.com/en-us/hotels/yscdr-delta-hotels-sherbrooke-conference-centre/rooms/#accessibleRRooms & Suites | Delta Hotels Sherbrooke Conference Centreooms" icon="link" >}} to see accessible room types at this hotel.
 
**Accessible Hotel Features**
- Accessible on-site parking
- Property has elevators
- Service Animals are welcome without a fee or documentation
- Van Accessible on-site parking
 
**Accessible Areas with Accessible Routes from Public Entrance**
- Entrance to On-Site Business Center is Accessible
- Entrance to On-Site Fitness Center is Accessible
- Main Entrance is Accessible
- On-Site Restaurants are Accessible
- Room and Suites Access through the Interior Corridor
 
**Guest Room Accessibility**
- Accessible Vanities
- Alarm Clock Telephone Ringers
- Bathtub Grab Rails
- Deadbolts on Guest Room and Suites Doors
- Lowered Electrical Outlets
- Mobility accessible rooms
- Non-slip Grab Rails in the Bathroom
- Toilet Seat at Wheelchair Height - Toilet for Disabled
