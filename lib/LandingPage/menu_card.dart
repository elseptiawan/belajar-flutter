import 'package:flutter/material.dart';

void main() => runApp(const MenuCard(
      headline: 'Title',
      subtitle: 'Subtitle',
    ));

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key, required this.headline, required this.subtitle,
    
  });
  final String headline;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 280,
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0077B6)),
              ),
              Text(
                subtitle,
                overflow: TextOverflow.fade,
                style: const TextStyle(fontSize: 14, color: Color(0xFF7F7F7F)),
              )
            ],
          ),
        ),
        const Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
