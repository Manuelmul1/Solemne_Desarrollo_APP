import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png', height: 60),
                  const SizedBox(height: 10),
                  _menuItem(context, 'INICIO', '/'),
                  _menuItem(context, 'NOSOTROS', '/nosotros'),
                  _menuItem(context, 'PRODUCTOS', '/productos'),
                  _menuItem(context, 'UBICACIÓN DE CLIENTES', '/ubicacion'),
                  _menuItem(context, 'REDES SOCIALES', '/redes'),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/images/fondo-mujer.jpg',
                    fit: BoxFit.cover, width: double.infinity, height: 350),
                Container(width: double.infinity, height: 350, color: Colors.black.withOpacity(0.5)),
                Positioned(
                  left: 20, right: 20, top: 80,
                  child: Column(
                    children: [
                      const Text(
                        'Productos sin azúcar, 100% integrales y frescos',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, height: 1.4),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Vende Jennys en tu local y ofrece bienestar a tus clientes.',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () { Navigator.pushNamed(context, '/productos'); },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
                        child: const Text('Quiero ser distribuidor', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _menuItem(BuildContext context, String text, String route) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
