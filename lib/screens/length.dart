import 'package:conversores/Useful/colorpalette.dart';
import 'package:conversores/Useful/header.dart';
import 'package:flutter/material.dart';

class Length extends StatefulWidget {
  @override
  _LengthState createState() => _LengthState();

  const Length({Key? key,}) : super(key: key);
}

class _LengthState extends State<Length> {

  String _answer = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(),
      ),
      backgroundColor: ColorPalette.corPrimaria,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 100.0,
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
                      hintStyle: TextStyle(
                          color: ColorPalette.corFundo2,
                          fontWeight: FontWeight.bold
                      ),
                      hintText: 'Polegadas',
                      labelText: 'Polegadas',
                    ),
                    onChanged: (text) {
                      if(text.isNotEmpty){
                        calculateCentimeters(text);
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
                      hintStyle: TextStyle(
                          color: ColorPalette.corFundo2,
                          fontWeight: FontWeight.bold
                      ),
                      hintText: 'Centimetros',
                      labelText: 'Centimetros',
                    ),
                    onChanged: (text) {
                      if(text.isNotEmpty){
                        calculateInches(text);
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
    );
  }

  void calculateInches(String text) {
    setState(() {
      _answer = (double.parse(text) * 0.393701).toStringAsFixed(2) + " Polegadas";
    });
  }

  void calculateCentimeters(String text) {
    setState(() {
      _answer = (double.parse(text) * 2.54).toStringAsFixed(2) + " Centimetros";
    });
  }
}