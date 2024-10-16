import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1BF06),
        elevation: 0,
        title: const Text(
          'Perfil',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Informações do usuário
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), // Placeholder para imagem de perfil
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'João Moura',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'joao.moura@email.com',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Opções de configurações
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.blue),
              title: Text('Editar Perfil'),
              onTap: () {
                // Navegar para página de edição de perfil
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.green),
              title: Text('Notificações'),
              onTap: () {
                // Navegar para configurações de notificações
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock, color: Colors.red),
              title: Text('Segurança e Privacidade'),
              onTap: () {
                // Navegar para configurações de segurança
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.payment, color: Colors.purple),
              title: Text('Informações Financeiras'),
              onTap: () {
                // Navegar para métodos de pagamento
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help, color: Colors.orange),
              title: Text('Ajuda e Suporte'),
              onTap: () {
                // Navegar para ajuda e suporte
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info, color: Colors.teal),
              title: Text('Sobre o App'),
              onTap: () {
                // Navegar para informações sobre o app
              },
            ),
            Divider(),
            // Botão de logout
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Ação para logout
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Logout'),
                ),
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
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
