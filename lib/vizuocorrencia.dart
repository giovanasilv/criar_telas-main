import 'package:flutter/material.dart';

class VisualizarOcorrenciaPage extends StatefulWidget {
  final String status;

  const VisualizarOcorrenciaPage({super.key, required this.status});

  @override
  _VisualizarOcorrenciaPageState createState() => _VisualizarOcorrenciaPageState();
}

class _VisualizarOcorrenciaPageState extends State<VisualizarOcorrenciaPage> {
  // Variável para controlar o estado do botão
  bool isSelected = false;

  // Função para alternar o estado do botão
  void toggleState() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isPendente = widget.status.toUpperCase() == 'PENDENTE';
    final Color statusColor = isPendente ? Colors.red[800]! : Colors.green[700]!;
    String statusTexto = isPendente ? 'PENDENTE' : 'SOLUCIONADA';

    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 380,
                decoration: BoxDecoration(
                  color: const Color(0xFF07122C),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'DATA DE ENVIO  00/00/00\nNº DA OCORRÊNCIA: XXX',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'ANDAR DO LABORATÓRIO:',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: const Text(
                          'ANDAR SELECIONADO',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'NÚMERO DO LABORATÓRIO:',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: const Text(
                          'LAB. SELECIONADO',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'DESCRIÇÃO DO PROBLEMA:',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Text(
                          'Texto da Descrição do problema pelo usuário...',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'CLIQUE AO LADO PARA VISUALIZAR A IMAGEM',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[300],
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            child: const Text('VISUALIZAR FOTO'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'STATUS:',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          color: statusColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          onPressed: toggleState,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: statusColor, // Cor de fundo
                            backgroundColor: statusColor,
                          ),
                          child: Text(
                            isSelected ? 'SOLUCIONADO' : 'PENDENTE', // Texto do botão
                            style: TextStyle(color: isSelected ? const Color.fromARGB(255, 242, 243, 240) : const Color.fromARGB(255, 255, 8, 0), fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
