import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:quick_actions_sample/pages/searchPage.dart';

import 'pages/eventPage.dart';
import 'pages/messagePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final quickActions = QuickActions();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quickActions.setShortcutItems([
      //android<app<src<main<res<drawable
      ShortcutItem(type: 'event', localizedTitle: '代表者あいさつ', icon: 'login.png'),
      ShortcutItem(
          type: 'message', localizedTitle: '企業方針', icon: 'settings.png'),
      ShortcutItem(
          type: 'search', localizedTitle: '決算', icon: 'searchings.png'),
    ]);
    quickActions.initialize((type) {
      if (type == 'event') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => EventPage()));
      } else if (type == 'message') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MessagePage()));
      } else if (type == 'search') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SearchPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quick Actions"),
        centerTitle: true,
      ),
    );
  }
}
