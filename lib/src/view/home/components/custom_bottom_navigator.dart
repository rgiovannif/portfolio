import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final Widget home;
  final Widget projects;
  final Widget skills;
  final Widget contact;

  const CustomBottomNavigation({
    super.key,
    required this.home,
    required this.projects,
    required this.skills,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBottomNavigationWidget(
      home: home,
      projects: projects,
      skills: skills,
      contact: contact,
    );
  }
}

class CustomBottomNavigationWidget extends StatefulWidget {
  final Widget home;
  final Widget projects;
  final Widget skills;
  final Widget contact;
  const CustomBottomNavigationWidget({
    super.key,
    required this.home,
    required this.projects,
    required this.skills,
    required this.contact,
  });

  @override
  State<CustomBottomNavigationWidget> createState() =>
      _CustomBottomNavigationWidgetState();
}

class _CustomBottomNavigationWidgetState
    extends State<CustomBottomNavigationWidget> {
  int _selectedIndex = 0;

  Widget _getSelectedWidget() {
    switch (_selectedIndex) {
      case 0:
        return widget.home;
      case 1:
        return widget.projects;
      case 2:
        return widget.skills;
      case 3:
        return widget.contact;
      default:
        return widget.home;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _getSelectedWidget(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildNavItem('Perfil', 0),
              _buildNavItem('Portfólio', 1),
              _buildNavItem('Competências Técnicas', 2),
              _buildNavItem('Contato', 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String label, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Text(
        label,
        style: TextStyle(
          color: _selectedIndex == index ? Colors.white : Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }
}
