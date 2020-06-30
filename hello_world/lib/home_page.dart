/* import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 0;
  void _onLongPress() {
    print('Clicou long');
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GestureDetector(
          child: Center(
            child: Text(
              'Você clicou $_contador vez(es)',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          onTap: () {
            print('clicou Tap');
            setState(() {
              _contador++;
            });
          },
          onLongPress: _onLongPress,
        ));
  }
} */

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _calc = 1;

  void _clicarLongPress() {
    setState(() {
      _calc = 1;
    });
  }

  void _clicarOnTap() {
    setState(() {
      _calc = _calc++ * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My first app")),
      body: GestureDetector(
        child: Center(
          child: Text(
            'calc $_calc',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        onTap: _clicarOnTap,
        onLongPress: _clicarLongPress,
      ),
    );
  }
}
