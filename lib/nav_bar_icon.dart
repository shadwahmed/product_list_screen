import 'package:flutter/material.dart';

class NavBarIcon extends StatelessWidget {
  final String imagePath;
  final bool isSelected;

  NavBarIcon({required this.isSelected, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        shape: BoxShape.circle
      ),
      padding: EdgeInsets.all(5),
      child: ImageIcon(
        AssetImage(imagePath),
        color: isSelected ?Theme.of(context).primaryColor:
            Colors.white
      ),
    );
  }
}
