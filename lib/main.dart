import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.pink.shade200, Colors.yellow.shade700],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/logo.png'),
                SizedBox(
                  height: 100,
                ),
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('id'),
                  fillColor: Colors.white,
                  filled: true,
                )),
                SizedBox(
                  height: 50,
                ),
                TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('password'),
                  fillColor: Colors.white,
                  filled: true,
                )),
                SizedBox(
                  height: 100,
                ),
                OutlinedButton(
                  child: const Text('ログイン'),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(400, 40),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(color: Colors.white, width: 3.0),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
