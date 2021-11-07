import 'package:binomi/screens/screens.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Widget toScreen;
  Color iconColor = Colors.black;
  CircleButton({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.toScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        child: Material(
          
          color: Colors.transparent, // Button color
          child: InkWell(
            splashColor: Colors.grey[200], // Splash color
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => toScreen,
              ),
            ),
            child: SizedBox(
                width: 56,
                height: 56,
                child: Icon(
                  icon,
                  color: iconColor,
                )),
          ),
        ),
      ),
    );
  }
}
