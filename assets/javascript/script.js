document.addEventListener("DOMContentLoaded", function () {
    // Optimized card animation
    const quizCards = document.querySelectorAll(".quiz-card");
    
    // Use CSS-based staggered animation instead of JavaScript timeouts
    quizCards.forEach((card, index) => {
        card.style.animationDelay = `${index * 50}ms`;
        card.classList.add("animate");
    });
    
    // Add scroll effect for navbar
    window.addEventListener("scroll", function () {
        const navbar = document.querySelector(".navbar");
        if (window.scrollY > 50) {
            navbar.classList.add("scrolled");
        } else {
            navbar.classList.remove("scrolled");
        }
    });
    
    // Section visibility check (keeping this from original code)
    const section = document.querySelector(".quiz-section");
    function checkVisibility() {
        const rect = section.getBoundingClientRect();
        if (rect.top < window.innerHeight && rect.bottom >= 0) {
            section.classList.add("visible");
        }
    }
    window.addEventListener("scroll", checkVisibility);
    checkVisibility();
    
    // Body section visibility (keeping this from original code)
    const bodySection2 = document.querySelector(".body-section2");
    if (bodySection2) {
        const observer = new IntersectionObserver((entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    bodySection2.classList.add("visible");
                }
            });
        }, { threshold: 0.01 });
        observer.observe(bodySection2);
    }
    
    // Contact section animation (keeping this from original code)
    const contactSection = document.querySelector(".contact-section");
    if (contactSection) {
        setTimeout(() => {
            contactSection.style.opacity = "1";
            contactSection.style.transform = "translateY(0) scale(1)";
        }, 300);
    }
    
    // Input field placeholder effects (keeping this from original code)
    document.querySelectorAll("input, textarea").forEach((field) => {
        field.dataset.placeholder = field.placeholder;
        
        field.addEventListener("focus", () => {
            field.setAttribute("placeholder", "Typing...");
        });

        field.addEventListener("blur", () => {
            field.setAttribute("placeholder", field.dataset.placeholder);
        });
    });
});

// Toggle menu function (keeping this from original code)
function toggleMenu() {
    document.querySelector(".navbar ul").classList.toggle("active");
}