import 'package:flutter/material.dart';
 
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
 
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF060C2C), // Fundo azul escuro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ícone com engrenagem e ferramentas
            const Icon(Icons.build_circle_outlined, size: 100, color: Colors.white),
 
            const SizedBox(height: 16),
            const Text(
              'OPS!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Sistema para ocorrências!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
 
            const SizedBox(height: 40),
 
            // Container branco com opções
            Container(
              padding: const EdgeInsets.all(24),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'COMO GOSTARIA\nDE ACESSAR?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF060C2C),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  CustomButton(
                    text: 'SOU ALUNO',
                    onPressed: () {
                      // Ação ao clicar em "SOU ALUNO"
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomButton(
                    text: 'SOU PROFESSOR',
                    onPressed: () {
                      // Ação ao clicar em "SOU PROFESSOR"
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
 
  const CustomButton({super.key, required this.text, required this.onPressed});
 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF060C2C), // Mesma cor do fundo
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadowColor: Colors.black54,
        elevation: 6,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}