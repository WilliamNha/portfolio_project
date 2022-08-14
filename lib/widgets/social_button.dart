import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  SocialButton({
    Key? key,
    this.padding = const EdgeInsets.all(0),
    this.onPressed,
    this.color = Colors.white,
    this.icon = FontAwesomeIcons.twitter,
    this.iconSize = 24,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;
  final Color color;
  final IconData icon;
  final double iconSize;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: padding,
      onPressed: onPressed,
      alignment: alignment!,
      icon: Icon(
        icon,
        color: color,
        size: iconSize,
      ),
    );
  }
}
