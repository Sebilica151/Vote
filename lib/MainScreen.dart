import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'InsertCodeScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Stack(
          children: <Widget> [
            Align(
              alignment: Alignment(0,-0.4),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()),
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
                  const Text('Create Poll', style: TextStyle(fontSize: 40)),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,0.4),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InsertCodeScreen()),
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
                    const Text('Insert code', style: TextStyle(fontSize: 40)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
