import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChooseSection(title: 'Test Title'),
    );
  }
}

class ChooseSection extends StatefulWidget {
  const ChooseSection({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ChooseSection> createState() => _ChooseSectionState();
}

class _ChooseSectionState extends State<ChooseSection> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Colors.white,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Container(
            padding: const EdgeInsets.all(7),
            child: const Text(
              "Choose Section",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Color(0xFF000000)),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(27),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DummyHome(
                              title: 'Dummy Home',
                            )),
                  );
                },
                child: Row(
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
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF7F7F7F)),
                          )
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Divider(
                color: Color(0xFFEBEBEB),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280,
                    height: 70,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Simple Calculator",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0077B6)),
                        ),
                        Text(
                          "Creating calculator app that consists add, divide, substract, multiply function",
                          overflow: TextOverflow.fade,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF7F7F7F)),
                        )
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
              const SizedBox(height: 25),
              const Divider(
                color: Color(0xFFEBEBEB),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280,
                    height: 70,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Input Validation",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0077B6)),
                        ),
                        Text(
                          "Play around with email input & password input",
                          overflow: TextOverflow.fade,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF7F7F7F)),
                        )
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
              const SizedBox(height: 25),
              const Divider(
                color: Color(0xFFEBEBEB),
              ),
            ],
          ),
        ));
  }
}

class DummyHome extends StatefulWidget {
  const DummyHome({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<DummyHome> createState() => _DummyHomeState();
}

class _DummyHomeState extends State<DummyHome> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
                          builder: (context) => const ListView(
                                title: 'ListView',
                              )),
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "Jill Lepore",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
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
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 8),
                const Text("COLUMN",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 24),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFD9D9D9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "Jill Lepore",
                                    style: TextStyle(
                                        color: Color(0xFF898989), fontSize: 14),
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
                                    style: TextStyle(
                                        color: Color(0xFF898989), fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    const SizedBox(height: 19),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 24),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFD9D9D9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    "Jill Lepore",
                                    style: TextStyle(
                                        color: Color(0xFF898989), fontSize: 14),
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
                                    style: TextStyle(
                                        color: Color(0xFF898989), fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                const Text("ROW",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    Container(
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
                            "3th Image",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 17),
                const Text("BUTTON",
                    style: TextStyle(
                        color: Color(0xFF2CD483),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Null,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(0, 166, 255, 0.094)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)))),
                        child: const Text(
                          "Press Me",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0077B6)),
                        ),
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
                TextFormField(
                    decoration: InputDecoration(
                        fillColor: const Color.fromRGBO(255, 255, 255, 0.10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                              color: Color(0xFF0077B6), width: 2.0),
                        ),
                        labelText: 'Enter your email...',
                        prefixIcon: IconButton(
                            onPressed: () => Null,
                            icon: const Icon(
                              Icons.mail,
                              color: Color(0xFF0077B6),
                            )))),
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ListView extends StatefulWidget {
  const ListView({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ListView> createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 5.0, color: Color(0xFF0077B6)),
                  )),
                  child: const Text(
                    "ListView",
                    style: TextStyle(
                        color: Color(0xFF0077B6),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // const Divider(
              //       color: Color(0xFF0077B6),
              //     ),
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GridViewPage(
                                title: 'GridView',
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "GridView",
                      style: TextStyle(
                          color: Color(0xFF898989),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "Jill Lepore",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
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
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "Jill Lepore",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
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
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "Jill Lepore",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
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
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "Jill Lepore",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
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
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                "Jill Lepore",
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
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
                                style: TextStyle(
                                    color: Color(0xFF898989), fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(24),
                  // color: Colors.teal[200],
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/gambar.svg'),
                      const Text(
                        "1st Image",
                        style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                      )
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(24),
                  // color: Colors.teal[200],
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/gambar.svg'),
                      const Text(
                        "1st Image",
                        style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                      )
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(24),
                  // color: Colors.teal[200],
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/gambar.svg'),
                      const Text(
                        "1st Image",
                        style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                      )
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(24),
                  // color: Colors.teal[200],
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/gambar.svg'),
                      const Text(
                        "1st Image",
                        style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                      )
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(24),
                  // color: Colors.teal[200],
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/gambar.svg'),
                      const Text(
                        "1st Image",
                        style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                      )
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(24),
                  // color: Colors.teal[200],
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/gambar.svg'),
                      const Text(
                        "1st Image",
                        style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                      )
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xFFD9D9D9)),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(24),
                  // color: Colors.teal[200],
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/gambar.svg'),
                      const Text(
                        "1st Image",
                        style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                      )
                    ],
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
