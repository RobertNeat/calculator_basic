import 'package:flutter/material.dart';
import 'styles/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.refresh),
                    label: Text("clear")),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.backspace),
                    label: Text("backspace")),
                ElevatedButton(onPressed: () {}, child: Text("+")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("7")),
                ElevatedButton(onPressed: () {}, child: Text("8")),
                ElevatedButton(onPressed: () {}, child: Text("9")),
                ElevatedButton(onPressed: () {}, child: Text("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("4")),
                ElevatedButton(onPressed: () {}, child: Text("5")),
                ElevatedButton(onPressed: () {}, child: Text("6")),
                ElevatedButton(onPressed: () {}, child: Text("X")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("1")),
                ElevatedButton(onPressed: () {}, child: Text("2")),
                ElevatedButton(onPressed: () {}, child: Text("3")),
                ElevatedButton(onPressed: () {}, child: Text(":")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("0")),
                ElevatedButton(onPressed: () {}, child: Text(".")),
                ElevatedButton(onPressed: () {}, child: Text("=")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//equal 
/*
Icon(
  Icons.drag_handle_outlined,
),
 */
//https://api.flutter.dev/flutter/material/IconButton-class.html

