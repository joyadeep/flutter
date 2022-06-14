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
            "Flutter Day 5",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple[600],
        ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       child: Text("Row 1"),
        //       padding: EdgeInsets.all(10.0),
        //       margin: EdgeInsets.all(20),
        //       color: Colors.amber,
        //     ),
        //     Container(
        //         child: Text("Row 2"),
        //         padding: EdgeInsets.all(10.0),
        //         color: Colors.tealAccent),
        //     Container(
        //         child: Text("Row 3"),
        //         padding: EdgeInsets.all(20.0),
        //         color: Colors.blue)
        //   ],
        // ));

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text('Column 1'),
              color: Colors.blue,
              padding: EdgeInsets.all(10),
            ),
            Container(
                child: Text('Column 2'),
                color: Colors.redAccent,
                padding: EdgeInsets.all(30)),
            Container(
              child: Text('column 3'),
              color: Colors.indigo,
              padding: EdgeInsets.all(20),
            )
          ],
        ));
  }
}
