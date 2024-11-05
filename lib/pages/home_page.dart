import 'package:flutter/material.dart';
import 'package:mimusic/pages/biblioteca.dart';
import 'package:mimusic/pages/home.dart';
import 'package:mimusic/pages/navbar.dart';
import 'package:mimusic/pages/pesquisa.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Pesquisa(),
    const Biblioteca(),
  ];

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
      body: _pages[_currentIndex],
      bottomNavigationBar: Navbar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}
