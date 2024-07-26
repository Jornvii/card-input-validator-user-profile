import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/profile.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'widgetes review',
      themeMode: themeProvider.themeMode,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,  
      darkTheme: AppTheme.dark,  
      home: const HomeScreen(),
      routes: {
      '/read': (context) =>  ProfileTab(),
    },
    );
  }
}
