import 'package:flutter/material.dart';
import 'package:firstapp/quotelist.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quotelist> quotes = [
    Quotelist('Health is wealth', 'joyadeep'),
    Quotelist('Work is worship', 'author 1')
  ];

  Widget quoteTeamlate(quote) {
    return Quotecard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Day 9',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.purple[600],
      ),
      body: Column(
          children: quotes.map((quote) => Quotecard(quote)).toList(),
    );
  }
}

class Quotecard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(quote.text),
          const SizedBox(
            height: 5,
          ),
          Text(quote.author)
        ],
      ),
    );
  }
}
