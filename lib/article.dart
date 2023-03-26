
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 import './screens/home.dart';
class article extends StatefulWidget {
  const article({Key ? key }):super(key: key);

  @override
  _articleState createState() => _articleState();
}

class _articleState extends State<article> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: Home(),
    );

  }
}