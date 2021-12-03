import 'package:flutter/material.dart';

import 'colorpalette.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain,
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "CONVERSORES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.corDestaque,
                  fontSize: 20,
                ),
              )
          ),
        ],
      ),
    );
  }
}
