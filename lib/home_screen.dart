import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/input.dart';
import 'package:provider/provider.dart';

import 'theme_provider.dart';
import 'widgets/card.dart';
import 'widgets/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Jornvii'),
          actions: [
            IconButton(
              icon: Icon(
                themeProvider.themeMode == ThemeMode.dark 
                    ? Icons.wb_sunny 
                    : Icons.nights_stay,
              ),
              onPressed: () {
                themeProvider.toggleTheme();
              },
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(103, 174, 190, 203),
            tabs: [
              Tab(text: 'Card'),
              Tab(text: 'Input'),
              Tab(text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
           CardWidget(),
           StudentRegistrationPage(),
            ProfileTab(),
          ],
        ),
      ),
    );
  }
}

