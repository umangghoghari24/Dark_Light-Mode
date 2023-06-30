import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

 bool _iconbool = false;

// Theme icon

 IconData _iconLight = Icons.wb_sunny;
 IconData _iconDark = Icons.nights_stay;

 // Light and Dark theme color

 ThemeData _LightTheme = ThemeData(
   primarySwatch: Colors.amber,
   brightness: Brightness.light
 );

ThemeData _DarkTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
);



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconbool ? _DarkTheme : _LightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Click To Icon')),
          actions: [
            IconButton(onPressed: () {
              setState(() {
                _iconbool = !_iconbool;
              });
            },
                icon: Icon(_iconbool ? _iconDark : _iconLight))
          ],
        ),
        body: Center(
          child: ElevatedButton(onPressed: () {},
              child: Text('Hello Flutter')),
        ),
      )
    );
  }
}
