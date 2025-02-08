import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:learn_ar_flutter/starting_page.dart';



main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        textTheme: TextTheme(
            bodyLarge: TextStyle(color: Colors.deepPurple, fontSize: 50),
            displaySmall: TextStyle(color: Colors.white, fontSize: 25)),
        dialogTheme: DialogTheme(
          backgroundColor: Colors.deepPurple,
          contentTextStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        scaffoldBackgroundColor: Colors.white, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      ),
      home: StartingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
