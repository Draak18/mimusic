import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const Navbar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF212121),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home, 0),
          _buildNavItem(Icons.search, 1),
          _buildNavItem(Icons.menu, 2),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 45,
        height: 45,
        transform: Matrix4.translationValues(0, isSelected ? -30 : 0, 0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFEDEDED) : Colors.transparent,
          borderRadius: BorderRadius.circular(22.5),
        ),
        child: Icon(
          icon,
          color: isSelected ? const Color(0xFFBD00F3) : const Color(0xFFEDEDED),
          size: 35,
        ),
      ),
    );
  }
}
