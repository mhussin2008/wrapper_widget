import 'package:flutter/material.dart';
import 'test_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: //AppBar(title: Text('welcome'),)

        body: TestScreen()
      
      ),
    );
  }
}
