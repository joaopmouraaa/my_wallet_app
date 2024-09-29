import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1BF06), // Cor de fundo do AppBar
        title: const Text('Login',
            style: TextStyle(color: Colors.black)), // Cor preta no título
      ),
      body: Center(
        // Centraliza tudo horizontalmente e verticalmente
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.center, // Garante centralização horizontal
            children: [
              // Logo JPG com tamanho maior
              Image.asset(
                'assets/logo.png', // Certifique-se de que o caminho está correto
                height: 200, // Aumenta o tamanho da logo
                width: 200,
              ),
              const SizedBox(height: 40),

              // Campo de Email com tamanho fixo
              SizedBox(
                width: 150,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle:
                        const TextStyle(color: Colors.black), // Texto preto
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black), // Borda preta
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFFF1BF06)), // Borda amarela ao focar
                    ),
                  ),
                  style: const TextStyle(
                      color: Colors.black), // Texto do campo preto
                ),
              ),
              const SizedBox(height: 20),

              // Campo de Senha com tamanho fixo
              SizedBox(
                width: 150,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: const TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFF1BF06)),
                    ),
                  ),
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),

              // Botão de Login
              ElevatedButton(
                onPressed: () {
                  // Lógica de login aqui
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF1BF06), // Cor do botão
                  foregroundColor: Colors.black, // Cor do texto do botão
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white, // Fundo da página branco
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
