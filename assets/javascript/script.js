document.addEventListener("DOMContentLoaded", function () {
    // Optimized card animation
    const quizCards = document.querySelectorAll(".quiz-card");
    
    // Use CSS-based staggered animation instead of JavaScript timeouts
    quizCards.forEach((card, index) => {
        card.style.animationDelay = `${index * 50}ms`;
        card.classList.add("animate");
    });
    
    // Enhanced navbar functionality
    const navbar = document.querySelector(".navbar");
    const navLinks = document.querySelectorAll(".navbar ul li a");
    
    // Set active link based on current page
    const currentLocation = window.location.pathname;
    navLinks.forEach(link => {
        try {
            const linkPath = new URL(link.href).pathname;
            if (currentLocation === linkPath || 
                (currentLocation.includes(linkPath) && linkPath !== '/assets/pages/home.html' && 
                 linkPath !== '/' && linkPath.length > 1)) {
                link.classList.add('active');
            }
            
            // Special case for home page
            if ((currentLocation.includes('home.html') || currentLocation.endsWith('/')) && 
                (linkPath.includes('home.html') || linkPath === '/')) {
                link.classList.add('active');
            }
        } catch (e) {
            console.log("Error processing link:", e);
        }
    });
    
    // Add smooth scroll for navbar anchor links
    navLinks.forEach(link => {
        if (link.hash && link.hash.length > 1) {  // Make sure it's a non-empty hash
            link.addEventListener('click', function(e) {
                e.preventDefault();
                const targetId = this.getAttribute('href');
                const targetElement = document.querySelector(targetId);
                
                if (targetElement) {
                    // Remove active class from all links
                    navLinks.forEach(l => l.classList.remove('active'));
                    
                    // Add active class to clicked link
                    this.classList.add('active');
                    
                    // Smooth scroll to the element
                    window.scrollTo({
                        top: targetElement.offsetTop - navbar.offsetHeight - 20, // Add some extra padding
                        behavior: 'smooth'
                    });
                    
                    // Update URL without page reload
                    history.pushState(null, null, targetId);
                }
            });
        }
    });
    
    // Add scroll effect for navbar with enhanced throttling
    let lastScrollTop = 0;
    let ticking = false;
    
    window.addEventListener("scroll", function () {
        const scrollTop = window.scrollY;
        
        if (!ticking) {
            window.requestAnimationFrame(function() {
                // Basic scrolling class
                if (scrollTop > 50) {
                    navbar.classList.add("scrolled");
                } else {
                    navbar.classList.remove("scrolled");
                }
                
                // Only add scrolling-down class if not currently hovering the navbar
                if (scrollTop > lastScrollTop && scrollTop > 200) {
                    if (!navbar.matches(':hover') && !navbar.matches(':focus-within')) {
                        navbar.classList.add("scrolling-down");
                    }
                } else {
                    navbar.classList.remove("scrolling-down");
                }
                
                lastScrollTop = scrollTop;
                ticking = false;
            });
            
            ticking = true;
        }
    });
    
    // Add hover/focus event listeners to ensure navbar appears when interacted with
    navbar.addEventListener('mouseenter', function() {
        navbar.classList.remove("scrolling-down");
    });
    
    navbar.addEventListener('focusin', function() {
        navbar.classList.remove("scrolling-down");
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