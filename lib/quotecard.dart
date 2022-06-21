import 'package:firstapp/quotelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quotecard extends StatelessWidget {
  final Quotelist quote;
  final Function delete;
  Quotecard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('- ' + quote.author,
                style: TextStyle(fontSize: 14, color: Colors.grey[400])),
            ElevatedButton(onPressed: () {}, child: Text('Delete'))
          ],
        ),
      ),
    );
  }
}
