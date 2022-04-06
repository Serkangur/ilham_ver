import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'İLHAM VER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 100),
                child: SizedBox(
                  width: ekranGenisligi / 4,
                  height: 250,
                  child: Image.asset("resimler/pp.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Text(
                "Serkan Gür",
                style: TextStyle(
                    fontSize: ekranGenisligi / 20,
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: ekranGenisligi / 100, right: ekranGenisligi / 100),
              child: Text(
                "yar günde yar yahşidir yaman günde yetiş gardaş",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ekranGenisligi / 20,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi / 100),
              child: SizedBox(
                width: ekranGenisligi / 2,
                height: ekranYuksekligi / 15,
                child: ElevatedButton(
                  child: Text(
                    "İLHAM VER",
                    style: TextStyle(
                        color: Colors.white, fontSize: ekranGenisligi / 25),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    print("ilham verildi");
                  },
                ),
              ),
            )
          ],
        ));
  }
}
