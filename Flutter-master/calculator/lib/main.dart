import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

// App type -- theme, title
// StatelessWidget have 1 abstract function-- abstract means you need to override that function

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator UI",
      theme: ThemeData(primarySwatch: Colors.blue),

      home: StartPage(), // First Page
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  // Responsive

  String output = '0';
  String _output = '0';
  double num1 = 0;
  double num2 = 0;
  String operator = '';
  String history = '';

  onClick(String calcButton) {
    setState(() {
      if (calcButton == 'C') {
        num1 = 0;
        num2 = 0;
        output = '0';
        history = '';
      } else if (calcButton == '+' ||
          calcButton == '-' ||
          calcButton == '*' ||
          calcButton == '/' ||
          calcButton == '%' ||
          calcButton == 'del') {
        num1 = double.parse(output);
        output = '0';
        operator = calcButton;
        history += '$num1 $operator';
      } // operator end
      else if (calcButton == '%') {
        double current = double.tryParse(output) ?? 0;
        output = (current / 100).toString();
      } else if (calcButton == '=') {
        num2 = double.parse(output);

        history += '$num2';

        switch (operator) {
          case '+':
            _output = (num1 + num2).toString();
            break;

          case '-':
            _output = (num1 - num2).toString();
            break;

          case '*':
            _output = (num1 * num2).toString();
            break;

          case '/':
            _output = (num1 / num2).toString();
            break;

          case 'del':
            _output =
                output.length > 1
                    ? output.substring(0, output.length - 1)
                    : '0';
        } //

        output = _output;
        operator = '';
        history += '$operator= $output,';

        // History
        if (output == 'operator') {
          history += ',$output';
        }
      } // End Switch
      else {
        if (output == '0') {
          output = calcButton;
        } else {
          output += calcButton;
        }
      }
    });
  } // onclick End

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],

        title: Text(
          'Calculator UI',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        elevation: 10,
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(color: Colors.cyan.shade50),
        child: Column(
          children: [
            // Display
            Container(
              height: MediaQuery.sizeOf(context).height * 0.45,
              child: ListView(
                scrollDirection: Axis.vertical,
                reverse: true,

                children: [
                  Text(
                    output,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).height * 0.08,
                    ),
                  ),
                  Text(
                    history,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 21),
                  ),
                ],
              ),
            ),
            // End Display

            // Start Button Container
            // Operators Buttons
            Container(
              height: MediaQuery.sizeOf(context).height * 0.5,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      calcButton('C', Colors.cyan),
                      calcButton('0', Colors.blueGrey),
                      calcButton('del', Colors.cyan),
                      calcButton('/', Colors.cyan),
                    ],
                  ),
                  // Operators

                  // Buttons 1st
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      calcButton('7', Colors.blueGrey),
                      calcButton('8', Colors.blueGrey),
                      calcButton('9', Colors.blueGrey),
                      calcButton('*', Colors.cyan),
                    ],
                  ),
                  // End Buttons

                  // Buttons 2nd
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      calcButton('4', Colors.blueGrey),
                      calcButton('5', Colors.blueGrey),
                      calcButton('6', Colors.blueGrey),
                      calcButton('-', Colors.cyan),
                    ],
                  ),
                  // End Buttons

                  // Button 3rd
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      calcButton('1', Colors.blueGrey),
                      calcButton('2', Colors.blueGrey),
                      calcButton('3', Colors.blueGrey),
                      calcButton('%', Colors.cyan),
                    ],
                  ),

                  // End Buttons

                  // Button 4th
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.87,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        calcButton('00', Colors.blueGrey),
                        SizedBox(width: 30),
                        Expanded(child: calcButton('+', Colors.cyan)),
                        SizedBox(width: 30),
                        calcButton('=', Colors.cyan),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // End Button Container
          ],
        ),
      ),
    );
  }

  Widget calcButton(String calcButton, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shadowColor: Colors.cyan[50],
        elevation: 10,
      ),
      onPressed: () {
        onClick(calcButton);
      },

      child: Text(
        calcButton,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
