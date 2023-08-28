import 'package:flutter/material.dart';
// import '../constants.dart' as Constants;
import 'package:flutter_svg/svg.dart';

void main() => runApp(const ContainerAndText());

class ContainerAndText extends StatelessWidget {
  const ContainerAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xFFD9D9D9)),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Row(children: [
        SvgPicture.asset('assets/gambar.svg'),
        const SizedBox(width: 34),
        const Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "How Can I be Flutter Developer Expert?",
                overflow: TextOverflow.fade,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Jill Lepore",
                    style: TextStyle(color: Color(0xFF898989), fontSize: 14),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.circle,
                    size: 5,
                    color: Color(0xFF898989),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "23 May 23",
                    style: TextStyle(color: Color(0xFF898989), fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
