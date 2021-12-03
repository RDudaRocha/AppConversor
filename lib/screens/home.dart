import 'package:conversores/Useful/colorpalette.dart';
import 'package:conversores/Useful/header.dart';
import 'package:conversores/screens/length.dart';
import 'package:conversores/screens/temperature.dart';
import 'package:conversores/screens/time.dart';
import 'package:conversores/screens/volume.dart';
import 'package:conversores/screens/weight.dart';
import 'package:flutter/material.dart';

import 'currency.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:  ColorPalette.corPrimaria,
        appBar: AppBar(
          centerTitle: true,
          title: const Header(),
      ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: SizedBox.fromSize(
                size: const Size(100, 100),
                child: Material(  // button pressed
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Temperature()),
                      );
                    },
                    child: SizedBox.fromSize(
                      child: Material(  // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              'assets/temperature.png',
                              fit: BoxFit.contain,
                              height: 80,
                            ),// icon
                            const Text(
                              "Temperatura",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                              ),
                            ),// text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: SizedBox.fromSize(
                size: const Size(100, 100),
                child: Material(  // button pressed
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Weight()),
                      );
                    },
                    child: SizedBox.fromSize(
                      child: Material(  // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              'assets/law.png',
                              fit: BoxFit.contain,
                              height: 80,
                            ),// icon
                            const Text(
                              "Peso",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),// text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: SizedBox.fromSize(
                size: const Size(100, 100),
                child: Material(  // button pressed
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Length()),
                      );
                    },
                    child: SizedBox.fromSize(
                      child: Material(  // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              'assets/length.png',
                              fit: BoxFit.contain,
                              height: 80,
                            ),// icon
                            const Text(
                              "Comprimento",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),// text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: SizedBox.fromSize(
                size: const Size(100, 100),
                child: Material(  // button pressed
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Volume()),
                      );
                    },
                    child: SizedBox.fromSize(
                      child: Material(  // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              'assets/volume.png',
                              fit: BoxFit.contain,
                              height: 80,
                            ),// icon
                            const Text(
                              "Volume",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),// text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: SizedBox.fromSize(
                size: const Size(100, 100),
                child: Material(  // button pressed
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Time()),
                      );
                    },
                    child: SizedBox.fromSize(
                      child: Material(  // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              'assets/hourglass.png',
                              fit: BoxFit.contain,
                              height: 80,
                            ),// icon
                            const Text(
                              "Tempo",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),// text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: SizedBox.fromSize(
                size: const Size(100, 100),
                child: Material(  // button pressed
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Currency()),
                      );
                    },
                    child: SizedBox.fromSize(
                      child: Material(  // button pressed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset(
                              'assets/forex.png',
                              fit: BoxFit.contain,
                              height: 80,
                            ),// icon
                            const Text(
                              "Moeda",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),// text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              color: Colors.white,
            ),
          ],
        )
    );
  }
}
