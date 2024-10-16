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
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo Total',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'R\$ 25,000.40',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Gastos',
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                            Text('-R\$ 500.00',
                                style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        Column(
                          children: [
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
                    SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: 0.5,
                      backgroundColor: Colors.grey,
                      color: Colors.green,
                    ),
                    SizedBox(height: 8),
                    Text('Meta Pessoal: R\$ 2,000.00'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Seção de Metas Financeiras Visuais
            const Text(
              'Metas Financeiras',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildGoalCard(
                      'Iphone 13 Mini', 0.5, Colors.red, 'R\$300 de R\$6999'),
                  buildGoalCard(
                      'Macbook Pro M1', 0.6, Colors.pink, 'R\$300 de R\$1499'),
                  buildGoalCard(
                      'Carro', 0.8, Colors.yellow, 'R\$10,000 de R\$20,000'),
                  buildGoalCard(
                      'Casa', 0.5, Colors.blue, 'R\$65,000 de R\$130,500'),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Resumo das Despesas Recentes
            const Text(
              'Despesas Recentes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.fastfood, color: Colors.orange),
                    title: Text('Comida'),
                    subtitle: Text('12/10/2024'),
                    trailing: Text('-R\$ 100.00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_bag, color: Colors.blue),
                    title: Text('Vestuário'),
                    subtitle: Text('11/10/2024'),
                    trailing: Text('-R\$ 200.00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.green),
                    title: Text('Aluguel'),
                    subtitle: Text('10/10/2024'),
                    trailing: Text('-R\$ 900.00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_gas_station, color: Colors.red),
                    title: Text('Combustível'),
                    subtitle: Text('09/10/2024'),
                    trailing: Text('-R\$ 150.00'),
                  ),
                  ListTile(
                    leading: Icon(Icons.movie, color: Colors.purple),
                    title: Text('Cinema'),
                    subtitle: Text('08/10/2024'),
                    trailing: Text('-R\$ 50.00'),
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

  // Função para construir os cartões de metas
  Widget buildGoalCard(
      String title, double progress, Color color, String balance) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            balance,
            style: TextStyle(color: color),
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[300],
            color: color,
          ),
        ],
      ),
    );
  }
}
