import 'package:flutter/material.dart';
// import '../constants.dart' as Constants;
import 'package:flutter_svg/svg.dart';
import 'container_and_text.dart';
import 'row_card.dart';
import 'list_view_page.dart';
import '../Widget/button.dart';
import '../Widget/input.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        title: const Text(
          "Dummy UI",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListViewPage()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Next",
                              style: TextStyle(
                                  color: Color(0xFF0077B6),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          Text("Tab Bar, GridView, ListView",
                              style: TextStyle(
                                  color: Color(0xFF7F7F7F), fontSize: 16)),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Text("CONTAINER AND TEXT",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 8),
                const ContainerAndText(),
                const SizedBox(height: 8),
                const Text("COLUMN",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 20),
                const Column(
                  children: [
                    ContainerAndText(),
                    SizedBox(height: 19),
                    ContainerAndText(),
                  ],
                ),
                const SizedBox(height: 19),
                const Text("ROW",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 18),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RowCard(),
                    RowCard(),
                    RowCard(),
                  ],
                ),
                const SizedBox(height: 17),
                const Text("BUTTON",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: MyButton(
                        textButton: "Press me",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Text("INPUT",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 26),
                const Row(
                  children: [
                    Text("Email",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                    Text(" *",
                        style: TextStyle(
                            color: Color(0xFFED1C2E),
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                  ],
                ),
                const SizedBox(height: 9),
                const MyInput(
                    textInput: "Enter Your Email...",
                    icon: Icon(
                      Icons.mail,
                      color: Color(0xFF0077B6),
                    )),
                const SizedBox(height: 24),
                const Text("IMAGE ASSET, SIZED BOX & EXPANDED",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      padding: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFD9D9D9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
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
                    ),
                    Container(
                      width: 125,
                      padding: const EdgeInsets.all(17),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFD9D9D9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/gambar.svg'),
                          const SizedBox(height: 9),
                          const Text(
                            "2nd Image",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
