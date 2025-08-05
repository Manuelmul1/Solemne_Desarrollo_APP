import 'package:flutter/material.dart';

class NosotrosPage extends StatelessWidget {
  const NosotrosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nosotros'), backgroundColor: Colors.orange),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'En Jennys elaboramos productos saludables, sin azúcar y 100% integrales, pensando en personas con diabetes o que desean mantener una alimentación equilibrada.',
          style: TextStyle(fontSize: 16, height: 1.4),
        ),
      ),
    );
  }
}
