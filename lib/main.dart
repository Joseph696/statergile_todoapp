import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:statergile_todoapp/darkmode.dart';
import 'package:statergile_todoapp/homepage.dart';
import 'package:statergile_todoapp/theme_provider.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      darkTheme: darkMode,
      theme: Provider.of<ThemeProvider>(context).themeData,
      // ThemeData(
      //   textTheme:
      //   TextTheme(
      //     displayLarge: TextStyle(
      //       color: Colors.black,
      //       fontSize: 45,
      //       fontWeight: FontWeight.bold
      //     ),
      //     titleMedium: TextStyle(
      //       color: Colors.grey,
      //       fontSize: 16,
      //       fontWeight: FontWeight.w300
      //     ),
      //     displayMedium: TextStyle(
      //       color: Colors.white,
      //       fontSize: 21
      //     ),
      //     displaySmall: TextStyle(
      //       color: Colors.black,
      //       fontSize: 14,
      //       fontWeight: FontWeight.w400,

      //     ),
      //     headlineMedium: TextStyle(
      //       fontSize: 17,
      //       color: Colors.grey
      //     ),
      //     headlineSmall: TextStyle(
      //       color: Colors.black,
      //       fontWeight: FontWeight.w500
      //     ),
      //     titleSmall: TextStyle(
      //       color: Colors.black,
      //       fontWeight: FontWeight.w500
      //     )
      //   ),
      //   primarySwatch: Colors.deepPurple

      //),
      home: Homepage(),
    );
  }
}
