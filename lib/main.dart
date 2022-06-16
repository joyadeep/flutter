import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Flutter Day 6',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.purple[600],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
                child: Text('NiNja ID Card',
                    style: TextStyle(color: Colors.white, fontSize: 32))),
            SizedBox(
              height: 40,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 40,
            ),
            Text(
              'Name',
              style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Joyadeep Limbu',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.indigo[300],
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Ninjutsu Level',
              style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '8',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.indigo[300],
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'joyadeeplimbu@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.red[100]),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
                child: Image.asset(
              'assets/images/userqr.png',
              width: 150,
              height: 150,
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text('scan QR for proxy',
                    style: TextStyle(color: Colors.white)))
          ]),
        ));
  }
}
