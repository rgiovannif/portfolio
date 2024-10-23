import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Column(
          children: [
            const Text(
              'Projetos',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Esta seção apresenta os projetos em que atuei de forma ativa durante meu tempo na Diletta Solutions, incluindo links relevantes. \n'
              'Além disso, você encontrará meus projetos pessoais, com acesso direto ao código-fonte no GitHub e a versões disponíveis na Play Store, permitindo uma análise mais detalhada do desenvolvimento e funcionalidades de cada aplicação.',
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(144, 255, 255, 255)),
            ),
            const SizedBox(height: 32),
            _projectCard(
                Image.asset('assets/images/n26.jpg'),
                'N26',
                'Desenvolvido em Flutter, contribuí de forma significativa no projeto N26, concentrando-me no desenvolvimento front-end, implementando interfaces responsivas e realizando integrações com o back-end. Mantive constante comunicação com a empresa parceira responsável pelo back-end para ajustes necessários.\n'
                    '(Nota: Minha participação foi no desenvolvimento do aplicativo N26 Brasil, que não está mais em produção. As atividades foram encerradas no Brasil; os links fornecidos são da versão europeia do N26, somente para referência.)',
                'Android:',
                'https://play.google.com/store/apps/details?id=de.number26.android',
                'IOS',
                'https://apps.apple.com/br/app/n26-love-your-bank/id956857223',
                true),
            _projectCard(
                Image.asset('assets/images/bold.jpg'),
                'Conta BOLD',
                'No projeto Conta Bold, desenvolvido em Flutter, atuei na implementação de novas funcionalidades, manutenção e correção de bugs. Mantive colaboração direta com as equipes de back-end e design, garantindo a integração eficiente entre as diferentes áreas e a entrega de um produto de qualidade.',
                'Android:',
                'https://play.google.com/store/apps/details?id=com.contabold.prod',
                'IOS',
                'https://apps.apple.com/br/app/conta-bold/id1634268953',
                true),
            _projectCard(
                Image.asset('assets/images/tribanco.jpg'),
                'Tribanco',
                'No projeto Tribanco, desenvolvido em Flutter, fui responsável pela implementação de novas funcionalidades e pela colaboração constante com as equipes de back-end e design, assegurando a evolução contínua do aplicativo em alinhamento com as necessidades do negócio.',
                'Android:',
                'https://play.google.com/store/apps/details?id=br.com.tribanco.app.pj',
                'IOS',
                'https://apps.apple.com/br/app/tribanco-empresas-2-0/id1668800725',
                true),
            _projectCard(
                Image.asset('assets/images/satoshi.jpg'),
                'Satoshi',
                'Desenvolvido em Flutter, participei ativamente desde a concepção do projeto Satoshi até seu lançamento na Play Store. Durante esse período, desenvolvi novas funcionalidades, implementei melhorias, corrigi bugs e conduzi um redesenho do aplicativo. Minha atuação envolveu colaboração contínua com as equipes de back-end e design, garantindo a entrega de um produto final robusto e eficiente.',
                'Android:',
                'https://play.google.com/store/apps/details?id=com.satoshi.org.satoshi_app',
                '',
                '',
                false),
          ],
        ),
      ),
    );
  }

  Widget _projectCard(
    Image image,
    String title,
    String description,
    String? operatingSystemType,
    String? link,
    String? operatingSystemTypeIos,
    String? linkIos,
    bool removeAnOperatingSystemType,
  ) {
    return Row(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: image,
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                description,
                style:
                    const TextStyle(color: Color.fromARGB(144, 255, 255, 255)),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(operatingSystemType ?? '',
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      if (link != null) {
                        _launchURL(link);
                      }
                    },
                    child: Text(
                      link ?? '',
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              removeAnOperatingSystemType
                  ? Row(
                      children: [
                        Text(operatingSystemTypeIos ?? '',
                            style: const TextStyle(color: Colors.white)),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            if (linkIos != null) {
                              _launchURL(link ?? '');
                            }
                          },
                          child: Text(
                            linkIos ?? '',
                            style: const TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possível abrir o link: $url';
    }
  }
}
