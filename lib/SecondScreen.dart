import'package:flutter/material.dart';
import'ThirdScreen.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondScreen> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      ++counter;
    });
    if (counter == 6) {
      --counter;
    }
  }
  void _decrementCounter() {
    setState(() {
      --counter;
    });
    if (counter == -1) {
      ++counter;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Menu'),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                heroTag: "inc",
                onPressed: _incrementCounter,
                child: Icon(Icons.person_add),
                backgroundColor: Colors.lightBlue,
                tooltip: 'Increment',
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                heroTag:'decr',
                onPressed: _decrementCounter,
                child: Icon(Icons.person_remove),
                backgroundColor: Colors.lightBlue,
                tooltip: 'Decrement',
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdScreen()),
                  );
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child:
                  const Text('Create', style: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,-0.7),
              child:
              Text(
                'Select the number of participants: ',
              ),
            ),
            Align(
              alignment: Alignment(0, -0.6),
              child:
              Text(
                '$counter',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.00),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


