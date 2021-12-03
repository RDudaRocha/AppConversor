import 'package:conversores/Useful/colorpalette.dart';
import 'package:conversores/Useful/header.dart';
import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {

  String _answer = '0';

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
        child:SafeArea(
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
                        hintText: 'Quilogramas',
                        labelText: 'Quilogramas',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          calculatePounds(text);
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
                        hintText: 'Libras',
                        hintStyle: TextStyle(
                            color: ColorPalette.corFundo2,
                            fontWeight: FontWeight.bold
                        ),
                        labelText: 'Libras',
                      ),
                      onChanged: (text) {
                        if(text.isNotEmpty){
                          calculateKilograms(text);
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

  void calculatePounds(String text) {
    setState(() {
      _answer = (double.parse(text) * 2.20462).toStringAsFixed(2) + " Libras";
    });
  }

  void calculateKilograms(String text) {
    setState(() {
      _answer = (double.parse(text) * 0.453592).toStringAsFixed(2) + " Quilogramas";
    });
  }

}
