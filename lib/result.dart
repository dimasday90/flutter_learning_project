import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String query;
  final Function restart;

  Result({this.query, this.restart});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'You got $query',
                style: TextStyle(color: Colors.blue, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              heightFactor: 3,
            ),
            RaisedButton(
              child: Text(
                'Restart',
              ),
              onPressed: restart,
              color: Colors.blue,
              textColor: Colors.white,
            )
          ],
        ));
  }
}
