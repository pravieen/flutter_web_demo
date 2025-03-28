import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Web Responsive UI')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Web Layout
            return Center(
              child: Text('This is a Web Layout', style: TextStyle(fontSize: 30)),
            );
          } else {
            // Mobile Layout
            return Center(
              child: Text('This is a Mobile Layout', style: TextStyle(fontSize: 20)),
            );
          }
        },
      ),
    );
  }
}

