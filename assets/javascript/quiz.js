document.addEventListener("DOMContentLoaded", () => {
    const questionText = document.getElementById("question-text");
    const optionsContainer = document.getElementById("options");
    const nextBtn = document.getElementById("next-btn");

    let questions = [];
    let currentQuestionIndex = 0;
    let selectedAnswer = "";
    let score = 0;

    // Get theme and username from URL parameters
    const urlParams = new URLSearchParams(window.location.search);
    const theme = urlParams.get("theme") || "gk_questions"; // Default: GK
    const username = urlParams.get("username") || "Guest";

    // ✅ Fetch questions based on the selected theme
    fetch(`http://localhost:3000/questions?theme=${theme}`)
        .then(response => {
            if (!response.ok) {
                throw new Error("Failed to fetch questions!");
            }
            return response.json();
        })
        .then(data => {
            questions = data;
            if (questions.length === 0) {
                questionText.innerText = "❌ No questions available for this theme.";
                nextBtn.style.display = "none";
            } else {
                showQuestion();
            }
        })
        .catch(error => {
            console.error("Error fetching data:", error);
            questionText.innerText = "❗ Error loading questions!";
        });

    // ✅ Show the current question
    function showQuestion() {
        if (currentQuestionIndex >= questions.length) {
            submitScore(); // Send score to DB when quiz is complete
            questionText.innerText = `🎉 Quiz Completed! Your score: ${score}/${questions.length}`;
            optionsContainer.innerHTML = `<p>Thanks for playing!</p>`;
            nextBtn.style.display = "none";
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

        // Show Next button after each question
        nextBtn.style.display = "none";
        selectedAnswer = "";

        // Add event listeners to each option button
        document.querySelectorAll(".option-btn").forEach(option => {
            option.addEventListener("click", () => {
                if (!selectedAnswer) {
                    selectedAnswer = option.dataset.value; // Get selected value
                    checkAnswer(option);
                }
            });
        });
    }

    // ✅ Check if selected answer is correct
    function checkAnswer(selectedOption) {
        const correctOption = questions[currentQuestionIndex].correct_option;

        // Get all options and disable clicks after selection
        const allOptions = document.querySelectorAll(".option-btn");
        allOptions.forEach(option => option.style.pointerEvents = "none");

        if (selectedOption.dataset.value === correctOption) {
            selectedOption.style.background = "linear-gradient(135deg, #4caf50, #45a049)"; // Green for correct
            selectedOption.style.color = "#fff";
            score++;
        } else {
            selectedOption.style.background = "linear-gradient(135deg, #e57373, #e53935)"; // Red for wrong
            selectedOption.style.color = "#fff";

            // Highlight correct option
            allOptions.forEach(option => {
                if (option.dataset.value === correctOption) {
                    option.style.background = "linear-gradient(135deg, #4caf50, #45a049)";
                    option.style.color = "#fff";
                }
            });
        }

        // Show the Next button after 1 second
        setTimeout(() => {
            nextBtn.style.display = "block";
        }, 1000);
    }

    // ✅ Handle Next button click
    nextBtn.addEventListener("click", () => {
        currentQuestionIndex++;
        showQuestion();
    });

    // ✅ Submit the score to the backend
    function submitScore() {
        fetch("http://localhost:3000/submit-score", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
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
});
