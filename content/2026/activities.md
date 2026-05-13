---
title: Activities
year: 2026

type: text_page
menu:
    2026:
        weight: 30
        parent: attend

---

# Activities

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
@media (max-width: 768px) {
    .activities-grid {
        grid-template-columns: 1fr;
    }
}
</style>

<div class="activities-grid">
    <div class="activity">
        <h3>Activity 1</h3>
        <p>Short description of the first activity goes here.</p>
        <img src="/images/2026/activities/activity-1.jpg" alt="Activity 1">
    </div>
    <div class="activity">
        <h3>Activity 2</h3>
        <p>Short description of the second activity goes here.</p>
        <img src="/images/2026/activities/activity-2.jpg" alt="Activity 2">
    </div>
    <div class="activity">
        <h3>Activity 3</h3>
        <p>Short description of the third activity goes here.</p>
        <img src="/images/2026/activities/activity-3.jpg" alt="Activity 3">
    </div>
</div>
