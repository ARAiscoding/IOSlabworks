import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = '0';
  String _operand = '';
  double _num1 = 0.0;
  double _num2 = 0.0;
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _output,
              style: TextStyle(fontSize: 48.0),
            ),
            SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('7'),
                _buildButton('8'),
                _buildButton('9'),
                _buildButton('/'),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('4'),
                _buildButton('5'),
                _buildButton('6'),
                _buildButton('*'),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('1'),
                _buildButton('2'),
                _buildButton('3'),
                _buildButton('-'),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('C'),
                _buildButton('0'),
                _buildButton('.'),
                _buildButton('+'),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildButton('='),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return MaterialButton(
      onPressed: () => _onPressed(text),
      child: Text(
        text,
        style: TextStyle(fontSize: 24.0),
      ),
      minWidth: text == '0' ? 128.0 : 64.0,
      height: 64.0,
    );
  }

  void _onPressed(String text) {
    if (text == 'C') {
      setState(() {
        _output = '0';
        _operand = '';
        _num1 = 0.0;
        _num2 = 0.0;
        _result = '';
      });
    } else if (text == '+' || text == '-' || text == '*' || text == '/') {
      setState(() {
        _operand = text;
        _num1 = double.parse(_output);
        _output = '0';
      });
    } else if (text == '=') {
      setState(() {
        _num2 = double.parse(_output);
        if (_operand == '+') {
          _result = (_num1 + _num2).toString();
        } else if (_operand == '-') {
          _result = (_num1 - _num2).toString();
        } else if (_operand == '*') {
          _result = (_num1 * _num2).toString();
        } else if (_operand == '/') {
          _result = (_num1 / _num2).toString();
        }
        _output = _result;
      });
    } else {
      setState(() {
        if (_output == '0') {
          _output = text;
        } else {
          _output += text;
        }
      });
    }
  }
}
