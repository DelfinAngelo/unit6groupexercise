import 'package:flutter/material.dart';
import 'drawer_screen.dart';
import 'tab_navigation_screen.dart';
import 'dialog_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lamasan Navigation App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/drawer': (context) => DrawerScreen(),
        '/tabs': (context) => TabNavigationScreen(),
        '/dialog': (context) => DialogScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lamasan Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/drawer'),
              child: Text('Open Drawer Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tabs'),
              child: Text('Open Tab Navigation'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/dialog'),
              child: Text('Open Dialog Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
