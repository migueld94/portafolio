import 'package:flutter/material.dart';
// import 'package:portafolio/assets/utils/theme/themes_provider.dart';

import 'package:sprung/sprung.dart';

class OnHoverButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverButton({super.key, required this.builder});

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0, -8, 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        curve: Sprung.underDamped,
        duration: const Duration(milliseconds: 900),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}

class OnHoverText extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverText({super.key, required this.builder});

  @override
  State<OnHoverText> createState() => _OnHoverTextState();
}

class _OnHoverTextState extends State<OnHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0, 0, 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        curve: Sprung.underDamped,
        duration: const Duration(milliseconds: 100),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
