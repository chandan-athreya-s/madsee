import 'package:flutter/material.dart';

class MeditationCard extends StatelessWidget {
  const MeditationCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    this.onPressed,
  });

  final String title;
  final String description;
  final String image;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return _HoverCard(
      title: title,
      description: description,
      image: image,
      onPressed: onPressed,
    );
  }

}

class _HoverCard extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final VoidCallback? onPressed;
  const _HoverCard({
    required this.title,
    required this.description,
    required this.image,
    this.onPressed,
  });

  @override
  State<_HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<_HoverCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: _isHovered ? Colors.deepPurple.withOpacity(0.25) : Colors.deepPurple.withOpacity(0.1),
                blurRadius: _isHovered ? 16 : 8,
                spreadRadius: _isHovered ? 4 : 2,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/${widget.image}',
                    width: 110,
                    height: 110,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0, top: 30),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    widget.description,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
