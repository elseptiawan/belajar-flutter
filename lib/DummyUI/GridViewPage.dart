import 'package:flutter/material.dart';
// import '../constants.dart' as Constants;
// import 'package:flutter_svg/svg.dart';
import 'RowCard.dart';

void main() => runApp(const GridViewPage());

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dummy UI",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Color(0xFF000000)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "ListView",
                  style: TextStyle(
                      color: Color(0xFF898989),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(width: 5.0, color: Color(0xFF0077B6)),
                )),
                child: const Text(
                  "GridView",
                  style: TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 25),
        Expanded(
          child: GridView.count(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(30),
            crossAxisSpacing: 13,
            mainAxisSpacing: 17,
            crossAxisCount: 2,
            children: const [
              RowCard(),
              RowCard(),
              RowCard(),
              RowCard(),
              RowCard(),
              RowCard(),
              RowCard(),
            ],
          ),
        )
      ]),
    );
  }
}
