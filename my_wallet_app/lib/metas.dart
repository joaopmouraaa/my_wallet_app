import 'package:flutter/material.dart';

class MetasScreen extends StatelessWidget {
  const MetasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Metas',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildMetaCard(
                'Iphone 13 Mini', 'R\$300 de R\$6999', 0.5, Colors.red, 14),
            buildMetaCard(
                'Macbook Pro M1', 'R\$300 de R\$1499', 0.6, Colors.pink, 30),
            buildMetaCard(
                'Carro', 'R\$10,000 de R\$20,000', 0.5, Colors.yellow, 30),
            buildMetaCard(
                'Casa', 'R\$65,000 de R\$130,500', 0.5, Colors.blue, 60),
          ],
        ),
      ),
    );
  }

  Widget buildMetaCard(String title, String balance, double progress,
      Color color, int daysLeft) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              balance,
              style: TextStyle(color: color, fontSize: 18),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              color: color,
            ),
            const SizedBox(height: 8),
            Text('$daysLeft dias restantes'),
          ],
        ),
      ),
    );
  }
}
