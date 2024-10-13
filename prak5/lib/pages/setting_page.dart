import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({super.key});

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Menetapkan warna latar belakang
      appBar: AppBar(
        title: const Text("Settings Page"), // Menambahkan judul pada AppBar
      ),
      body: Center(
        child: const Text(
          "Halaman Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
