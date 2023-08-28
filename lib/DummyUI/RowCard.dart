import 'package:flutter/material.dart';
// import '../constants.dart' as Constants;
import 'package:flutter_svg/svg.dart';

void main() => runApp(const RowCard());

class RowCard extends StatelessWidget {
  const RowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFFD9D9D9)),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          SvgPicture.asset('assets/gambar.svg'),
          const SizedBox(height: 9),
          const Text(
            "1st Image",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
