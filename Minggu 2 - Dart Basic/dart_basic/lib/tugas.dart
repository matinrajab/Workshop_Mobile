import 'dart:ffi';

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

  bool _isPrima(int num){
    if(num <= 1){
      return false;
    }
    for(int i = 2; i < num; i++){
      if(num % i == 0){
        return false;
      }
    }
    return true;
  }

  void _deretPrima(){
    _text = "";
    for(int i = 1; i <= _number; i++){
      if(_isPrima(i)){
        _text += '${i}, ';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tugas"),
        ),
        body: Container(
          margin: EdgeInsets.all(25),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextField(
                    onChanged: (value){
                      setState(() {
                        _text = "";
                        _number = int.parse(value);
                        _deretPrima();
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      labelText: "Masukkan bilangan",
                    ),
                    controller: _controller,
                  ),
                  Text('Bilangan prima dari 1 sampai ${_controller.text} :'),
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
