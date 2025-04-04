// Authentication utility functions
const auth = {
    // Check if user is logged in
    isLoggedIn() {
        return localStorage.getItem("email") && localStorage.getItem("username");
    },

    // Get current user info
    getCurrentUser() {
        return {
            email: localStorage.getItem("email"),
            username: localStorage.getItem("username")
        };
    },

    // Update navigation based on login status
    updateNavigation() {
        const loginLink = document.getElementById("login-link");
        const registerLink = document.getElementById("register-link");
        const logoutLink = document.getElementById("logout-link");

        if (this.isLoggedIn()) {
            if (loginLink) loginLink.style.display = "none";
            if (registerLink) registerLink.style.display = "none";
            if (logoutLink) logoutLink.style.display = "inline-block";
        } else {
            if (loginLink) loginLink.style.display = "inline-block";
            if (registerLink) registerLink.style.display = "inline-block";
            if (logoutLink) logoutLink.style.display = "none";
        }
    },

    // Handle logout
    async logout() {
        try {
            const response = await fetch("http://localhost:3000/logout", {
                method: "POST",
                headers: { "Content-Type": "application/json" }
            });

            const data = await response.json();
            
            // Clear local storage regardless of server response
            localStorage.removeItem("email");
            localStorage.removeItem("username");
            
            // Redirect to login page
            window.location.href = "login.html";
        } catch (error) {
            console.error("Error during logout:", error);
            // Even if there's an error, clear storage and redirect
            localStorage.removeItem("email");
            localStorage.removeItem("username");
            window.location.href = "login.html";
        }
    },

    // Check authentication for protected pages
    checkAuth() {
        if (!this.isLoggedIn()) {
            window.location.href = "login.html";
            return false;
        }
        return true;
    }
};

// Initialize authentication on page load
document.addEventListener("DOMContentLoaded", function() {
    // Update navigation
    auth.updateNavigation();

    // Add logout handler if logout link exists
    const logoutLink = document.getElementById("logout-link");
    if (logoutLink) {
        logoutLink.addEventListener("click", function(e) {
            e.preventDefault();
            auth.logout();
        });
    }
}); 