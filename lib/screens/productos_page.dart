import 'package:flutter/material.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos'), backgroundColor: Colors.orange),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ProductCard(image: 'assets/images/galletas.jpg',
              title: 'Galletas integrales sin azúcar',
              description: 'Crujientes, saludables y con bajo índice glicémico.'),
          SizedBox(height: 16),
          ProductCard(image: 'assets/images/galleton.jpg',
              title: 'Galletones de avena',
              description: 'Suaves, nutritivos y perfectos para diabéticos.'),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image, title, description;
  const ProductCard({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
