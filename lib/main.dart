import 'package:flutter/material.dart';
import 'package:flutter_demo/concepts/splash_screen.dart';
import 'package:flutter_demo/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'calSans',
        textTheme: TextTheme(
          displayLarge:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          displayMedium:TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w100) ,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splash_screen(),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: ()
              {

              },
              child: null,

            ),
          ),
        ],
      ),
    );
  }
}
