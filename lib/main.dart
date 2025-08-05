import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/productos_page.dart';
import 'screens/nosotros_page.dart';
import 'screens/ubicacion_page.dart';
import 'screens/redes_page.dart';

void main() {
  runApp(const JennysApp());
}

class JennysApp extends StatelessWidget {
  const JennysApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jennys',
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/productos': (context) => const ProductosPage(),
        '/nosotros': (context) => const NosotrosPage(),
        '/ubicacion': (context) => const UbicacionPage(),
        '/redes': (context) => const RedesPage(),
      },
    );
  }
}
