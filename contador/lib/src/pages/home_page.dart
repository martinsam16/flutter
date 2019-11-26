import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}
