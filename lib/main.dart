import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'defaultpage.dart';
import 'utils/themeProvider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Starter',
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            themeMode: themeProvider.themeMode,
            home: const DefaultPage(newIndex: 0),
          );
        },
        create: (context) => ThemeProvider(),
      );
}
