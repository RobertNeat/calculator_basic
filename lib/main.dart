import 'package:flutter/material.dart';
import 'styles/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //static final ValueNotifier<ThemeMode> themeNotifier =
  //    ValueNotifier(ThemeMode.light);

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
  String _number =
      ""; //dodawanie cyfr do końca liczby (to się wyświetla na ekranie)
  double _outcome = 0;
  int _operation =
      0; //jakiś switch będzie przy "=" który w zależności od wyboru wykona daną operację
  //jeszcze jakaś zmienna od której będzie zależała operacja jaka się wykona

  void reset_calc() {
    setState(() {
      _number = "";
      _outcome = 0;
    });
  }

  void backspace_calc() {
    setState(() {
      if (_number.isNotEmpty) {
        _number = _number.substring(0, _number.length - 1);
      }
    });
  }

  void push_zero() {
    setState(() {});
  }

  void push_one() {
    setState(() {});
  }

  void push_two() {
    setState(() {});
  }

  void push_three() {
    setState(() {});
  }

  void push_four() {
    setState(() {});
  }

  void push_five() {
    setState(() {});
  }

  void push_six() {
    setState(() {});
  }

  void push_seven() {
    setState(() {});
  }

  void push_eight() {
    setState(() {});
  }

  void push_nine() {
    setState(() {});
  }

  void push_dot() {
    setState(() {});
  }
  /*
  Schemat działania kalkulatora:
  - zapis liczby pierwszej (dodanie na koniec ciągu znakowego _number wpisanej cyfry)
  - działanie (konwersja liczby pierwszej do liczby zmiennoprzecinkowej i zapis do zmiennej _outcome), wpisanie do zmiennej _operation cyfry w zależności od której będzie wykonana operacja
  - wynik (konwersja drugiego ciągu znaków do liczby, i jakiś switch który wykonuje odpowiednią operację, aktualizacja wyświetlacza)
   */

  @override
  Widget build(BuildContext context) {
    const double padding_button = 4.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_number',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_long,
                      onPressed: () {},
                      child: Icon(Icons.refresh)),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_long,
                      onPressed: () {},
                      child: Icon(Icons.backspace)),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("+")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("7")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("8")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("9")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("-")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("4")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("5")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("6")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("X")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("1")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("2")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("3")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text(":")),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text("0")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: () {},
                      child: Text(".")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_very_long,
                      onPressed: () {},
                      child: Text("=")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
