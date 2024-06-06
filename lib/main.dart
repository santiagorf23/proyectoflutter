import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/theme_preferences.dart'; // Asegúrate de importar tu modelo de preferencias de tema
import 'models/theme_provider.dart'; // Importa tu proveedor de tema

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) {
          return MaterialApp(
            title: 'Mi App',
            theme: theme.isDarkTheme? ThemeData.dark() : ThemeData.light(),
            home: Scaffold(
              body: Center(
                child: Text('Hello World'),
              ),
            ),
          );
        },
      ),
    );
  }
}
