import 'package:flutter/material.dart';
import 'package:soccerstars/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soccer Stars',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailsScreen(),
      },
      theme: ThemeData.light().copyWith(
          //al poner el copywith, puedo añadir al tema light las preferencias que yo quiera
          appBarTheme: AppBarTheme(color: Colors.green)),
    );
  }
}
