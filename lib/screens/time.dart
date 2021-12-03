import 'package:conversores/Useful/colorpalette.dart';
import 'package:conversores/Useful/header.dart';
import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {

  String _answer = '0';
  String _answer1 = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(),
      ),
      backgroundColor: ColorPalette.corPrimaria,
      body: GestureDetector(
        onTap: () {
          // call this method here to hide soft keyboard
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      _answer,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      _answer1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                            color: ColorPalette.corSecundaria,
                            fontWeight: FontWeight.bold
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorPalette.corDestaque, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorPalette.corDestaque, width: 1.0),
                        ),
                        hintText: 'Hora',
                        hintStyle: TextStyle(
                            color: ColorPalette.corFundo2,
                            fontWeight: FontWeight.bold
                        ),
                        labelText: 'Hora',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          HoraToMinuto(text);
                          HoraToSegundo(text);
                        } else {
                          setState(() {
                            _answer = '0';
                          });
                        }
                      } ,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                            color: ColorPalette.corSecundaria,
                            fontWeight: FontWeight.bold
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorPalette.corDestaque, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorPalette.corDestaque, width: 1.0),
                        ),
                        hintText: 'Minuto',
                        hintStyle: TextStyle(
                            color: ColorPalette.corFundo2,
                            fontWeight: FontWeight.bold
                        ),
                        labelText: 'Minuto',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          MinutoToHora(text);
                          MinutoToSegundo(text);
                        } else {
                          setState(() {
                            _answer = '0';
                          });
                        }
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                            color: ColorPalette.corSecundaria,
                            fontWeight: FontWeight.bold
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorPalette.corDestaque, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorPalette.corDestaque, width: 1.0),
                        ),
                        hintText: 'Segundo',
                        hintStyle: TextStyle(
                            color: ColorPalette.corFundo2,
                            fontWeight: FontWeight.bold
                        ),
                        labelText: 'Segundo',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          SegundoToHora(text);
                          SegundoToMinuto(text);
                        } else {
                          setState(() {
                            _answer = '0';
                          });
                        }
                      },
                    ),
                  ],
                )
            ),
          ),
        ),
      )
    );
  }

  void HoraToMinuto(String text) {
    setState(() {
      _answer = (double.parse(text) * 60).toStringAsFixed(2) + " Minuto";
    });
  }

  void HoraToSegundo(String text) {
    setState(() {
      _answer1 = (double.parse(text) * 3600).toStringAsFixed(2) + " Segundo";
    });
  }

  void MinutoToHora(String text) {
    setState(() {
      _answer = (double.parse(text) / 60).toStringAsFixed(2) + " Hora";
    });
  }

  void MinutoToSegundo(String text) {
    setState(() {
      _answer1 = (double.parse(text) * 60).toStringAsFixed(2) + " Segundo";
    });
  }

  void SegundoToHora(String text) {
    setState(() {
      _answer = (double.parse(text) / 3600).toStringAsFixed(2) + " Hora";
    });
  }

  void SegundoToMinuto(String text) {
    setState(() {
      _answer1 = (double.parse(text) / 60).toStringAsFixed(2) + " Minuto";
    });
  }
}