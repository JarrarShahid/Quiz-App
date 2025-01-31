# Quiz App

## Description

The Quiz App is a Flutter-based application designed to challenge users with random quiz questions. The app features a modern UI, dynamic question sets, and tracks the user's score as they progress through the quiz. Upon completing the quiz, the user is presented with their result and an option to restart the quiz.

---

## Features

- **Randomized Questions:** Questions are loaded from multiple sets and displayed randomly for variety.
- **Dynamic UI:** Modern and user-friendly interface with gradient backgrounds and responsive cards.
- **Score Tracking:** Keep track of the correct answers and display the final score.
- **Multiple Categories:** Diverse quiz categories with interesting questions.
- **Result Screen:** Displays the final score and a button to restart the quiz.

---

## Screens

1. **Home Screen:**

   - Welcome message with a call-to-action to start the quiz.
   - Gradient background and card UI.

2. **Quiz Screen:**

   - Displays questions and answer options.
   - Tracks the current question and score.
   - Stylish cards for questions and answer buttons.

3. **Result Screen:**

   - Displays the user's final score.
   - Provides an option to restart the quiz.

---

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Flutter SDK
- Android Studio or Visual Studio Code

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/JarrarShahid/Quiz-App.git
   ```
2. Navigate to the project directory:
   ```bash
   cd quiz_app
   ```
3. Get the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

---

## Project Structure

```
lib/
├── main.dart            # Entry point of the app
├── home_screen.dart      # Home screen of the app
├── quiz_screen.dart      # Quiz screen with questions and answers
├── result_screen.dart    # Result screen to display the final score
├── questions.dart        # Contains the question sets and logic
└── widgets/              # Shared widgets for the app
```

---

## Key Code Features

### Navigation

Navigation between screens is handled using `Navigator.push()` and `Navigator.pop()`.

### Random Question Selection

```dart
List<Map<String, dynamic>> getRandomQuestionSet() {
  final random = Random();
  return allQuestionSets[random.nextInt(allQuestionSets.length)];
}
```

### Answer Handling

```dart
void answerQuestion(int selectedIndex) {
  if (selectedIndex == currentQuestions[currentIndex]["answerIndex"]) {
    score++;
  }
  setState(() {
    currentIndex++;
  });
  if (currentIndex >= currentQuestions.length) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          score: score,
          restartQuiz: restartQuiz,
        ),
      ),
    ).then((_) => restartQuiz());
  }
}
```

---

## How to Contribute

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes.
4. Push to your fork.
5. Create a pull request.

---

## License

This project is open-source and available under the [MIT License](LICENSE).

---

## Contact

For any queries or feedback, please contact the project maintainer at [(mailto\:jarrarshahid@gmail.com)].


