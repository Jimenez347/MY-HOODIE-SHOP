import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = '';
  String result = '0';

  void buttonPressed(String text) {
    setState(() {
      if (text == 'c') {
        userInput = '';
        result = '0';
      } else if (text == '=') {
        try {
          if (userInput.contains('÷')) {
            userInput = userInput.replaceAll('x', '*');
          }

          final expression = userInput;

          if (expression.contains('+')) {
            final parts = expression.split('+');
            result = (double.parse(parts[0]) + double.parse(parts[1]))
                .toString();
          } else if (expression.contains('-')) {
            final parts = expression.split('-');
            result = (double.parse(parts[0]) - double.parse(parts[1]))
                .toString();
          } else if (expression.contains('x')) {
            final parts = expression.split('x');
            result = (double.parse(parts[0]) * double.parse(parts[1]))
                .toString();
          } else if (expression.contains('÷')) {
            final parts = expression.split('÷');
            result = (double.parse(parts[0]) / double.parse(parts[1]))
                .toString();
          }
        } catch (e) {
          result = 'Error';
        }
      } else {
        userInput += text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final buttons = [
      '7',
      '8',
      '9',
      '÷',
      '4',
      '5',
      '6',
      'x',
      '1',
      '2',
      '3',
      '-',
      '0',
      '.',
      'c',
      '+',
      '=',
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 146, 216, 238),
        title: Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      userInput,
                      style: const TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(237, 255, 255, 255),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      result,
                      style: const TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GridView.builder(
              itemCount: buttons.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.3,
              ),
              itemBuilder: (context, index) {
                final btn = buttons[index];

                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ['÷', 'x', '-', '+', '='].contains(btn)
                          ? const Color.fromARGB(255, 238, 139, 10)
                          : const Color.fromARGB(255, 138, 138, 138),
                    ),
                    onPressed: () => buttonPressed(btn),
                    child: Text(
                      btn,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
