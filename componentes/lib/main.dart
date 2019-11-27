import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      //home: new HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      // cuando no se encuentra una ruta
      onGenerateRoute: (RouteSettings settings) {
        print('ruta no encontrada: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
