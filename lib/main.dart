import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Text('Hello world'),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Day 4',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[600],
      ),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download_done_rounded),
            label: Text('Downloaded')),

        // child: TextButton(
        //   onPressed: () {},
        //   child: Text('Login'),
        // ),

        //     child: ElevatedButton(
        //   onPressed: () {},
        //   child: Text('Signup'),
        // )

        // child: Icon(
        //   Icons.thumb_up_alt_rounded,
        //   color: Colors.lightBlue[700],
        //   size: 60,
        // ),
      ),
    );
  }
}
