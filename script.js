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



document.addEventListener("DOMContentLoaded", function () {
    const section = document.querySelector(".body-section2");
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                section.classList.add("visible");
            }
        });
    }, { threshold: 0.15 });

    observer.observe(section);
});

function toggleMenu() {
    document.querySelector(".navbar ul").classList.toggle("active");
}

// Add scroll effect
window.addEventListener("scroll", function () {
    const navbar = document.querySelector(".navbar");
    if (window.scrollY > 50) {
        navbar.classList.add("scrolled");
    } else {
        navbar.classList.remove("scrolled");
    }
});


document.addEventListener("DOMContentLoaded", function() {
    const contactSection = document.querySelector(".contact-section");
    setTimeout(() => {
        contactSection.style.opacity = "1";
        contactSection.style.transform = "translateY(0) scale(1)";
    }, 300);
});

document.querySelectorAll("input, textarea").forEach((field) => {
    field.dataset.placeholder = field.placeholder;
    
    field.addEventListener("focus", () => {
        field.setAttribute("placeholder", "Typing...");
    });

    field.addEventListener("blur", () => {
        field.setAttribute("placeholder", field.dataset.placeholder);
    });
});
