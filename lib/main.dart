import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Counter(),
    ),
  );
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  int level = 0;
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Flutter Day 7',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[600],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Text('Counter App',
                  style: TextStyle(fontSize: 40, color: Colors.white70)),
              SizedBox(
                height: 30,
              ),
              Text(
                '$level',
                style: TextStyle(fontSize: 82.0, color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (level > 0) {
                        level -= 1;
                      }
                    });
                  },
                  child: Icon(
                    Icons.remove_rounded,
                    size: 50,
                  )),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      level += 1;
                    });
                  },
                  child: Icon(
                    Icons.add_rounded,
                    size: 50,
                  )),
            ],
          )
        ]),
      ),
    ));
  }
}
