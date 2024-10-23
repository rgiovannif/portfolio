import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 64,
          ),
          const Text(
            'Entre em contato',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const SizedBox(
            height: 64,
          ),
          _copyableValue(
              Image.asset(
                'assets/images/email.jpg',
              ),
              'rgiovannif@gmail.com'),
          _spacing(),
          _copyableValue(
              Image.asset(
                'assets/images/whatsapp.jpg',
              ),
              '(19) 9 9371-3526'),
          _spacing(),
          _imageAndValueLink(
              Image.asset(
                'assets/images/linkedin.jpg',
              ),
              'https://www.linkedin.com/in/rodrigogiovanniferreira/'),
          _spacing(),
          _imageAndValueLink(
              Image.asset(
                'assets/images/github.jpg',
              ),
              'https://github.com/rgiovannif'),
        ],
      ),
    );
  }

  Widget _imageAndValueLink(Image image, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 40, height: 40, child: image),
        const SizedBox(width: 16),
        InkWell(
          onTap: () => _launchURL(value),
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  Widget _copyableValue(Image image, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 40, height: 40, child: image),
        const SizedBox(width: 16),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        InkWell(
          onTap: () {
            Clipboard.setData(ClipboardData(text: value));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '$value copiado para a área de transferência',
                  style: const TextStyle(color: Colors.black),
                ),
                backgroundColor: const Color.fromARGB(255, 241, 244, 241),
              ),
            );
          },
          child: const Icon(
            Icons.copy,
            color: Colors.white,
            size: 16,
          ),
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _spacing() {
    return const SizedBox(
      height: 32,
    );
  }
}
