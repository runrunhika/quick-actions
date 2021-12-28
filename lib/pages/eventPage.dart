import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '代表者　あいさつ',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
