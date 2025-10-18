import 'package:flutter/material.dart';
import 'package:flutter_application_1/Basket.dart';
import 'package:flutter_application_1/app_drawer.dart';
import 'profile_page.dart';
import 'package:flutter_application_1/NewsstandPage.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoodie Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Montserrat',
      ),
      home: const MyHomePage(title: 'Hoodie Shop Home'),
      routes: {
        '/shop': (context) => Shop(),
        '/newsstand': (context) => const NewsstandPage(),
        '/info': (context) => const Info(),
        '/profile': (context) => ProfilePage(),
        '/basket': (context) => const BasketPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(121, 50, 168, 172),

        elevation: 5,
      ),
      drawer: const AppDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 141, 213, 249), 
              Color.fromARGB(255, 9, 130, 250), 
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.shopping_bag_rounded, color: Colors.white, size: 90),
              SizedBox(height: 20),
              Text(
                'Welcome to Hoodie Shop!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Find your perfect hoodie today.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
