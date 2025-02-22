document.addEventListener("DOMContentLoaded", function () {
    const section = document.querySelector(".quiz-section");

    function checkVisibility() {
        const rect = section.getBoundingClientRect();
        if (rect.top < window.innerHeight && rect.bottom >= 0) {
            section.classList.add("visible");
        }
    }

    // Check on scroll
    window.addEventListener("scroll", checkVisibility);
    
    // Check initially in case it's already in view
    checkVisibility();
});


function toggleMenu() {
    document.querySelector(".navbar ul").classList.toggle("active");
}


document.addEventListener("DOMContentLoaded", function () {
    const section = document.querySelector(".body-section2");
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                section.classList.add("visible");
            }
        });
    }, { threshold: 0.25 });

    observer.observe(section);
});