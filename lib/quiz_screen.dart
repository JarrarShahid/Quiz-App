import 'package:flutter/material.dart';
import 'questions.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Map<String, dynamic>> currentQuestions;
  int currentIndex = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    currentQuestions = getRandomQuestionSet(); // Load random questions
  }

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
      ).then((_) {
        // Reset quiz when ResultScreen is popped
        restartQuiz();
      });
    }
  }

  void restartQuiz() {
    if (mounted) {
      // Check if the widget is still in the widget tree
      setState(() {
        currentQuestions =
            getRandomQuestionSet(); // Reload new random questions
        currentIndex = 0;
        score = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (currentIndex >= currentQuestions.length) {
      return const SizedBox(); // Placeholder during navigation
    }

    final question = currentQuestions[currentIndex];

    return WillPopScope(
      onWillPop: () async => false, // Disable the back button
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Quiz",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF002B5C),
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF81C784), Color(0xFF388E3C)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Question ${currentIndex + 1} of ${currentQuestions.length}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      question["question"],
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF388E3C),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  children: List.generate(
                    question["options"].length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF002B5C),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () => answerQuestion(index),
                        child: Text(
                          question["options"][index],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
