import 'package:conversores/Useful/colorpalette.dart';
import 'package:conversores/Useful/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Temperature extends StatefulWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {

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
                      hintText: 'Celsius',
                      hintStyle: TextStyle(
                          color: ColorPalette.corFundo2,
                          fontWeight: FontWeight.bold
                      ),
                      labelText: 'Celsius',
                    ),
                    onChanged: (text) {
                      if(text.isNotEmpty){
                        CelsiusToFahrenheit(text);
                        CelsiusToKelvin(text);
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
                      hintText: 'Fahrenheit',
                      hintStyle: TextStyle(
                          color: ColorPalette.corFundo2,
                          fontWeight: FontWeight.bold
                      ),
                      labelText: 'Fahrenheit',
                    ),
                    onChanged: (text) {
                      if(text.isNotEmpty){
                        FahrenheitToCelsius(text);
                        FahrenheitToKelvin(text);
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
                      hintText: 'Kelvin',
                      hintStyle: TextStyle(
                          color: ColorPalette.corFundo2,
                          fontWeight: FontWeight.bold
                      ),
                      labelText: 'Kelvin',
                    ),
                    onChanged: (text) {
                      if(text.isNotEmpty){
                        KelvinToCelsius(text);
                        KelvinToFahrenheit(text);
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

  void CelsiusToFahrenheit(String text) {
    setState(() {
      _answer = ((double.parse(text) * 9/5) + 32).toStringAsFixed(2) + " Fahrenheit";
    });
  }

  void CelsiusToKelvin(String text) {
    setState(() {
      _answer1 = (double.parse(text) + 273.15).toStringAsFixed(2) + " Kelvin";
    });
  }

  void FahrenheitToCelsius(String text) {
    setState(() {
      _answer = ((double.parse(text) - 32) * 5/9).toStringAsFixed(2) + " Celsius";
    });
  }

  void FahrenheitToKelvin(String text) {
    setState(() {
      _answer1 = ((double.parse(text) - 32) * 5/9 + 273.15).toStringAsFixed(2) + " Kelvin";
    });
  }

  void KelvinToCelsius(String text) {
    setState(() {
      _answer = (double.parse(text) - 273.15).toStringAsFixed(2) + " Celsius";
    });
  }

  void KelvinToFahrenheit(String text) {
    setState(() {
      _answer1 = ((double.parse(text) - 273.15) * 9/5 + 32).toStringAsFixed(2) + " Fahrenheit";
    });
  }
}