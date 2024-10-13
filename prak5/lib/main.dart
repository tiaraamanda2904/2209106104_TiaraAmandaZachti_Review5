import 'package:flutter/material.dart';
import 'profile_page.dart'; // Pastikan untuk mengimpor halaman ProfilePage
import 'settings_page.dart'; // Pastikan untuk mengimpor halaman SettingsPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/HomePage",
      routes: {
        "/HomePage": (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        "/ProfilePage": (context) => const MyProfile(), // Memanggil widget MyProfile yang benar
        "/SettingsPage": (context) => const MySettingsPage(), // Memanggil widget MySettingsPage yang benar
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ProfilePage");
              },
              child: const Text("Pindah ke Halaman Profile"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/SettingsPage");
              },
              child: const Text("Pindah ke Halaman Settings"),
            ),
          ),
        ],
      ),
    );
  }
}
