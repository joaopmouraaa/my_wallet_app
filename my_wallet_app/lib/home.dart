import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Wallet',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Saldo Total e Receitas/Gastos
            Card(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Saldo Total',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'R\$ 25,000.40',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Gastos',
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                            Text('-R\$ 500.00',
                                style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              'Recebidos',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16),
                            ),
                            Text('+R\$ 700.00',
                                style: TextStyle(color: Colors.green)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.grey,
                      color: Colors.green,
                    ),
                    const SizedBox(height: 8),
                    const Text('Meta Pessoal: R\$ 2,000.00'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Histórico do dia
            const Text(
              'Hoje',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.fastfood, color: Colors.orange),
                    title: Text('Comida'),
                    trailing: Text('-R\$ 100.00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_bag, color: Colors.blue),
                    title: Text('Vestuário'),
                    trailing: Text('-R\$ 200.00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.green),
                    title: Text('Aluguel'),
                    trailing: Text('-R\$ 900.00'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFF1BF06),
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Histórico',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Metas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Estatísticas',
          ),
        ],
      ),
    );
  }
}
