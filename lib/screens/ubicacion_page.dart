import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UbicacionPage extends StatelessWidget {
  const UbicacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ubicación de Clientes'), backgroundColor: Colors.orange),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final Uri url = Uri.parse('https://www.google.com/maps');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            }
          },
          child: const Text('Ver en Google Maps'),
        ),
      ),
    );
  }
}
