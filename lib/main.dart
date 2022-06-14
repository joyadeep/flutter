import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Home()),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo App 2',
          style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 2.0,
              fontFamily: 'Poppins'),
        ),
        centerTitle: true,
      ),
      body: Center(child: Image.asset('assets/images/background.jpg')),
      floatingActionButton: FloatingActionButton(
          onPressed: (() => {}),
          child: Text(
            '+',
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
          )),
    );
  }
}
