import 'package:flutter/material.dart';
import 'quotelist.dart';

void main() {
  runApp(
    MaterialApp(
      home: Quotes(),
    ),
  );
}

class Quotes extends StatefulWidget {
  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quotelist> quotes = [
    Quotelist('When there is a will, there is a way', 'joyadeep limbu'),
    Quotelist('Health is wealth', 'Dr. someone'),
    Quotelist('The way to get started is to quit talking and begin doing.',
        'Walt Disney')
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(quote.text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          const SizedBox(height: 10),
          Text('- ' + quote.author,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(
            'Flutter Day 8',
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.purple[600],
          centerTitle: true,
        ),
        body: Column(
            children: quotes.map((quotes) => quoteTemplate(quotes)).toList()));
  }
}
