import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = TextEditingController();
  String _text = "";
  int _number = 0;

  void _genap() {
    for (int i = 1; i <= _number; i++) {
      if (i % 2 == 0 && i % 3 == 0) {
        _text += '${i}, ';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan"),
        ),
        body: Container(
          margin: EdgeInsets.all(25),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        _text = "";
                        _number = int.parse(value);
                        _genap();
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: "Masukkan bilangan",
                    ),
                    controller: _controller,
                  ),
                  Text('Bilangan genap kelipatan 3 dari 1 sampai ${_controller.text} :'),
                  Text(_text),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
