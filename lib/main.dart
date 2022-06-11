import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Todo App',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'This is body',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 171, 55, 203),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Text(
              '+',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
            )),
      ),
    ),
  );
}
