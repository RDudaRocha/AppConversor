import 'package:conversores/Useful/colorpalette.dart';
import 'package:conversores/Useful/header.dart';
import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {

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
                        hintText: 'Real',
                        hintStyle: TextStyle(
                            color: ColorPalette.corFundo2,
                            fontWeight: FontWeight.bold
                        ),
                        labelText: 'Real',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          RealToDolar(text);
                          RealToEuro(text);
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
                        hintText: 'Dolar',
                        hintStyle: TextStyle(
                            color: ColorPalette.corFundo2,
                            fontWeight: FontWeight.bold
                        ),
                        labelText: 'Dolar',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          DolarToReal(text);
                          DolarToEuro(text);
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
                        hintText: 'Euro',
                        hintStyle: TextStyle(
                            color: ColorPalette.corFundo2,
                            fontWeight: FontWeight.bold
                        ),
                        labelText: 'Euro',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          EuroToReal(text);
                          EuroToDolar(text);
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

  void RealToDolar(String text) {
    setState(() {
      _answer = (double.parse(text) * 5.64).toStringAsFixed(2) + " Dolar";
    });
  }

  void RealToEuro(String text) {
    setState(() {
      _answer1 = (double.parse(text) * 6.36).toStringAsFixed(2) + " Euro";
    });
  }

  void DolarToReal(String text) {
    setState(() {
      _answer = (double.parse(text) * 0.18).toStringAsFixed(2) + " Real";
    });
  }

  void DolarToEuro(String text) {
    setState(() {
      _answer1 = (double.parse(text) * 1.13).toStringAsFixed(2) + " Euro";
    });
  }

  void EuroToReal(String text) {
    setState(() {
      _answer = (double.parse(text) * 0.16).toStringAsFixed(2) + " Real";
    });
  }

  void EuroToDolar(String text) {
    setState(() {
      _answer1 = (double.parse(text) * 0.89).toStringAsFixed(2) + " Dolar";
    });
  }
}