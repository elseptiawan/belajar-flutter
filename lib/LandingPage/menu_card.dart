import 'package:flutter/material.dart';

void main() => runApp(const MenuCard(
      title: 'Title',
      subtitle: 'Subtitle',
    ));

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 280,
          height: 70,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dummy UI",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0077B6)),
              ),
              Text(
                "Practice flutter UI and get familiar with UI Widgets",
                overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 14, color: Color(0xFF7F7F7F)),
              )
            ],
          ),
        ),
        const Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
