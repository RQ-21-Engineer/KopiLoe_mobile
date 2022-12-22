import 'package:flutter/material.dart';
import 'package:kopiloe_android/pages/home_page.dart';

void main() {
  runApp(KopiloeApp());
}

class KopiloeApp extends StatelessWidget {
  const KopiloeApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
    );
  }
}