import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Competências Técnicas',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            _buildSkillItem('Desenvolvimento Mobile',
                '4 anos de experiência no desenvolvimento de aplicativos móveis, desde a concepção até a manutenção de produtos em produção.'),
            _buildSkillItem('Dart & Flutter',
                'Domínio da linguagem Dart e do framework Flutter, criando aplicações eficientes e escaláveis para Android e iOS.'),
            _buildSkillItem('Desenvolvimento Android com Kotlin',
                'Domínio da linguagem Kotlin para desenvolvimento Android, criando aplicações eficientes e escaláveis para Android.'),
            _buildSkillItem('Arquiteturas de Software',
                'Experiência com Clean Architecture e MVC, além de conhecimento teórico de MVVM.'),
            _buildSkillItem('Design System',
                'Implementação de sistemas de design, assegurando consistência visual e usabilidade nos produtos.'),
            _buildSkillItem('SOLID e Clean Code',
                'Aplicação de princípios SOLID e Clean Code, garantindo um código mais manutenível e de alta qualidade.'),
            _buildSkillItem('Gerenciamento de Estado',
                'Experiência com Bloc, Provider, GetX, e conhecimento teórico de MobX para gerenciar estados de maneira eficiente.'),
            _buildSkillItem('APIs REST',
                'Vasta experiência em integrações com APIs REST, utilizando ferramentas como Postman para testes de APIs.'),
            _buildSkillItem('Versionamento de Código',
                'Uso diário de Git para versionamento de código, com experiência em GitHub e Bitbucket.'),
            _buildSkillItem('Publicação na Google Play',
                'Experiência na publicação e manutenção de aplicativos na Google Play Store.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
