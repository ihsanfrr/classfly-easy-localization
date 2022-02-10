import 'package:classfly/screens/classfly_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('id', 'ID'),
      Locale('en', 'US'),
      Locale('es', 'ES'),
    ],
    path: 'assets/lang',
    fallbackLocale: const Locale('id', 'ID'),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Ihsanfrr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClassFlyScreen(),
    );
  }
}
