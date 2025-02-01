import 'dart:math';

final List<List<Map<String, dynamic>>> allQuestionSets = [

  questionsSet1,
  questionsSet2,
  questionsSet3,
  questionsSet4,
  questionsSet5,
  questionsSet6,
  questionsSet7,
  questionsSet8,
  questionsSet9,
  questionsSet10,
];

List<Map<String, dynamic>> getRandomQuestionSet() {
  final random = Random();
  return allQuestionSets[random.nextInt(allQuestionSets.length)];
}

final List<Map<String, dynamic>> questionsSet1 = [
  {
    "question": "What is the capital of France?",
    "options": ["Berlin", "Madrid", "Paris", "Rome"],
    "answerIndex": 2,
  },
  {
    "question": "Which planet is known as the Red Planet?",
    "options": ["Earth", "Mars", "Jupiter", "Saturn"],
    "answerIndex": 1,
  },
  {
    "question": "What is the largest mammal?",
    "options": ["Elephant", "Blue Whale", "Giraffe", "Rhino"],
    "answerIndex": 1,
  },
  {
    "question": "Which country is the largest by land area?",
    "options": ["United States", "China", "Canada", "Russia"],
    "answerIndex": 3,
  },
  {
    "question": "Who wrote the play 'Romeo and Juliet'?",
    "options": ["Charles Dickens", "William Shakespeare", "Jane Austen", "Mark Twain"],
    "answerIndex": 1,
  },
];

final List<Map<String, dynamic>> questionsSet2 = [
  {
    "question": "What is the chemical symbol for water?",
    "options": ["H2O", "CO2", "O2", "NaCl"],
    "answerIndex": 0,
  },
  {
    "question": "Which ocean is the largest?",
    "options": ["Atlantic", "Indian", "Southern", "Pacific"],
    "answerIndex": 3,
  },
  {
    "question": "Who was the first president of the United States?",
    "options": ["Thomas Jefferson", "Abraham Lincoln", "George Washington", "John Adams"],
    "answerIndex": 2,
  },
  {
    "question": "What is the square root of 64?",
    "options": ["6", "7", "8", "9"],
    "answerIndex": 2,
  },
  {
    "question": "Which element has the chemical symbol 'O'?",
    "options": ["Oxygen", "Osmium", "Ozone", "Opium"],
    "answerIndex": 0,
  },
];

final List<Map<String, dynamic>> questionsSet3 = [
  {
    "question": "Which animal is known as the King of the Jungle?",
    "options": ["Tiger", "Elephant", "Lion", "Bear"],
    "answerIndex": 2,
  },
  {
    "question": "Who invented the telephone?",
    "options": ["Alexander Graham Bell", "Thomas Edison", "Nikola Tesla", "Michael Faraday"],
    "answerIndex": 0,
  },
  {
    "question": "What is the smallest country in the world?",
    "options": ["Monaco", "Vatican City", "San Marino", "Liechtenstein"],
    "answerIndex": 1,
  },
  {
    "question": "In which year did the Titanic sink?",
    "options": ["1912", "1905", "1920", "1898"],
    "answerIndex": 0,
  },
  {
    "question": "What is the main ingredient in guacamole?",
    "options": ["Tomato", "Avocado", "Onion", "Chili"],
    "answerIndex": 1,
  },
];

final List<Map<String, dynamic>> questionsSet4 = [
  {
    "question": "Which planet is closest to the sun?",
    "options": ["Earth", "Mercury", "Venus", "Mars"],
    "answerIndex": 1,
  },
  {
    "question": "What is the capital of Japan?",
    "options": ["Seoul", "Tokyo", "Beijing", "Bangkok"],
    "answerIndex": 1,
  },
  {
    "question": "Which element has the atomic number 1?",
    "options": ["Helium", "Oxygen", "Carbon", "Hydrogen"],
    "answerIndex": 3,
  },
  {
    "question": "Who is known for the theory of relativity?",
    "options": ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Nikola Tesla"],
    "answerIndex": 1,
  },
  {
    "question": "What is the capital of Australia?",
    "options": ["Sydney", "Melbourne", "Canberra", "Perth"],
    "answerIndex": 2,
  },
];

final List<Map<String, dynamic>> questionsSet5 = [
  {
    "question": "Who painted the Mona Lisa?",
    "options": ["Vincent van Gogh", "Pablo Picasso", "Leonardo da Vinci", "Claude Monet"],
    "answerIndex": 2,
  },
  {
    "question": "Which gas do plants absorb from the atmosphere?",
    "options": ["Oxygen", "Carbon Dioxide", "Nitrogen", "Helium"],
    "answerIndex": 1,
  },
  {
    "question": "Which animal is the largest land animal?",
    "options": ["Elephant", "Rhino", "Giraffe", "Hippo"],
    "answerIndex": 0,
  },
  {
    "question": "What is the longest river in the world?",
    "options": ["Amazon River", "Nile River", "Yangtze River", "Mississippi River"],
    "answerIndex": 1,
  },
  {
    "question": "In which city would you find the Eiffel Tower?",
    "options": ["Paris", "London", "New York", "Rome"],
    "answerIndex": 0,
  },
];

