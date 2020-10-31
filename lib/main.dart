import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/routes/routes.dart';

import 'package:componentes/src/pages/alert_page.dart';
// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: [
        const Locale('en', 'US'), // American English
        const Locale('es', 'ES'), // Espanish
        // ...
      ],
      title: 'Componentes App',
      // home: HomePage());

      // definimos rutas
      initialRoute: '/',
      routes: getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
