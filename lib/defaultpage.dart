import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'views/homepage/homepage.dart';
import 'views/settings/settings.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({
    Key? key,
    required this.newIndex,
  }) : super(key: key);

  final int newIndex;

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  int currentIndex = 0;
  late List<StatefulWidget> views;

  @override
  initState() {
    currentIndex = widget.newIndex;
    views = [
      const HomePage(),
      const Settings(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text('Starter', style: TextStyle(fontSize: 18)),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        ),
        child: NavigationBar(
          animationDuration: const Duration(seconds: 1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          indicatorColor: Theme.of(context).colorScheme.primary,
          height: size.height * 0.09,
          selectedIndex: currentIndex,
          onDestinationSelected: (index) => setState(() => currentIndex = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: views[currentIndex],
    );
  }
}