final List<Map<String, dynamic>> questionsSet6 = [
  {
    "question": "Which continent is the Sahara Desert located in?",
    "options": ["Asia", "Africa", "Australia", "South America"],
    "answerIndex": 1,
  },
  {
    "question": "What is the largest continent by land area?",
    "options": ["Africa", "Asia", "North America", "Europe"],
    "answerIndex": 1,
  },
  {
    "question": "What is the currency used in Japan?",
    "options": ["Yuan", "Won", "Yen", "Ringgit"],
    "answerIndex": 2,
  },
  {
    "question": "Who discovered penicillin?",
    "options": ["Marie Curie", "Louis Pasteur", "Alexander Fleming", "Joseph Lister"],
    "answerIndex": 2,
  },
  {
    "question": "Which is the hardest natural substance on Earth?",
    "options": ["Gold", "Diamond", "Iron", "Platinum"],
    "answerIndex": 1,
  },
];

final List<Map<String, dynamic>> questionsSet7 = [
  {
    "question": "What is the chemical symbol for gold?",
    "options": ["Au", "Ag", "Pb", "Fe"],
    "answerIndex": 0,
  },
  {
    "question": "What is the capital of Canada?",
    "options": ["Toronto", "Ottawa", "Vancouver", "Montreal"],
    "answerIndex": 1,
  },
  {
    "question": "Which language is the most spoken in the world?",
    "options": ["English", "Mandarin", "Spanish", "Hindi"],
    "answerIndex": 1,
  },
  {
    "question": "What is the fastest land animal?",
    "options": ["Cheetah", "Lion", "Elephant", "Kangaroo"],
    "answerIndex": 0,
  },
  {
    "question": "Which planet is known for its rings?",
    "options": ["Venus", "Mars", "Saturn", "Neptune"],
    "answerIndex": 2,
  },
];

final List<Map<String, dynamic>> questionsSet8 = [
  {
    "question": "What is the square root of 81?",
    "options": ["7", "8", "9", "10"],
    "answerIndex": 2,
  },
  {
    "question": "What is the most populous country in the world?",
    "options": ["India", "United States", "China", "Brazil"],
    "answerIndex": 2,
  },
  {
    "question": "What is the capital of Italy?",
    "options": ["Rome", "Paris", "London", "Berlin"],
    "answerIndex": 0,
  },
  {
    "question": "Which planet has the most moons?",
    "options": ["Mars", "Jupiter", "Saturn", "Uranus"],
    "answerIndex": 2,
  },
  {
    "question": "Which chemical element is represented by the symbol 'Na'?",
    "options": ["Sodium", "Nitrogen", "Neon", "Nickel"],
    "answerIndex": 0,
  },
];

final List<Map<String, dynamic>> questionsSet9 = [
  {
    "question": "What is the longest-running TV show in the US?",
    "options": ["Friends", "The Simpsons", "The Office", "Grey's Anatomy"],
    "answerIndex": 1,
  },
  {
    "question": "What is the capital of the United Kingdom?",
    "options": ["London", "Edinburgh", "Dublin", "Cardiff"],
    "answerIndex": 0,
  },
  {
    "question": "Which country is the origin of the Olympic Games?",
    "options": ["Greece", "Italy", "France", "United States"],
    "answerIndex": 0,
  },
  {
    "question": "What is the largest island in the world?",
    "options": ["Australia", "Greenland", "New Guinea", "Borneo"],
    "answerIndex": 1,
  },
  {
    "question": "What is the primary ingredient in sushi?",
    "options": ["Rice", "Seaweed", "Fish", "Vegetables"],
    "answerIndex": 0,
  },
];

final List<Map<String, dynamic>> questionsSet10 = [
  {
    "question": "What is the capital of Brazil?",
    "options": ["Rio de Janeiro", "Brasília", "São Paulo", "Recife"],
    "answerIndex": 1,
  },
  {
    "question": "Who invented the lightbulb?",
    "options": ["Nikola Tesla", "Thomas Edison", "Alexander Graham Bell", "Benjamin Franklin"],
    "answerIndex": 1,
  },
  {
    "question": "Which country is known as the Land of the Rising Sun?",
    "options": ["China", "South Korea", "Japan", "Thailand"],
    "answerIndex": 2,
  },
  {
    "question": "Which city is known as the Big Apple?",
    "options": ["Los Angeles", "New York City", "Chicago", "San Francisco"],
    "answerIndex": 1,
  },
  {
    "question": "Who is known for discovering gravity?",
    "options": ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Nikola Tesla"],
    "answerIndex": 1,
  },
];
