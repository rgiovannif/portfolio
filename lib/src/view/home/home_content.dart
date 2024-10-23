import 'package:flutter/material.dart';
import 'package:portifolio_rodrigo_ferreira/src/view/contact/contact_page.dart';
import 'package:portifolio_rodrigo_ferreira/src/view/home/components/custom_bottom_navigator.dart';
import 'package:portifolio_rodrigo_ferreira/src/view/home/home_page.dart';
import 'package:portifolio_rodrigo_ferreira/src/view/projects/projects_page.dart';
import 'package:portifolio_rodrigo_ferreira/src/view/skills/skills_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.abc_outlined),
              ),
              const SizedBox(
                width: 24,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.abc_outlined),
              ),
              const SizedBox(
                width: 24,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: const CustomBottomNavigation(
        home: HomePage(),
        projects: ProjectsPage(),
        skills: SkillsPage(),
        contact: ContactPage(),
      ),
    );
  }
}
