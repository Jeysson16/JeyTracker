import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:organization_app/view/programattion_page.dart';
import 'package:organization_app/view/progress_page.dart';
import 'package:organization_app/view/tasks_page.dart';
import 'package:organization_app/view/welcome_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    WelcomePage(),
    TasksPage(),
    ProgramattionPage(),
    ProgressPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            onTabChange: _navigateBottomBar,
            backgroundColor: Theme.of(context).colorScheme.primary,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Theme.of(context).colorScheme.secondary,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home, text: "Inicio"),
              GButton(icon: Icons.calendar_today, text: "Tareas"),
              GButton(icon: Icons.settings, text: "Programación"),
              GButton(icon: Icons.settings, text: "Progreso"),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
