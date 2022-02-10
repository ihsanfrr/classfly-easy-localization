import 'package:classfly/screens/classfly_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ihsanfrr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClassFlyScreen(),
    );
  }
}
