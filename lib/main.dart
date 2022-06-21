import 'package:firstapp/quotecard.dart';
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
    Quotelist('Work is worship', 'author 1'),
    Quotelist('When there is a will,there is a way', 'author 2')
  ];

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
          children: quotes
              .map((quote) => Quotecard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
