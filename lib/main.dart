import 'package:flutter/material.dart';
import 'package:organization_app/core/themes/theme.dart';
import 'package:organization_app/core/themes/theme_provider.dart';
import 'package:organization_app/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JOrganizador',
      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // routes: {
      //   '/inicio': (context) => WelcomePage(),
      //   '/tareas': (context) => TasksPage(),
      //   '/programacion': (context) => ProgramattionPage(),
      //   '/perfil': (context) => ProfilePage(),
      //   '/progreso': (context) => ProgressPage(),
      //   '/configuracion': (context) => SettingsPage(),
      // },
    );
  }
}
