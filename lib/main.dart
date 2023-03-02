import 'package:flutter/material.dart';
import 'styles/button.dart';
//do laoutu można by zastosować gridview (taka tabela z elementami)

//fajna jest też opcja elementu SilverList (taki pojemnik scrolowalny na różne elementy) na gridy i na listy

//fajne kalkulatory

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false, // Remove the debug banner
            title: 'Flutter demo',
            theme: ThemeData(primarySwatch: Colors.blue), //ThemeData.dark()
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: const MyHomePage(title: 'Calculator'),
          );
        });
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
      '0'; //dodawanie cyfr do końca liczby (to się wyświetla na ekranie)
  double _outcome = 0;
  int _operation =
      0; //jakiś switch będzie przy "=" który w zależności od wyboru wykona daną operację
  //jeszcze jakaś zmienna od której będzie zależała operacja jaka się wykona
  bool _first_pushbutton = true;
  bool _dot_not_pushed = true;

  void reset_calc() {
    setState(() {
      _number = '0';
      _outcome = 0;
      _operation = 0;
      _first_pushbutton = true;
      _dot_not_pushed = true;
    });
  }

  void backspace_calc() {
    setState(() {
      //sprawdzanie czy kropka została usunięta i jeśli tak to zmienić odpowiednią zmienn ą logiczną
      if (_number.isNotEmpty) {
        if (_number[_number.length - 1] == '.') {
          _dot_not_pushed = true;
        }
        _number = _number.substring(0, _number.length - 1);
      }
    });
  }

  void clear_display() {
    setState(() {
      _number = "";
      _first_pushbutton = true;
      _dot_not_pushed = true;
    });
  }

  void push_dot() {
    setState(() {
      if ((!(_first_pushbutton)) && _dot_not_pushed) {
        _number += '.';
        _dot_not_pushed = false;
      }
    });
  }

  void push_number(String value) {
    setState(() {
      if (_first_pushbutton) {
        clear_display();
        _number += value;
        _first_pushbutton = false;
      } else {
        _number += value;
      }
    });
  }

  void push_zero() {
    push_number('0');
  }

  void push_one() {
    push_number('1');
  }

  void push_two() {
    push_number('2');
  }

  void push_three() {
    push_number('3');
  }

  void push_four() {
    push_number('4');
  }

  void push_five() {
    push_number('5');
  }

  void push_six() {
    push_number('6');
  }

  void push_seven() {
    push_number('7');
  }

  void push_eight() {
    push_number('8');
  }

  void push_nine() {
    push_number('9');
  }

  /*
  Schemat działania kalkulatora:
  - zapis liczby pierwszej (dodanie na koniec ciągu znakowego _number wpisanej cyfry)
  - działanie (konwersja liczby pierwszej do liczby zmiennoprzecinkowej i zapis do zmiennej _outcome), wpisanie do zmiennej _operation cyfry w zależności od której będzie wykonana operacja
  - wynik (konwersja drugiego ciągu znaków do liczby, i jakiś switch który wykonuje odpowiednią operację, aktualizacja wyświetlacza)

  *ograniczyć długość liczby wpisywanej
  jednokrotne wykorzystnie kropki
   */

  @override
  Widget build(BuildContext context) {
    const double padding_button = 2.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                ? Icons.dark_mode
                : Icons.light_mode),
            onPressed: () {
              MyApp.themeNotifier.value =
                  MyApp.themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _number, //$_number
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_long,
                      onPressed: reset_calc,
                      child: Icon(Icons.refresh)),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_long,
                      onPressed: backspace_calc,
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
                      onPressed: push_seven,
                      child: Text("7")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: push_eight,
                      child: Text("8")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: push_nine,
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
                      onPressed: push_four,
                      child: Text("4")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: push_five,
                      child: Text("5")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: push_six,
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
                      onPressed: push_one,
                      child: Text("1")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: push_two,
                      child: Text("2")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: push_three,
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
                      onPressed: push_zero,
                      child: Text("0")),
                ),
                Padding(
                  padding: const EdgeInsets.all(padding_button),
                  child: ElevatedButton(
                      style: buttonPrimary_short,
                      onPressed: push_dot,
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
