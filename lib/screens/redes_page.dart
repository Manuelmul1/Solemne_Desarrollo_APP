import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RedesPage extends StatelessWidget {
  const RedesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Redes Sociales'), backgroundColor: Colors.orange),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.facebook, color: Colors.blue),
            title: const Text('Facebook'),
            onTap: () async {
              final Uri url = Uri.parse('https://facebook.com');
              if (await canLaunchUrl(url)) await launchUrl(url);
            },
          ),
          ListTile(
            leading: const Icon(Icons.camera_alt, color: Colors.purple),
            title: const Text('Instagram'),
            onTap: () async {
              final Uri url = Uri.parse('https://instagram.com');
              if (await canLaunchUrl(url)) await launchUrl(url);
            },
          ),
        ],
      ),
    );
  }
}
