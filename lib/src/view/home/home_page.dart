import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 64,
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/perfil.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Column(
            children: [
              Text(
                'Rodrigo Ferreira',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                width: 200,
                child: Divider(
                  thickness: 0.5,
                  color: Color.fromARGB(255, 103, 99, 99),
                ),
              ),
              Text('Front-End Software Developer',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Desenvolvedor de software com foco em front-end, especializado em soluções mobile e web, \n'
            '                   criando experiências digitais inovadoras, eficientes e escaláveis.\n'
            'Explore meus projetos, competências técnicas e entre em contato para colaborações.',
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(144, 255, 255, 255)),
          ),
          const SizedBox(
            height: 32,
          ),
          const Icon(
            Icons.arrow_circle_down_rounded,
            color: Color.fromARGB(144, 255, 255, 255),
            size: 35,
          ),
        ],
      ),
    );
  }
}
