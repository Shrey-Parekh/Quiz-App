document.addEventListener("DOMContentLoaded", () => {
    const questionText = document.getElementById("question-text");
    const optionsContainer = document.getElementById("options");
    const nextBtn = document.getElementById("next-btn");
    const quizContainer = document.getElementById("quiz-container");

    let questions = [];
    let currentQuestionIndex = 0;
    let selectedAnswer = "";
    let score = 0;

    let username = localStorage.getItem("username") || "Guest";
    let email = localStorage.getItem("email");

    if (!email) {
        alert("⚠️ User email not found. Please log in again.");
        window.location.href = "login.html";
        return;
    }

    const urlParams = new URLSearchParams(window.location.search);
    const theme = urlParams.get("theme") || "gk_questions";

    console.log("Current User:", username);

    fetch(`http://localhost:3000/questions?theme=${theme}`)
        .then(response => {
            if (!response.ok) throw new Error("Failed to fetch questions!");
            return response.json();
        })
        .then(data => {
            questions = data;
            if (questions.length === 0) {
                questionText.innerText = "No questions available for this theme.";
                optionsContainer.innerHTML = "<p>Please choose another theme.</p>";
                nextBtn.style.display = "none";
            } else {
                showQuestion();
            }
        })
        .catch(error => {
            console.error("Error fetching data:", error);
            questionText.innerText = "Error loading questions!";
            optionsContainer.innerHTML = "<p>Try refreshing the page.</p>";
        });

    function showQuestion() {
        if (currentQuestionIndex >= questions.length) {
            submitScore();
            showCompletionScreen();
            return;
        }

        const q = questions[currentQuestionIndex];
        questionText.innerText = `${currentQuestionIndex + 1}. ${q.question_text}`;

        optionsContainer.innerHTML = `
            <div class="option-btn" data-value="A">${q.option_a}</div>
            <div class="option-btn" data-value="B">${q.option_b}</div>
            <div class="option-btn" data-value="C">${q.option_c}</div>
            <div class="option-btn" data-value="D">${q.option_d}</div>
        `;

        nextBtn.style.display = "none";
        selectedAnswer = "";

        document.querySelectorAll(".option-btn").forEach(option => {
            option.addEventListener("click", () => {
                if (!selectedAnswer) {
                    selectedAnswer = option.dataset.value;
                    checkAnswer(option);
                }
            });
        });
    }

    function checkAnswer(selectedOption) {
        const correctOption = questions[currentQuestionIndex].correct_option;

        document.querySelectorAll(".option-btn").forEach(option => option.style.pointerEvents = "none");

        if (selectedOption.dataset.value === correctOption) {
            selectedOption.classList.add("correct");
            score++;
        } else {
            selectedOption.classList.add("wrong");

            document.querySelectorAll(".option-btn").forEach(option => {
                if (option.dataset.value === correctOption) {
                    option.classList.add("correct");
                }
            });
        }

        setTimeout(() => {
            nextBtn.style.display = "block";
        }, 750);
    }

    nextBtn.addEventListener("click", () => {
        currentQuestionIndex++;
        showQuestion();
    });
    
    function submitScore() {
        fetch("http://localhost:3000/submit-score", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
                email: email,
                username: username,
                theme: theme,
                score: score,
                totalQuestions: questions.length
            })
        })
        .then(response => response.json())
        .then(data => console.log(data.message))
        .catch(error => console.error("Error submitting score:", error));
    }

        function showCompletionScreen() {
        questionText.innerText = "Quiz Completed!";
        optionsContainer.innerHTML = `
            <div class="completion-screen">
                <div class="completion-score">${score}/${questions.length}</div>
                <div class="completion-message">Great job! Ready for another challenge?</div>
                <div class="completion-buttons">
                    <button class="completion-btn retry">
                        <i class="fas fa-redo"></i>
                        <span>Retry Quiz</span>
                    </button>
                    <button class="completion-btn themes">
                        <i class="fas fa-th-large"></i>
                        <span>Back to Themes</span>
                    </button>
                    <button class="completion-btn home">
                        <i class="fas fa-home"></i>
                        <span>Back to Home</span>
                    </button>
                </div>
            </div>
        `;

        const retryBtn = optionsContainer.querySelector('.retry');
        const themesBtn = optionsContainer.querySelector('.themes');
        const homeBtn = optionsContainer.querySelector('.home');

        retryBtn.addEventListener('click', () => {
            currentQuestionIndex = 0;
            score = 0;
            showQuestion();
        });

        themesBtn.addEventListener('click', () => {
            window.location.href = "/assets/pages/themes.html";
        });

        homeBtn.addEventListener('click', () => {
            window.location.href = "/assets/pages/home.html";
        });

        nextBtn.style.display = "none";
    }
});
