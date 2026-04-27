import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  // Variables for exercises
  String userName = '';
  int counter = 0;
  String conditionResult = '';
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  String loopResult = '';

  // Function example
  int addNumbers(int a, int b) => a + b;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 1 - Programming Basics')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1️⃣ Variables & Text Input:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Enter your name'),
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
            ),
            Text('Hello, $userName', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),

            const Text(
              '2️⃣ Counter Example:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 10),
                Text('Counter: $counter', style: const TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),

            const Text(
              '3️⃣ Conditional Example:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  conditionResult = counter % 2 == 0 ? 'Even' : 'Odd';
                });
              },
              child: const Text('Check if counter is Even or Odd'),
            ),
            Text(
              'Result: $conditionResult',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            const Text(
              '4️⃣ List Example:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  loopResult = '';
                  for (var fruit in fruits) {
                    loopResult += '$fruit, ';
                  }
                  loopResult = loopResult.substring(0, loopResult.length - 2);
                });
              },
              child: const Text('Show all fruits'),
            ),
            Text('Fruits: $loopResult', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),

            const Text(
              '5️⃣ Function Example:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                final sum = addNumbers(5, 7);
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Sum of 5 + 7 = $sum')));
              },
              child: const Text('Add 5 + 7'),
            ),
            const SizedBox(height: 20),

            const Text(
              '6️⃣ Loops & Counting Example:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  loopResult = '';
                  for (int i = 1; i <= 5; i++) {
                    loopResult += '$i ';
                  }
                });
              },
              child: const Text('Count 1 to 5'),
            ),
            Text(
              'Loop result: $loopResult',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
