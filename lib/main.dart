import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/Contact.dart';
import 'package:flutter_project/Pages/Homepage.dart';
import 'package:flutter_project/Pages/Login.dart';
import 'package:flutter_project/Pages/Profile.dart';

void main(List<String> args) {
  runApp(const MyRouteApp());
}

class MyRouteApp extends StatelessWidget {
  const MyRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Inconsolata',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/homepage': (context) => const Homepage(),
        '/profile': (context) => const Profile(),
        '/contact': (context) => const Contact()
      },
    );
  }
}
