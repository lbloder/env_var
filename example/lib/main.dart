import 'package:example/app_config.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EnvVarGen Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class DemoPage extends StatelessWidget {
  final String title;
  DemoPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
    ),
    body: Padding(
      padding: EdgeInsets.all(8),
      child: Center(
        child: Text("myPath: ${myPath}"),
      ),
    )
    );
  }
}
